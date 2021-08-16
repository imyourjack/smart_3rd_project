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
}
