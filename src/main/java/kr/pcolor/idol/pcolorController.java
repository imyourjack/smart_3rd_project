package kr.pcolor.idol;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pcolor.domain.ItemVO;
import kr.pcolor.mapper.PcolorMapper;

@Controller
public class pcolorController {
	@Inject
	private PcolorMapper pcolorMapper;
	
	@RequestMapping("/pcolor.do")
	public void pcolor() {
	}
	
	/*
	 * @RequestMapping("/pcolorResult1.do") public void pcolorResult1(int pc_idx,
	 * Model model) { ItemVO vo = pcolorMapper.pcolorResult1(pc_idx);
	 * model.addAttribute("vo", vo); }
	 */
	@RequestMapping("/pcolorResult1.do")
	public void pcolorResult1(Model model) {
		List<ItemVO> list = pcolorMapper.pcolorResult1();
		model.addAttribute("list", list);
	}
	@RequestMapping("/pcolorResult2.do")
	public void pcolorResult2() {
	}
	@RequestMapping("/pcolorResult3.do")
	public void pcolorResult3() {
	}
	@RequestMapping("/pcolorResult4.do")
	public void pcolorResult4() {
	}
	
	@RequestMapping("/pcolorCheck.do")
	public void pcolorCheck() {
	}
	
	@RequestMapping("/pcolorCheck2.do")
	public void pcolorCheck2() {
	}
	
	@RequestMapping("/home.do")
	public void home() {
	}

}
