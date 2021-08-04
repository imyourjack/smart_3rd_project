-- table 삭제
DROP TABLE tbl_result;
DROP TABLE tbl_item;
DROP TABLE tbl_board;
DROP TABLE tbl_pccs;
DROP TABLE tbl_pcolor;
DROP TABLE tbl_user;


-- table 검색
SELECT * FROM tbl_user;
SELECT * FROM tbl_pcolor;
SELECT * FROM tbl_pccs;
SELECT * FROM tbl_board;
SELECT * FROM tbl_item;
SELECT * FROM tbl_result;


-- tbl_user 생성
CREATE TABLE tbl_user(
    user_id              VARCHAR(30) NOT NULL,
    user_password        VARCHAR(30) NOT NULL,
    user_name            VARCHAR(30),
    user_age             VARCHAR(30),
    user_gender          VARCHAR(30),
    PRIMARY KEY(user_id)
);

-- tbl_pcolor 생성
CREATE TABLE tbl_pcolor (
    pc_idx           INT(20) NOT NULL auto_increment,
    pc_name       VARCHAR(30) NOT NULL,
    pc_contents   VARCHAR(3000) NOT NULL,
    PRIMARY KEY(pc_idx)
);


-- tbl_pccs 생성
CREATE TABLE tbl_pccs (
    pccs_idx          INT(20)        NOT NULL auto_increment,
    pccs_name         VARCHAR(30)   NOT NULL,
        -- 외래키 컬럼
    pc_idx            INT(20)     NOT NULL,
    PRIMARY KEY(pccs_idx),
    FOREIGN KEY(pc_idx) REFERENCES tbl_pcolor(pc_idx)
);


-- tbl_board 생성
CREATE TABLE tbl_board (
    board_idx          INT(20)        NOT NULL auto_increment,
    board_title        VARCHAR(30)   NOT NULL,
    board_contents     VARCHAR(3000) NOT NULL,
    board_count        INT(20)        NOT NULL DEFAULT 0,
    board_indate       datetime     NOT NULL DEFAULT now(),
    -- 외래키 컬럼
    user_id            VARCHAR(30)     NOT NULL,
    PRIMARY KEY(board_idx),
    FOREIGN KEY(user_id) REFERENCES tbl_user(user_id)
);


-- tbl_item 생성
CREATE TABLE tbl_item (
    item_idx                INT(20)      NOT NULL auto_increment,
    item_name            VARCHAR(50)  NOT NULL,
    item_category        VARCHAR(100) NOT NULL,
    item_img_url         VARCHAR(100) NOT NULL,
    item_explain         VARCHAR(3000) NOT NULL,
    -- 외래키 컬럼
    pc_idx                  INT(20)  NOT NULL,
    PRIMARY KEY(item_idx),
    FOREIGN KEY(pc_idx) REFERENCES tbl_pcolor (pc_idx)
);


-- tbl_result 생성
CREATE TABLE tbl_result (
    res_idx              INT(20)    NOT NULL auto_increment,
    res_indate          datetime NOT NULL DEFAULT now(),
    -- 외래키 컬럼
    pc_idx              INT(20) NOT NULL,
    user_id             VARCHAR(30) NOT NULL,
    PRIMARY KEY(res_idx),
    FOREIGN KEY(pc_idx) REFERENCES tbl_pcolor(pc_idx),
    FOREIGN KEY(user_id) REFERENCES tbl_user(user_id)
);


-- table 데이터 삽입
INSERT INTO tbl_user(user_id, user_password, user_name, user_age, user_gender) VALUES('admin', '12345', '아무개', '26', '남자');
INSERT INTO tbl_pcolor(pc_name, pc_contents) VALUES('봄웜', '따뜻한 봄날의 향기');
INSERT INTO tbl_pccs(pccs_name, pc_idx) VALUES('보라색', 1);
INSERT INTO tbl_board(board_title, board_contents, user_id) VALUES('안녕하세요', '처음 가입해서 글 좀 올립니다.', 'admin');
INSERT INTO tbl_item(item_name, item_category, item_img_url, item_explain, pc_idx) 
   VALUES('남자향수', '향수', 'http://naver.com', '여름 쿨톤에 어울리는 남자향수!', 1);
INSERT INTO tbl_result(pc_idx, user_id) VALUES(1, 'admin');