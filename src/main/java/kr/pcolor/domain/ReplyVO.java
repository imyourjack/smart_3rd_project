package kr.pcolor.domain;

import lombok.Data;

@Data
public class ReplyVO {
   private int reply_idx;
   private String reply_text;
   private String reply_indate;
   private String user_id;
   private int board_idx;
}