package cn.gson.oasys.controller.inform;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import cn.gson.oasys.model.entity.notice.NoticesList;
import cn.gson.oasys.services.inform.InformService;

@Controller
@RequestMapping("/")
public class InformController {
	
	@Autowired
	
	private InformService informService;
	
	/**
	 * 通知管理面板
	 * 
	 * @return
	 */
	@RequestMapping("infrommanagepaging")
	public String inform(@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size,
			@RequestParam(value = "baseKey", required = false) String baseKey, 
			@RequestParam(value="type",required=false) String type,
			@RequestParam(value="status",required=false) String status,
			@RequestParam(value="time",required=false) String time,
			@RequestParam(value="icon",required=false) String icon,
			@SessionAttribute("userId") Long userId,
			Model model,HttpServletRequest req) {
		System.out.println("baseKey:"+baseKey);
		if(!StringUtils.isEmpty(icon)){
			model.addAttribute("icon", icon);
			if(!StringUtils.isEmpty(type)){
				model.addAttribute("type", type);
			}
			if(!StringUtils.isEmpty(status)){
				model.addAttribute("status", status);
			}
			if(!StringUtils.isEmpty(time)){
				model.addAttribute("time", time);
			}
		}
		if(!StringUtils.isEmpty(baseKey)){
			model.addAttribute("baseKey", baseKey);
		}
		Page<NoticesList> page2 = informService.pageThis(page, size, userId,baseKey,type,status,time);
		List<NoticesList> noticeList=page2.getContent();
		List<Map<String, Object>> list=informService.fengZhuang(noticeList);
		
		model.addAttribute("list", list);
		model.addAttribute("page", page2);
		return "inform/informtable";
	}

}
