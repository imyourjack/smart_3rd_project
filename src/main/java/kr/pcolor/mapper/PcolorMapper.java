package kr.pcolor.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.pcolor.domain.ItemVO;
import kr.pcolor.domain.resultVO;

@Mapper
public interface PcolorMapper {
	@Select("select * from tbl_item")
	public List<ItemVO> pcolorResult1();
	@Select("select * from tbl_item")
	public List<ItemVO> pcolorResult2();
	@Select("select * from tbl_item")
	public List<ItemVO> pcolorResult3();
	@Select("select * from tbl_item")
	public List<ItemVO> pcolorResult4();
	
	// 사용자가 진단한 결과 시즌톤 SELECT하는 쿼리문
	@Select("SELECT DISTINCT pc_name FROM tbl_result r, tbl_pcolor p WHERE r.pc_idx = p.pc_idx AND user_id = #{user_id}")
	public List<resultVO> pcolorResult1Test();
}
