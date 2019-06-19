package cn.gson.oasys.controller.address;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
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
import cn.gson.oasys.model.dao.notedao.AttachService;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Director;
import cn.gson.oasys.model.entity.note.DirectorUser;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.address.AddreddUserService;
import cn.gson.oasys.services.address.AddressService;
import cn.gson.oasys.services.file.FileServices;
import cn.gson.oasys.services.mail.MailServices;
import cn.gson.oasys.services.process.ProcessService;

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
	@Autowired
	ProcessService proservice;
	@Autowired
	FileServices fileServices;
	@Autowired
	 AttachService attachService;
	@Autowired
	AttachmentDao atDao;
	@Autowired
	private MailServices mservice;
	@Autowired
	private AttachmentDao AttDao;
	
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
		Pageable pa=new PageRequest(page, size,new Sort(Direction.ASC, "dept"));
		Page<User> userspage=uDao.findAll(pa);
		List<User> users=userspage.getContent();
		List<DirectorUser> nothandles=auDao.findByUserAndShareuserNotNullAndHandle(user,false);
		model.addAttribute("count", nothandles.size());
		model.addAttribute("catalogs", catalogs);
		model.addAttribute("users", users);
		model.addAttribute("page", userspage);
		model.addAttribute("url", "inaddresspaging");
		return "address/addrmanage";
	}
	
	/**
	 * 将外部通讯录联系人改变分类；
	 */
	@RequestMapping("changethistype")
	public @ResponseBody Boolean changeType(@RequestParam(value="did")Long did,@SessionAttribute("userId") Long userId,@RequestParam(value="catalog")String catalog){
		System.out.println("did:"+did);
		System.out.println("catalog:"+catalog);
		User user=uDao.findOne(userId);
		Director d=addressDao.findOne(did);
		DirectorUser du=auDao.findByDirectorAndUser(d, user);
		du.setCatalogName(catalog);
		addressUserService.save(du);
		System.out.println("执行成功！");
		return true;
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
	 * 查看内部联系人
	 */
	@RequestMapping("inmessshow")
	public String inMessShow(Model model,@RequestParam(value="userId")Long userId){
		User user=uDao.findOne(userId);
		model.addAttribute("user", user);
		return "address/inmessshow";
	}
	
	/**
	 * 查看外部联系人
	 */
	@RequestMapping("outmessshow")
	public String outMessShow(Model model,@RequestParam("director") Long director,@SessionAttribute("userId") Long userId){
		Director d=addressDao.findOne(director);
		User user=uDao.findOne(userId);
		DirectorUser du=auDao.findByDirectorAndUser(d, user);
		if(Objects.isNull(d) || Objects.isNull(du)){
			System.out.println("权限不匹配，不能操作");
			return "redirect:/notlimit";
		}
		if(d.getAttachment()!=null){
			model.addAttribute("imgpath", atDao.findOne(d.getAttachment()).getAttachmentPath());
		}else{
			model.addAttribute("imgpath", "/timg.jpg");
		}
		model.addAttribute("d", d);
		
		return "address/outmessshow";
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
			if(Objects.isNull(director)|| !Objects.equals(director.getMyuser().getUserId(), userId)){
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
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("savaaddress")
	public String savaAddress(@Valid Director director,DirectorUser directorUser,BindingResult br,@RequestParam("file")MultipartFile file,HttpSession session,
			Model model,@SessionAttribute("userId") Long userId,HttpServletRequest req) throws PinyinException, IllegalStateException, IOException{

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
				director.setAttachment(di.getAttachment());
				DirectorUser dc=auDao.findByDirectorAndUser(director, user);
				directorUser.setDirectorUserId(dc.getDirectorUserId());
				session.removeAttribute("did");
			}
			//试一下
			if(file.getSize()>0){
				Attachment attaid=mservice.upload(file, user);
				attaid.setModel("aoa_bursement");
				Attachment att=AttDao.save(attaid);
				/*Attachment att= (Attachment) fileServices.savefile(file, user, null, false);*/
				director.setAttachment(att.getAttachmentId());
			}
			
			directorUser.setHandle(true);
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
		Director director=du.getDirector();
		List<DirectorUser> dires=auDao.findByDirector(director);
		User user=uDao.findOne(userId);
		if(!Objects.equals(du.getUser().getUserId(), userId)){
			System.out.println("权限不匹配，不能删除");
			return "redirect:/notlimit";
		}
		List<DirectorUser> dus=auDao.findByCatalogNameAndUser(du.getCatalogName(), user);
		if(dus.size()>1){
			addressUserService.deleteObj(du);
			if(dires.size()==1){
				addressService.deleteDirector(du.getDirector());
				System.out.println("最后一个拥有的用户删掉了该联系人，即删掉该联系人的信息");
			}
		}else{
			/*当size=1时，说明这是最后一位拥有*/
			du.setDirector(null);
			addressUserService.save(du);
			if(dires.size()==1){
				addressService.deleteDirector(director);
				System.out.println("最后一个拥有的用户删掉了该联系人，即删掉该联系人的信息");
			}
			
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
	 * 分享给我的消息的界面
	 */
	@RequestMapping("sharemess")
	public String shareMess(@RequestParam(value="page",defaultValue="0")int page,
			@RequestParam(value="size",defaultValue="5")int size,
			@RequestParam(value="baseKey",required=false) String baseKey,
			@RequestParam(value="catalog",required=false)String catalog,
			@RequestParam(value="duid",required=false)Long duid,
			Model model,@SessionAttribute("userId") Long userId){
		User user=uDao.findOne(userId);
		List<Order> orders=new ArrayList<>();
		orders.add(new Order(Direction.ASC, "handle"));
		orders.add(new Order(Direction.DESC, "sharetime"));
		Sort sort=new Sort(orders);
		Pageable pa=new PageRequest(page, size, sort);
		Page<DirectorUser> duspage=auDao.findByShareuser(user, pa);
		if(!StringUtils.isEmpty(duid)){
			DirectorUser du=auDao.findOne(duid);
			System.out.println();
			du.setCatalogName(catalog);
			du.setHandle(true);
			addressUserService.save(du);
		}
		if(!StringUtils.isEmpty(baseKey)){
			duspage=auDao.findBaseKey("%"+baseKey+"%",user,pa);
			model.addAttribute("sort", "&baseKey="+baseKey);
		}else{
			duspage=auDao.findByUserAndShareuserNotNull(user, pa);
		}
		Set<String> catalogs=auDao.findByUser(user);
		System.out.println(catalogs);
		model.addAttribute("catalogs", catalogs);
		List<DirectorUser> dus=duspage.getContent();
		model.addAttribute("page", duspage);
		model.addAttribute("dus", dus);
		model.addAttribute("url", "sharemess");
		return "address/sharemess";
	}
	
	/**
	 * 我分享的消息界面
	 */
	@RequestMapping("mesharemess")
	public String meShareMess(@RequestParam(value="page",defaultValue="0")int page,
			@RequestParam(value="size",defaultValue="5")int size,
			@RequestParam(value="baseKey",required=false) String baseKey,
			Model model,@SessionAttribute("userId") Long userId
			){
		User user=uDao.findOne(userId);
		Pageable pa=new PageRequest(page, size, new Sort(Direction.DESC, "sharetime"));
		Page<DirectorUser> duspage=auDao.findByShareuser(user, pa);
		if(!StringUtils.isEmpty(baseKey)){
			duspage=auDao.findBaseKey("%"+baseKey+"%",user,pa);
			model.addAttribute("sort", "&baseKey="+baseKey);
		}else{
			duspage=auDao.findByShareuser(user, pa);
		}
		
		List<DirectorUser> dus=duspage.getContent();
		model.addAttribute("page", duspage);
		model.addAttribute("dus", dus);
		model.addAttribute("url", "mesharemess");
		return "address/mesharemess";
	}
	
	
	/**
	 * 分享消息的业务controller
	 */
	@RequestMapping("shareother")
	public String shareOther(@SessionAttribute("userId")Long userId,@RequestParam(value="directors[]") Long[] directors,
			Model model,
			@RequestParam(value="sharedirector") Long sharedirector){
		User user=uDao.findOne(userId);
		Director director=addressDao.findOne(sharedirector);
		List<User> users=new ArrayList<>();
		List<DirectorUser> dus=new ArrayList<>();
		for (int i = 0; i < directors.length; i++) {
			User shareuser=uDao.findOne(directors[i]);
			System.out.println("分享的用户:"+shareuser);
			DirectorUser du=auDao.findByDirectorAndUser(director, shareuser);
			if(Objects.isNull(du)){
				System.out.println("没找到该对象、进行保存保存");
				DirectorUser dir=new DirectorUser();
				dir.setUser(shareuser);
				dir.setShareuser(user);
				dir.setDirector(director);
				dus.add(dir);
			}else{
				System.out.println("该用户已存在该联系人，不用重复保存！");
				users.add(shareuser);
			}
		}
		for (DirectorUser directorUser : dus) {
			System.out.println("中间表："+directorUser);
		}
		for (User u : users) {
			System.out.println("已存有该联系人的用户："+u);
		}
		addressUserService.savaList(dus);
		if(users.size()>0){
			model.addAttribute("users", users);
			return "address/userhas";
		}
		return "address/sharesuccess";
	}
	
	/**
	 * 进入分享联系人的模态框分页
	 */
	@RequestMapping("modalshare")
	public String modalShare(@RequestParam(value="page",defaultValue="0") int page,Model model,
			@RequestParam(value="size",defaultValue="10") int size){
		Pageable pa=new PageRequest(0, 10);
		Page<User> userspage=uDao.findAll(pa);
		List<User> users=userspage.getContent();
		model.addAttribute("modalurl", "modalpaging");
		model.addAttribute("modalpage", userspage);
		model.addAttribute("users", users);
		return "address/modalshare";
	}
	
	
	/**
	 * 分享模态框的分页
	 */
	@RequestMapping("modalpaging")
	public String modalPaging(@RequestParam(value="page",defaultValue="0") int page,Model model,
			@RequestParam(value="size",defaultValue="10") int size,
			@RequestParam(value="baseKey",required=false) String baseKey){
		Pageable pa=new PageRequest(page, size);
		Page<User> userspage=null;
		List<User> users=null;
		if(!StringUtils.isEmpty(baseKey)){
			System.out.println(baseKey);
			userspage=uDao.findUsers("%"+baseKey+"%", baseKey+"%", pa);
			model.addAttribute("baseKey", baseKey);
			model.addAttribute("sort", "&baseKey="+baseKey);
		}else{
			userspage=uDao.findAll(pa);
		}
		users=userspage.getContent();
		model.addAttribute("modalurl", "modalpaging");
		model.addAttribute("modalpage", userspage);
		model.addAttribute("users", users);
		return "address/shareuser";
	}
	
	/**
	 外部通讯录
	 * @return
	 */
	@RequestMapping("outaddresspaging")
	public String outAddress(@RequestParam(value="pageNum",defaultValue="1") int page,Model model,
			@RequestParam(value="baseKey",required=false) String baseKey,
			@RequestParam(value="outtype",required=false) String outtype,
			@RequestParam(value="alph",defaultValue="ALL") String alph,
			@SessionAttribute("userId") Long userId
			){
		PageHelper.startPage(page, 10);
		List<Map<String, Object>> directors=am.allDirector(userId, alph, outtype, baseKey);
		List<Map<String, Object>> adds=addressService.fengzhaung(directors);
		PageInfo<Map<String, Object>> pageinfo=new PageInfo<>(directors);
		if(!StringUtils.isEmpty(outtype)){
			model.addAttribute("outtype", outtype);
		}	
		Pageable pa=new PageRequest(0, 10);
		
		Page<User> userspage=uDao.findAll(pa);
		List<User> users=userspage.getContent();
		model.addAttribute("modalurl", "modalpaging");
		model.addAttribute("modalpage", userspage);
		model.addAttribute("users", users);
		model.addAttribute("userId", userId);
		model.addAttribute("baseKey", baseKey);
		model.addAttribute("directors", adds);
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
			@RequestParam(value="alph",defaultValue="ALL") String alph
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
		if(!StringUtils.isEmpty(baseKey)){
			model.addAttribute("baseKey", baseKey);
			model.addAttribute("sort", "&alph="+alph+"&baseKey="+baseKey);
		}else{
			model.addAttribute("sort", "&alph="+alph);
		}
		List<User> users=userspage.getContent();
		model.addAttribute("users", users);
		model.addAttribute("page", userspage);
		model.addAttribute("url", "inaddresspaging");
		return "address/inaddrss";
	}
	
}
