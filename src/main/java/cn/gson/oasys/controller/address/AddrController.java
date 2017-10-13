package cn.gson.oasys.controller.address;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.stuxuhai.jpinyin.PinyinException;
import com.github.stuxuhai.jpinyin.PinyinFormat;
import com.github.stuxuhai.jpinyin.PinyinHelper;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.mappers.AddressMapper;
import cn.gson.oasys.model.dao.address.AddressDao;
import cn.gson.oasys.model.dao.address.AddressUserDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.note.Director;
import cn.gson.oasys.model.entity.note.DirectorUser;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.address.AddreddUserService;
import cn.gson.oasys.services.address.AddressService;

@Controller
@RequestMapping("/")
public class AddrController {
	
	@Autowired
	AddressDao addressDao;
	@Autowired
	AddressService addressService;
	@Autowired
	UserDao uDao;
	@Autowired
	AddreddUserService addressUserService;
	@Autowired
	AddressMapper am;
	@Autowired
	AddressUserDao auDao;
	
	/**
	 * 通讯录管理
	 * @param userId
	 * @param model
	 * @param page
	 * @param size
	 * @return
	 */
	@RequestMapping("addrmanage")
	public String addrmanage(@SessionAttribute("userId") Long userId,Model model,
			@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="10") int size
			) {
		User user=uDao.findOne(userId);
		Set<String> catalogs=auDao.findByUser(user);
		Pageable pa=new PageRequest(page, size);
		Page<User> userspage=uDao.findAll(pa);
		List<User> users=userspage.getContent();
		model.addAttribute("catalogs", catalogs);
		model.addAttribute("users", users);
		model.addAttribute("page", userspage);
		model.addAttribute("url", "inaddresspaging");
		return "address/addrmanage";
	}
	
	/**
	 * 修改用户下面的外部分类
	 * 根据老分类找到所有的中间表的集合
	 * 再循环修改新分类名字
	 * @param typename
	 * @param oldtypename
	 * @param userId
	 * @return
	 */
	@RequestMapping("changetypename")
	public String changeTypeName(@RequestParam(value="typename")String typename,
			@RequestParam(value="oldtypename")String oldtypename,
			@SessionAttribute("userId") Long userId
			){
		User user=uDao.findOne(userId);
		List<DirectorUser> dus=auDao.findByCatalogNameAndUser(oldtypename, user);
		for (DirectorUser directorUser : dus) {
			directorUser.setCatalogName(typename);
		}
		addressUserService.savaList(dus);
		return "redirect:/outaddresspaging";
		
	}
	
	/**
	 * 编辑
	 * @return
	 */
	@RequestMapping("addaddress")
	public String addAddress(HttpServletRequest req,@RequestParam(value="did",required=false) Long did,HttpSession session,
			@SessionAttribute("userId") Long userId, Model model){
		User user=uDao.findOne(userId);
		Set<String> calogs=auDao.findByUser(user);
		model.addAttribute("calogs", calogs);
		if(!StringUtils.isEmpty(did)){
			Director director=addressDao.findOne(did);
			System.out.println();
			if(director.getMyuser().getUserId()!=userId){
				System.out.println("权限不匹配，不能操作");
				return "redirect:/notlimit";
			}
			DirectorUser du=auDao.findByDirectorAndUser(director, user);
			model.addAttribute("director", director);
			model.addAttribute("du", du);
			session.setAttribute("did", did);
		}
		return "address/addressedit";
	}
	
	/**
	 * 保存外部联系人
	 */
	@RequestMapping("savaaddress")
	public String savaAddress(@Valid Director director,DirectorUser directorUser,BindingResult br,@RequestParam("file")MultipartFile file,HttpSession session,
			Model model,@SessionAttribute("userId") Long userId,HttpServletRequest req) throws PinyinException{
		User user=uDao.findOne(userId);
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			System.out.println("输入信息有误！");
		}else{
			String pinyin=PinyinHelper.convertToPinyinString(director.getUserName(), "", PinyinFormat.WITHOUT_TONE);
			director.setPinyin(pinyin);
			director.setMyuser(user);
			if(!StringUtils.isEmpty(session.getAttribute("did"))){
				/*修改*/
				Long did=Long.parseLong(session.getAttribute("did")+"");
				Director di=addressDao.findOne(did);
				director.setDirectorId(di.getDirectorId());
				DirectorUser dc=auDao.findByDirectorAndUser(director, user);
				directorUser.setDirectorUserId(dc.getDirectorUserId());
				directorUser.setHandle(dc.getHandle());
			}
			directorUser.setDirector(director);
			directorUser.setUser(user);
			addressService.sava(director);
			addressUserService.save(directorUser);
		}
		return "redirect:/addrmanage";
	}
	
	/**
	 * 用户删除某个外部通讯录联系人
	 */
	@RequestMapping("deletedirector")
	public String deleteDirector(@SessionAttribute("userId") Long userId,Model model,@RequestParam(value="did",required=false) Long did){
		DirectorUser du=auDao.findOne(did);
		User user=uDao.findOne(userId);
		if(du.getUser().getUserId()!=userId){
			System.out.println("权限不匹配，不能删除");
			return "redirect:/notlimit";
		}
		List<DirectorUser> dus=auDao.findByCatalogNameAndUser(du.getCatalogName(), user);
		if(dus.size()>1){
			addressUserService.deleteObj(du);
		}else{
			du.setDirector(null);
			addressUserService.save(du);
		}
		return "redirect:/outaddresspaging";
	}
	
	/**
	 * 删除分类名称
	 */
	@RequestMapping("deletetypename")
	public String deletetypename(@RequestParam(value="typename") String typename,@SessionAttribute("userId") Long userId){
		User user=uDao.findOne(userId);
		List<DirectorUser> dus=auDao.findByCatalogNameAndUser(typename, user);
		for (DirectorUser directorUser : dus) {
			directorUser.setCatalogName(null);
		}
		addressUserService.savaList(dus);
		return "redirect:/outaddresspaging";
	}
	
	/**addtypename
	 * 增加外部分类名称
	 * */
	@RequestMapping("addtypename")
	public String addTypename(@RequestParam(value="typename",required=false) String typename,
			@RequestParam(value="oldtypename",required=false) String oldtypename,
			@SessionAttribute("userId") Long userId,Model model){
		System.out.println("进来这个了么？");
		User user=uDao.findOne(userId);
		if(oldtypename!=null){
			List<DirectorUser> dus=auDao.findByCatalogNameAndUser(oldtypename, user);
			for (DirectorUser directorUser : dus) {
				directorUser.setCatalogName(typename);
			}
			addressUserService.savaList(dus);
		}else{
			DirectorUser dc=new DirectorUser(user, typename);
			addressUserService.save(dc);
		}
		Set<String> catalogs=auDao.findByUser(user);
		System.out.println(catalogs);
		model.addAttribute("catalogs", catalogs);
		return "address/addtypename";
	}
	
	/**
	 外部通讯录
	 * @return
	 */
	@RequestMapping("outaddresspaging")
	public String outAddress(@RequestParam(value="pageNum",defaultValue="1") int page,Model model,
			@RequestParam(value="baseKey",required=false) String baseKey,
			@RequestParam(value="outtype",required=false) String outtype,
			@RequestParam(value="alph",required=false) String alph,
			@SessionAttribute("userId") Long userId
			){
		System.out.println("baseKey:"+baseKey);
		System.out.println("outtype:"+outtype);
		System.out.println("alph:"+alph);
		PageHelper.startPage(page, 10);
		List<Map<String, Object>> directors=am.allDirector(userId, alph, outtype, baseKey);
		PageInfo<Map<String, Object>> pageinfo=new PageInfo<>(directors);
		for (Map<String, Object> map : directors) {
			System.out.println(map);
		}
		if(!StringUtils.isEmpty(outtype)){
			model.addAttribute("outtype", outtype);
		}
		model.addAttribute("baseKey", baseKey);
		model.addAttribute("directors", directors);
		model.addAttribute("page", pageinfo);
		model.addAttribute("url", "outaddresspaging");
		return "address/outaddrss";
	}
	
	/**
	 * 内部通讯录表格，并处理分页
	 * @return
	 */
	@RequestMapping("inaddresspaging")
	public String inAddress(@RequestParam(value="page",defaultValue="0") int page,Model model,
			@RequestParam(value="size",defaultValue="10") int size,
			@RequestParam(value="baseKey",required=false) String baseKey,
			@RequestParam(value="alph",required=false) String alph
			){
		Page<User> userspage=null;
		Pageable pa=new PageRequest(page, size);
		if(StringUtils.isEmpty(baseKey)){
			if("ALL".equals(alph)){
				userspage=uDao.findAll(pa);
			}else{
			 userspage=uDao.findByPinyinLike(alph+"%",pa);
			}
		}else{
			if("ALL".equals(alph)){
				userspage=uDao.findUsers("%"+baseKey+"%",baseKey+"%", pa);
			}else{
				userspage=uDao.findSelectUsers("%"+baseKey+"%", alph+"%",pa);
			}
		}
		List<User> users=userspage.getContent();
		for (User user : users) {
			System.out.println(user.getPinyin()+","+user.getUserName()+","+user.getDept().getDeptName()+","+user.getUserTel());
		}
		model.addAttribute("sort", "&alph="+alph+"&baseKey="+baseKey);
		model.addAttribute("baseKey", baseKey);
		model.addAttribute("users", users);
		model.addAttribute("page", userspage);
		model.addAttribute("url", "inaddresspaging");
		return "address/inaddrss";
	}
	
}
