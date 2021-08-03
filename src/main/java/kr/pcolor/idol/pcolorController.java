package kr.pcolor.idol;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.domain.SearchVO;
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
	@RequestMapping("/boardForm.do")
	public void boardForm() {
		//return "boardForm";  //boardForm.jsp
	}
	
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		boardMapper.boardInsert(vo);
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/boardContent.do")
	public void boardContent(int idx, Model model) {
		BoardVO vo = boardMapper.boardContent(idx);
		model.addAttribute("vo", vo);
		//return "boardContent";
	}
	
	@RequestMapping("/boardDelete.do")
		public String boardDelete(int idx) {
		boardMapper.boardDelete(idx);
				
	return "redirect:/boardList.do";
	}	
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		boardMapper.boardUpdate(vo);
		return "redirect:/boardList.do";
	}
	@RequestMapping("/boardSearch.do")
	public String boardSearch(SearchVO vo,  Model model) {
		List <BoardVO> list = boardMapper.boardSearch(vo);
		model.addAttribute("list", list);
		return "boardList";
	}
}
