package kr.pcolor.idol;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.mapper.BoardMapper;

@Controller
public class pcolorController {
	
	@Inject
	private BoardMapper boardMapper; 
	
	@RequestMapping("/pcolor.do")
	public void pcolor() {
	}
	@RequestMapping("/boardList.do")
	public void boardList(Model model) {
		List<BoardVO> list = boardMapper.boardList();
		model.addAttribute("list", list);
		//return "boardList"; // -->ViewResolver--->/WEB-INF/views/boardList.jsp
	}
	
}
