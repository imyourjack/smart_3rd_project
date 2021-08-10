package kr.pcolor.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.domain.SearchVO;

@Mapper
public interface BoardMapper {
    @Select("select * from tbl_board")
	public List<BoardVO> boardList();
    
    @Insert("insert into tbl_board (board_title,board_contents,user_id) values(#{board_title},#{board_contents},#{user_id})")
    public void boardInsert(BoardVO vo);

    @Select("select * from tbl_board where board_idx = #{board_idx}")
    public BoardVO boardContent(int board_idx);
    
    @Delete("delete from tbl_board where board_idx=#{board_idx}")
    public void boardDelete(int board_idx);
  
    @Update("update tbl_board set board_title = #{board_title}, board_contents = #{board_contents} where board_idx = #{board_idx}")
    public void boardUpdate(BoardVO vo);
    
    @Select("select * from tbl_board where ${part} like concat('%',#{keyword},'%')")
    public List<BoardVO> boardSearch(SearchVO vo); 
}