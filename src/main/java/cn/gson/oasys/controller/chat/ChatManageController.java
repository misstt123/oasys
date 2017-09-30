package cn.gson.oasys.controller.chat;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.services.discuss.DiscussService;

@Controller
@RequestMapping("/")
public class ChatManageController {
	
	@Autowired
	DiscussDao discussDao;
	
	@Autowired
	DiscussService disService;
	

	/**
	 * 讨论区管理
	 * @return
	 */
	@RequestMapping("chatmanage")
	public String chatManage(){
		return "chat/chatmanage";
	}
	
	/**
	 * 回复管理
	 * @return
	 */
	@RequestMapping("replymanage")
	public String replyManage(){
		return "chat/replaymanage";
	}
	
	/**
	 * 编写讨论区
	 * @param req
	 * @return
	 */
	@RequestMapping("writechat")
	public String writeChat(HttpServletRequest req){
		return "chat/writechat";
	}
	
	/**
	 * 新增
	 */
	@RequestMapping("adddiscuss")
	public String addDiscuss(HttpServletRequest req,@Valid Discuss menu,BindingResult br,@RequestParam("file")MultipartFile file){
		System.out.println(menu);
		menu.setCreateTime(new Date());
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		// 校验失败
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			List<Object> list = new MapToList<>().mapToList(res.getData());
			// 代码调试阶段，下面是错误的相关信息；
			System.out.println("list错误的实体类信息：" + menu);
			System.out.println("list错误详情:" + list);
			System.out.println("list错误第一条:" + list.get(0));
			System.out.println("啊啊啊错误的信息——：" + list.get(0).toString());
			// 下面的info信息是打印出详细的信息
		}
		disService.save(menu);
		return "chat/writechat";
	}

}
