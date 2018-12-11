/* 새 테이블 */
CREATE TABLE MY_SCHEMA.gamer (
	ID VARCHAR2(20) NOT NULL, /* ID */
	NAME VARCHAR2(20), /* 이름 */
	PASSWORD VARCHAR2(20) /* 비번 */
);

COMMENT ON TABLE MY_SCHEMA.gamer IS '새 테이블';

COMMENT ON COLUMN MY_SCHEMA.gamer.ID IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.gamer.NAME IS '이름';

COMMENT ON COLUMN MY_SCHEMA.gamer.PASSWORD IS '비번';

CREATE UNIQUE INDEX MY_SCHEMA.PK_gamer
	ON MY_SCHEMA.gamer (
		ID ASC
	);

ALTER TABLE MY_SCHEMA.gamer
	ADD
		CONSTRAINT PK_gamer
		PRIMARY KEY (
			ID
		);

/* 게시판 */
CREATE TABLE MY_SCHEMA.Rank (
	SEQ DECIMAL(10,0) NOT NULL, /* 일련번호 */
	SCORE INTEGER, /* 점수 */
	GAMENAME VARCHAR2(20), /* 게임이름 */
	REGDATE TIMESTAMP, /* 플레이시점 */
	ID VARCHAR2(20) /* ID */
);

COMMENT ON TABLE MY_SCHEMA.Rank IS '게시판';

COMMENT ON COLUMN MY_SCHEMA.Rank.SEQ IS '일련번호';

COMMENT ON COLUMN MY_SCHEMA.Rank.SCORE IS '점수';

COMMENT ON COLUMN MY_SCHEMA.Rank.GAMENAME IS '게임이름';

COMMENT ON COLUMN MY_SCHEMA.Rank.REGDATE IS '플레이시점';

COMMENT ON COLUMN MY_SCHEMA.Rank.ID IS 'ID';

CREATE UNIQUE INDEX MY_SCHEMA.PK_Rank
	ON MY_SCHEMA.Rank (
		SEQ ASC
	);

ALTER TABLE MY_SCHEMA.Rank
	ADD
		CONSTRAINT PK_Rank
		PRIMARY KEY (
			SEQ
		);

ALTER TABLE MY_SCHEMA.Rank
	ADD
		CONSTRAINT FK_gamer_TO_Rank
		FOREIGN KEY (
			ID
		)
		REFERENCES MY_SCHEMA.gamer (
			ID
		);