package kr.pcolor.idol;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.domain.UserVO;
import kr.pcolor.mapper.UserMapper;

@Controller
public class userController {
	@Inject
	private UserMapper userMapper;
	
	@RequestMapping("login.do")
	public void login() {
		
	}
	
	@RequestMapping("/loginUser.do")
	public void loginUser(UserVO vo, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String user_id = request.getParameter("user_id");
		String user_password = request.getParameter("user_password");

		vo.setUser_id(user_id);
		vo.setUser_password(user_password);
		UserVO userVO = userMapper.loginUser(vo); // 함수 실행을 하지만 결과를 따로 담아주진 않음 -> 버려짐
		PrintWriter out = response.getWriter();
		if(userVO!=null) {
			out.print("YES");  
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
		}else {
			out.print("NO");   // 인증에 실패(0)
		}
	}
	
	@RequestMapping("logout.do")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); // 가져와서 연결되어 있으면 session에 뭐가 들어가 있기 때문에 끊어야됨
		session.invalidate();
	}
	
	@RequestMapping("/signup.do")
	public void signup() {		
	}
	
	@RequestMapping("/userInsert.do")
	public String insertUser(UserVO vo) {
		userMapper.insertUser(vo);
		return "redirect:/home.do";
	}
	@RequestMapping("/mypage.do")
	public void mypage(String user_id, Model model) {		
		UserVO vo = userMapper.mypage(user_id);
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping("userUpdate.do")
	public String userUpdate(UserVO vo) {
		userMapper.userUpdate(vo);
		return "redirect:/home.do";
	}
	@RequestMapping("userDelete.do")
	public String userDelete(String user_id) {
		userMapper.userDelete(user_id);	
		return "redirect:/home.do";
	}
//	@RequestMapping("userCheck.do")
//	public void checkUser(String user_id) {
//		userMapper.checkUser(user_id);
//	}
	
}
