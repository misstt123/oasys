package cn.gson.oasys.controller.inform;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.gson.oasys.mappers.NoticeMapper;
import cn.gson.oasys.model.entity.notice.NoticesList;
import cn.gson.oasys.services.inform.InformRelationService;
import cn.gson.oasys.services.inform.InformService;

@Controller
@RequestMapping("/")
public class InformController {

	@Autowired
	private InformService informService;
	
	@Autowired
	private NoticeMapper nm;
	
	@Autowired
	private InformRelationService informRelationService;
	
	

	/**
	 * 通知管理面板分页
	 * 
	 * @return
	 */
	@RequestMapping("infrommanagepaging")
	public String inform(@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon, @SessionAttribute("userId") Long userId,
			Model model, HttpServletRequest req) {
		System.out.println("baseKey:" + baseKey);
		setSomething(baseKey, type, status, time, icon, model);
		Page<NoticesList> page2 = informService.pageThis(page, userId, baseKey, type, status, time);
		List<NoticesList> noticeList = page2.getContent();
		List<Map<String, Object>> list = informService.fengZhuang(noticeList);
		model.addAttribute("url", "infrommanagepaging");
		model.addAttribute("list", list);
		model.addAttribute("page", page2);
		return "inform/informtable";
	}

	/**
	 * 通知列表的分页
	 */
	@RequestMapping("informlistpaging")
	public String informListPaging(@RequestParam(value = "pageNum", defaultValue = "1") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey, 
			@RequestParam(value="type",required=false) Integer type,
			@RequestParam(value="status",required=false) Integer status,
			@RequestParam(value="time",required=false) Integer time,
			@RequestParam(value="icon",required=false) String icon,
			@SessionAttribute("userId") Long userId,
			Model model,HttpServletRequest req){
		System.out.println("baseKey:"+baseKey);
		System.out.println("page:"+page);
		setSomething(baseKey, type, status, time, icon, model);
		PageHelper.startPage(page, 10);
		List<Map<String, Object>> list=nm.sortMyNotice(userId, baseKey, type, status, time);
		PageInfo<Map<String, Object>> pageinfo=new PageInfo<Map<String, Object>>(list);
		List<Map<String, Object>> list2=informRelationService.setList(list);
		for (Map<String, Object> map : list2) {
			System.out.println(map);
		}
		model.addAttribute("url", "informlistpaging");
		model.addAttribute("list", list2);
		model.addAttribute("page", pageinfo);
	return "inform/informlistpaging";

}

	private void setSomething(String baseKey, Object type, Object status, Object time, Object icon, Model model) {
		if(!StringUtils.isEmpty(icon)){
			model.addAttribute("icon", icon);
			if(!StringUtils.isEmpty(type)){
				model.addAttribute("type", type);
				if("1".equals(type)){
					model.addAttribute("sort", "&type=1&icon="+icon);
				}else{
					model.addAttribute("sort", "&type=0&icon="+icon);
				}
			}
			if(!StringUtils.isEmpty(status)){
				model.addAttribute("status", status);
				if("1".equals(status)){
					model.addAttribute("sort", "&status=1&icon="+icon);
				}else{
					model.addAttribute("sort", "&status=0&icon="+icon);
				}
			}
			if(!StringUtils.isEmpty(time)){
				model.addAttribute("time", time);
				if("1".equals(time)){
					model.addAttribute("sort", "&time=1&icon="+icon);
				}else{
					model.addAttribute("sort", "&time=0&icon="+icon);
				}
			}
		}
		if(!StringUtils.isEmpty(baseKey)){
			model.addAttribute("baseKey", baseKey);
		}
	}

}
