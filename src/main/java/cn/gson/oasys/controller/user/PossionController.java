package cn.gson.oasys.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.gson.oasys.model.dao.user.PositionDao;
import cn.gson.oasys.model.entity.user.Position;

@Controller
@RequestMapping("/")
public class PossionController {
	
	@Autowired
	PositionDao pdao;
	
	@RequestMapping("positionmanage")
	public String positionmanage(Model model) {
		
		List<Position> positions = (List<Position>) pdao.findAll();
		
		model.addAttribute("positions",positions);
		
		return "user/positionmanage";
	}
	
	
}
