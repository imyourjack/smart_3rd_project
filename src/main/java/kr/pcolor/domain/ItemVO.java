package kr.pcolor.domain;

import lombok.Data;

@Data
public class ItemVO {
	private int item_idx;
	private String item_category;
	private String item_img_url;
	private String item_name;
	private String item_tag;
	private String item_explain;
	private String item_product_url;
	private int pc_idx;
}
