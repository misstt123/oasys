package cn.gson.oasys.controller.plan;



import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class PlanController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	

	//计划管理
	@RequestMapping("planview")
	public String test(){
		return "plan/planview";
	}
	//计划报表
	@RequestMapping("myplan")
	public String test2(){
		return "plan/plantable";
	}
	//我的编辑
		@RequestMapping("planedit")
		public String test3(@Param("pid")String pid,Model model){ 
			model.addAttribute("pid", pid);
			return "plan/planedit";
		}
	
	
	
	

}
