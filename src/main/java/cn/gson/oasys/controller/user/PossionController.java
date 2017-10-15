package cn.gson.oasys.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.PositionDao;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.Position;

@Controller
@RequestMapping("/")
public class PossionController {
	
	@Autowired
	PositionDao pdao;
	@Autowired
	DeptDao ddao;
	
	@RequestMapping("positionmanage")
	public String positionmanage(Model model) {
		
		List<Position> positions = (List<Position>) pdao.findAll();
		
		model.addAttribute("positions",positions);
		
		return "user/positionmanage";
	}
	
	@RequestMapping(value = "positionedit" ,method = RequestMethod.GET)
	public String positioneditget(@RequestParam(value = "positionid",required=false) Long positionid,Model model){
		if(positionid!=null){
			
			Position position = pdao.findOne(positionid);
			System.out.println(position);
			Dept dept = ddao.findOne(position.getDeptid());
			model.addAttribute("positiondept",dept);
			model.addAttribute("position",position);
		}
		List<Dept> depts = (List<Dept>) ddao.findAll();
		model.addAttribute("depts", depts);
		return "user/positionedit";
	}
	
	@RequestMapping(value = "positionedit" ,method = RequestMethod.POST)
	public String positioneditpost(Position position,Model model){
		System.out.println(position);
		
		Position psition2 = pdao.save(position);
		
		if(psition2!=null){
			model.addAttribute("success",1);
			return "/positionmanage";
		}
		
		model.addAttribute("errormess","数据插入失败");
		return "user/positionedit";
	}
	
	
	@RequestMapping("removeposition")
	public String removeposition(@RequestParam("positionid") Long positionid,Model model){
		pdao.delete(positionid);
		model.addAttribute("success",1);
		return "/positionmanage";
	}
	
	
	
}
