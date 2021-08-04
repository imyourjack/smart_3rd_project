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
	
	@RequestMapping("/pcolor.do")
	public void pcolor() {
	}
}
