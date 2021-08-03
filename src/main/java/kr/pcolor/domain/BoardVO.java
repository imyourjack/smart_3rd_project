package kr.pcolor.domain;

import lombok.Data;

// 게시판 1개의 구조(VO)
@Data
public class BoardVO {
	private int board_idx;
	private String board_title;
	private String board_contents;
	private int board_count;
	private String board_indate;
	private String user_id;
	// setter, getter, toString()
}
