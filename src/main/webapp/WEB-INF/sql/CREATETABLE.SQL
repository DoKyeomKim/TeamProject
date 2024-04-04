-- 개인회원=====================================================================
DROP TABLE PUSER;
CREATE TABLE PUSER (
       P_ID      VARCHAR2(30)   PRIMARY KEY         -- 개인회원 아이디
     , P_PASSWD  VARCHAR2(30)   NOT NULL            -- 개인회원 비밀번호
     , P_NAME    VARCHAR2(30)   NOT NULL            -- 개인회원 이름
     , P_PHONE   VARCHAR2(40)   NOT NULL            -- 개인회원 연락처
     , P_EMAIL   VARCHAR2(320)                      -- 개인회원 이메일
     , SKILL     VARCHAR2(100)                      -- 기술스택
);

INSERT  INTO  PUSER
VALUES (
    'lupy', '1234', '루피', '010-1234-0000', 'lupy@abc.com', 'java, html'
);

COMMIT;

SELECT * FROM PUSER;

-- 기업회원=====================================================================
DROP TABLE CUSER;
CREATE TABLE CUSER (
      C_ID       VARCHAR2(30)  PRIMARY KEY          -- 기업회원 아이디
    , C_PASSWD   VARCHAR2(30)  NOT NULL             -- 기업회원 비밀번호
    , C_NAME     VARCHAR2(30)  NOT NULL             -- 기업회원 이름
    , C_PHONE    VARCHAR2(40)  NOT NULL             -- 기업회원 연락처
    , C_COMPANY  VARCHAR2(60)  NOT NULL             -- 기업회원 회사명
    , C_BCODE    NUMBER(8, 0)  NOT NULL             -- 기업회원 사업자등록번호
    , C_EMAIL    VARCHAR2(320) NOT NULL             -- 기업회원 이메일
);

INSERT  INTO  CUSER
VALUES (
    'ROSER', '1234', '조이보이', '010-1111-0000', 'LAUGHTALE', 881609, 'lt@abc.cpm'
);

COMMIT;

SELECT * FROM CUSER;

-- 개인 이력서===================================================================
DROP TABLE P_RESUME;
CREATE TABLE P_RESUME (
    P_TITLE    VARCHAR2(240)    NOT NULL        -- 개인회원 이력서 제목
  , P_ID VARCHAR2(30) NOT NULL                  -- 개인회원 아이디
  ,  CONSTRAINT FK_P_RESUME_PUSER FOREIGN KEY (P_ID) REFERENCES PUSER(P_ID)
  ,  CONSTRAINT PK_P_RESUME PRIMARY KEY (P_ID)
  , P_NAME     VARCHAR2(30)     NOT NULL        -- 개인회원 이름
  , P_BIRTH    VARCHAR2(100)    NOT NULL        -- 개인회원 생일
  , P_PHONE    VARCHAR2(40)     NOT NULL        -- 개인회원 연락처
  , P_EMAIL    VARCHAR2(320)    NOT NULL        -- 개인회원 이메일
  , P_ADDRESS  VARCHAR2(400)    NOT NULL        -- 개인회원 주소
  , SKILL      VARCHAR2(100)    NOT NULL        -- 기술스택
  , INTRO      VARCHAR2(4000)   NOT NULL        -- 자소서
  , BOOKMARK   VARCHAR2(30)                     -- 북마크
);

INSERT INTO P_RESUME
VALUES (
    '열심히 하겠습니다',
    'lupy',
    '루피',
    '1999년 5월 5일',
    '010-1234-0000',
    'lupy@abc.com',
    '후샤마을',
    'java, html',
    '열심히 하께요 뿌에에에에에에에에에에에엥',
    'ON'
);

COMMIT;

SELECT * FROM P_RESUME;

-- 채용공고=====================================================================
DROP TABLE C_RESUME;
CREATE TABLE C_RESUME (
    C_ID       VARCHAR2(30)     NOT NULL        -- 기업회원 아이디
  ,  CONSTRAINT FK_C_RESUME_CUSER FOREIGN KEY (C_ID) REFERENCES CUSER(C_ID)
  ,  CONSTRAINT PK_C_RESUME PRIMARY KEY (C_ID)
  , C_COMPANY  VARCHAR2(120)    NOT NULL        -- 기업회원 회사명
  , C_TITLE    VARCHAR2(240)    NOT NULL        -- 채용공고 제목
  , SKILL      VARCHAR2(100)    NOT NULL        -- 모집부문, 필요한 기술스택
  , GETMAN     VARCHAR2(30)     NOT NULL        -- 모집인원(value 00, readonly)
  , C_ADDRESS  VARCHAR2(400)    NOT NULL        -- 근무위치(=회사위치)
  , C_INFO     VARCHAR2(1000)   NOT NULL        -- 기업정보
  , C_DDATE    VARCHAR2(300)    NOT NULL        -- 접수기간(데드라인)
  , BOOKMARK   VARCHAR2(30)                     -- 북마크
);

INSERT  INTO  C_RESUME
VALUES (
    'ROSER',
    'LAUGHTALE',
    '백엔드 모집요',
    'JAVA, ORACLE',
    '00',
    '부산 부산진구 부전동',
    '꿀빨고 합격한썰 푼다',
    '상시모집',
    'ON'
);

COMMIT;

SELECT * FROM C_RESUME;


--==============================================================================
--==============================================================================
--==============================================================================


--------------------------------------------------------------------------------
-- 커뮤니티 : 기업리뷰, 자유게시판
-- -- 기업리뷰   : comu_id=COMU01
-- -- 자유게시판 : comu_id=COMU02
-- -- COMU table 생성
-- 컬럼 : ( comu_id, comu_name )
-- values ( COMU01, 기업리뷰 ) ( COMU02, 자유게시판 )

-- @RequestMapping("/Comu")
-- @Controller
   
-- @RequestMapping("/List")
-- /Comu/List?comu_id=${ comu_id }


-- 커뮤니티=====================================================================
CREATE TABLE COMU (
      COMU_ID       VARCHAR2(30)    PRIMARY KEY
    , COMU_NAME     VARCHAR2(90)    NOT NULL
);

INSERT  INTO  COMU  VALUES ( 'COMU01', '기업리뷰' );
INSERT  INTO  COMU  VALUES ( 'COMU02', '자유게시판' );

COMMIT;

SELECT * FROM COMU;

-- 커뮤니티_기업리뷰 ===========================================================
DROP TABLE REVIEWBOARD;
CREATE TABLE REVIEWBOARD (
    COMU_ID     VARCHAR2(30)    NOT NULL
--  ,  CONSTRAINT FK_REVIEW_VIEW_COMU FOREIGN KEY (COMU_ID) REFERENCES COMU(COMU_ID)
--  ,  CONSTRAINT PK_REVIEW_VIEW PRIMARY KEY (COMU_ID)
  , RNO         NUMBER(4)       PRIMARY KEY
  , NAME        VARCHAR2(30)    NOT NULL            -- 작성자
  , TITLE       VARCHAR2(240)   NOT NULL            -- 제목
  , CONTENT     VARCHAR2(4000)  NOT NULL            -- 내용
  , STAR        NUMBER(2)       NOT NULL            -- 평점
--  , P_ID        VARCHAR2(30)    NOT NULL            -- 개인회원 아이디
--  , FOREIGN KEY (P_ID) REFERENCES PUSER(P_ID)
--  , C_ID        VARCHAR2(30)    NOT NULL            -- 기업회원 아이디
--  , FOREIGN KEY (C_ID) REFERENCES CUSER(C_ID)
);

INSERT  INTO  REVIEWBOARD
VALUES (
    'COMU01',
    1,
    '루피',
    '틀딱 대리 뒷통수때린 썰 푼다ㅋㅋ',
    '미안하다..이거보여주려고 어그로 끌었다...',
    2
    );
   
COMMIT;

SELECT * FROM REVIEWBOARD;

-- 커뮤니티_자유게시판 =========================================================
DROP TABLE FREEBOARD;
CREATE TABLE FREEBOARD (
    COMU_ID     VARCHAR2(30)    NOT NULL
--  ,  CONSTRAINT FK_FREE_VIEW_COMU FOREIGN KEY (COMU_ID) REFERENCES COMU(COMU_ID)
--  ,  CONSTRAINT PK_FREE_VIEW PRIMARY KEY (COMU_ID)
  , FNO         NUMBER(4)     PRIMARY KEY
  , NAME      VARCHAR2(30)    NOT NULL              -- 작성자
  , TITLE       VARCHAR2(240)   NOT NULL            -- 제목
  , CONTENT     VARCHAR2(4000)                      -- 내용
--  , P_ID        VARCHAR2(30)    NOT NULL            -- 개인회원 아이디
--  , FOREIGN KEY (P_ID) REFERENCES PUSER(P_ID)
--  , C_ID        VARCHAR2(30)    NOT NULL            -- 기업회원 아이디
--  , FOREIGN KEY (C_ID) REFERENCES CUSER(C_ID)
);

INSERT  INTO  FREEBOARD
VALUES (
    'COMU02',
    1,
    '루피',
    '그린테크 김대리 고발합니다',
    '그린테크 김대리 화장실에서 담배폈습니다'
    );
   
COMMIT;

SELECT * FROM FREEBOARD;


--==============================================================================
--==============================================================================
--==============================================================================


-- 퀵서치=======================================================================
DROP TABLE QUICK;
CREATE TABLE QUICK (
    QUICK_ID    VARCHAR2(30)    PRIMARY KEY
  , QUICK_MENU  VARCHAR2(30)    NOT NULL
  );
   
INSERT  INTO  QUICK  VALUES ( 'QUICK01', 'REGION' );
INSERT  INTO  QUICK  VALUES ( 'QUICK02', 'TECH' );
INSERT  INTO  QUICK  VALUES ( 'QUICK03', 'CAREER' );

COMMIT;

SELECT * FROM QUICK;

-- 퀵서치_지역 QUICK_ID='QUICK01' ==============================================
DROP TABLE REGION;
CREATE TABLE REGION (
    QUICK_ID  VARCHAR2(30)  REFERENCES  QUICK (QUICK_ID)
  , RNO       NUMBER(4)     PRIMARY KEY         -- 퀵서치 번호
  , LOC       VARCHAR2(20)
);

INSERT INTO REGION VALUES ( 'QUICK01', 1, '서울' );
INSERT INTO REGION VALUES ( 'QUICK01', 2, '부산' );
INSERT INTO REGION VALUES ( 'QUICK01', 3, '대구' );
INSERT INTO REGION VALUES ( 'QUICK01', 4, '인천' );
INSERT INTO REGION VALUES ( 'QUICK01', 5, 'U' );
INSERT INTO REGION VALUES ( 'QUICK01', 6, 'DAEJEON' );
INSERT INTO REGION VALUES ( 'QUICK01', 7, 'ULSAN' );

COMMIT;

SELECT * FROM REGION;

-- 퀵서치_기술스택 QUICK_ID='QUICK02' ==========================================
DROP TABLE TECH;
CREATE TABLE TECH (
    QUICK_ID  VARCHAR2(30)  REFERENCES  QUICK (QUICK_ID)
  , TNO       NUMBER(4)     PRIMARY KEY
  , SKILL     VARCHAR2(30)  NOT NULL
  );
   
INSERT INTO TECH VALUES ( 'QUICK02', 1, 'JAVA' );
INSERT INTO TECH VALUES ( 'QUICK02', 2, 'HTML' );
INSERT INTO TECH VALUES ( 'QUICK02', 3, 'ORACLE' );
INSERT INTO TECH VALUES ( 'QUICK02', 4, 'MYSQL' );
INSERT INTO TECH VALUES ( 'QUICK02', 5, 'CSS' );
INSERT INTO TECH VALUES ( 'QUICK02', 6, 'JAVASCRIPT' );
INSERT INTO TECH VALUES ( 'QUICK02', 7, 'VSCODE' );
INSERT INTO TECH VALUES ( 'QUICK02', 8, 'SPRINGBOOT' );

COMMIT;

SELECT * FROM TECH;

-- 퀵서치_경력유무 QUICK_ID='QUICK03' ==========================================
DROP TABLE CAREER;
CREATE TABLE CAREER (
    QUICK_ID  VARCHAR2(30)  REFERENCES  QUICK (QUICK_ID)
  , CNO       NUMBER(4)     PRIMARY KEY
  , EXPER     VARCHAR2(30)  NOT NULL
  );

INSERT INTO CAREER VALUES ( 'QUICK03', 1, 'NEWCOMER' );
INSERT INTO CAREER VALUES ( 'QUICK03', 2, 'EXPERIENCED' );
INSERT INTO CAREER VALUES ( 'QUICK03', 3, 'IRRELEVANT' );
   
COMMIT;

SELECT * FROM CAREER;


<<<<<<< HEAD
<<<<<<< HEAD
--==============================================================================
--==============================================================================
--==============================================================================


db 고객센터 jsp, view 화면 추가
=======
--==============================================================================
--==============================================================================
--==============================================================================
>>>>>>> branch 'develop' of https://github.com/DoKyeomKim/TeamProject.git

<<<<<<< HEAD

-- 고객센터 jsp 화면 ===========================================================
CREATE TABLE SERVICE_JSP (
      SNO       NUMBER(4, 0)    PRIMARY KEY
    , NAME      VARCHAR2(30)    NOT NULL
    , TITLE     VARCHAR2(240)   NOT NULL
);
=======
>>>>>>> branch 'develop' of https://github.com/DoKyeomKim/TeamProject.git

-- 고객센터 ====================================================================
DROP TABLE SERVICEBOARD;
CREATE TABLE SERVICEBOARD (
    SNO         NUMBER(4, 0)    NOT NULL
--  ,  CONSTRAINT FK_SERVICE_VIEW_SERVICE_JSP FOREIGN KEY (SNO) REFERENCES SERVICE_JSP (SNO)
--  ,  CONSTRAINT PK_SERVICE_VIEW PRIMARY KEY (SNO)
  , NAME        VARCHAR2(30)    NOT NULL              -- 작성자
  , TITLE       VARCHAR2(240)   NOT NULL            -- 제목
  , CONTENT     VARCHAR2(4000)                      -- 내용
);

INSERT  INTO  SERVICEBOARD VALUES ( 1, '루피', '이게 말이 되나요?', '개선바랍니다' );

COMMIT;

SELECT * FROM SERVICEBOARD;