package kr.pcolor.idol;

import javax.inject.Inject;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.domain.UserVO;
import kr.pcolor.mapper.BoardMapper;
import kr.pcolor.mapper.UserMapper;

@Controller
public class userController {
	@Inject
	private UserMapper userMapper; 
	
	@RequestMapping("/login.do")
	public UserVO loginUser(UserVO vo) {
		userMapper.loginUser(vo);
		return vo;
	}
	
	@RequestMapping("/signup.do")
	public void signup() {		
	}
	
	@RequestMapping("/update.do")
	public void updateUser(UserVO vo) {
		userMapper.updateUser(vo);
	}
	@RequestMapping("/delete.do")
	public void deleteUser(String user_id) {
		userMapper.deleteUser(user_id);		
	}
	@RequestMapping("check.do")
	public void checkUser(String user_id) {
		userMapper.checkUser(user_id);
	}
}
