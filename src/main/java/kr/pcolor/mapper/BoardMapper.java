package kr.pcolor.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.pcolor.domain.BoardVO;

@Mapper
public interface BoardMapper {
    @Select("select * from tbl_board")
	public List<BoardVO> boardList();

}