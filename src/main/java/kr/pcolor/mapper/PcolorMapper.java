package kr.pcolor.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.pcolor.domain.ItemVO;

@Mapper
public interface PcolorMapper {
	/*
	 * @Select("select * from tbl_item where pc_idx = #{pc_idx}") public ItemVO
	 * pcolorResult1(int pc_idx);
	 */
	@Select("select * from tbl_item")
	public List<ItemVO> pcolorResult1();
}
