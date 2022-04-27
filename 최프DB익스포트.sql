--------------------------------------------------------
--  파일이 생성됨 - 수요일-4월-27-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ATCHFILE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ATCHFILE_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BRD_RPL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BRD_RPL_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BRD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BRD_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CHAT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CHAT_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CUST_NTSL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CUST_NTSL_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 6844 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EATRZ_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EATRZ_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ORDR_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STRE_SPMT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STRE_SPMT_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STRE_WRHS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STRE_WRHS_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 67 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STRG_SHMT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STRG_SHMT_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 302 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STRG_WRHS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "STRG_WRHS_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ALAM
--------------------------------------------------------

  CREATE TABLE "ALAM" 
   (	"ALAMNUM" NUMBER, 
	"TITLE" VARCHAR2(50 BYTE), 
	"SENDER_NAME" VARCHAR2(50 BYTE), 
	"RECEIVER_NAME" VARCHAR2(50 BYTE), 
	"BRNCOFCNM" VARCHAR2(50 BYTE), 
	"SHORTSTOCKNM" VARCHAR2(50 BYTE), 
	"DPTOPT" VARCHAR2(50 BYTE), 
	"LELOPT" VARCHAR2(50 BYTE), 
	"RECEPTION_STATUS" VARCHAR2(50 BYTE), 
	"RECEIVER_ID" VARCHAR2(50 BYTE), 
	"SENDER_ID" VARCHAR2(50 BYTE), 
	"ALAM_SEND_TIME" DATE, 
	"ALAM_RECEIVE_TIME" DATE
   ) ;

   COMMENT ON COLUMN "ALAM"."ALAMNUM" IS '알람번호';
   COMMENT ON COLUMN "ALAM"."TITLE" IS '알람종류';
   COMMENT ON COLUMN "ALAM"."SENDER_NAME" IS '발신자이름';
   COMMENT ON COLUMN "ALAM"."RECEIVER_NAME" IS '수신자';
   COMMENT ON COLUMN "ALAM"."BRNCOFCNM" IS '소속지점명';
   COMMENT ON COLUMN "ALAM"."SHORTSTOCKNM" IS '부족재고명';
   COMMENT ON COLUMN "ALAM"."DPTOPT" IS '부서';
   COMMENT ON COLUMN "ALAM"."LELOPT" IS '직급';
   COMMENT ON COLUMN "ALAM"."RECEPTION_STATUS" IS '읽었는지 여부';
   COMMENT ON COLUMN "ALAM"."RECEIVER_ID" IS '수신자아이디';
   COMMENT ON COLUMN "ALAM"."SENDER_ID" IS '발신자아이디';
   COMMENT ON COLUMN "ALAM"."ALAM_SEND_TIME" IS '알람발송시간';
   COMMENT ON COLUMN "ALAM"."ALAM_RECEIVE_TIME" IS '알람수신시간';
--------------------------------------------------------
--  DDL for Table ATCHFILE
--------------------------------------------------------

  CREATE TABLE "ATCHFILE" 
   (	"ATCHFILE_ID" NUMBER, 
	"ATCHFILE_NM" VARCHAR2(100 BYTE), 
	"ATCHFILE_SZ" VARCHAR2(1000 BYTE), 
	"ATCHFILE_DT" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "ATCHFILE"."ATCHFILE_ID" IS '파일아이디';
   COMMENT ON COLUMN "ATCHFILE"."ATCHFILE_NM" IS '파일명';
   COMMENT ON COLUMN "ATCHFILE"."ATCHFILE_SZ" IS '파일크기';
   COMMENT ON COLUMN "ATCHFILE"."ATCHFILE_DT" IS '파일등록일';
--------------------------------------------------------
--  DDL for Table ATRZ
--------------------------------------------------------

  CREATE TABLE "ATRZ" 
   (	"ATRZ_ID" VARCHAR2(30 BYTE), 
	"EMP_ID" VARCHAR2(100 BYTE), 
	"ATRZ_NM" VARCHAR2(50 BYTE), 
	"ATRZ_DT" DATE, 
	"EATRZ_ID" VARCHAR2(30 BYTE)
   ) ;

   COMMENT ON COLUMN "ATRZ"."ATRZ_ID" IS '결재선아이디';
   COMMENT ON COLUMN "ATRZ"."EMP_ID" IS '직원아이디';
   COMMENT ON COLUMN "ATRZ"."ATRZ_NM" IS '결재선명';
   COMMENT ON COLUMN "ATRZ"."ATRZ_DT" IS '결재작성일';
   COMMENT ON COLUMN "ATRZ"."EATRZ_ID" IS '결재아이디';
--------------------------------------------------------
--  DDL for Table AUTHORITIES
--------------------------------------------------------

  CREATE TABLE "AUTHORITIES" 
   (	"EMP_ID" VARCHAR2(150 BYTE), 
	"AUTHORITY" VARCHAR2(150 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table BRD
--------------------------------------------------------

  CREATE TABLE "BRD" 
   (	"BRD_ID" NUMBER, 
	"BRD_SE" VARCHAR2(30 BYTE), 
	"BRD_TTL" VARCHAR2(100 BYTE), 
	"BRD_CN" VARCHAR2(4000 BYTE), 
	"EMP_ID" VARCHAR2(100 BYTE), 
	"BRD_DT" DATE, 
	"BRD_VI" NUMBER DEFAULT NULL, 
	"BRD_IMG" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "BRD"."BRD_ID" IS '게시글아이디';
   COMMENT ON COLUMN "BRD"."BRD_SE" IS '게시판분류';
   COMMENT ON COLUMN "BRD"."BRD_TTL" IS '게시글제목';
   COMMENT ON COLUMN "BRD"."BRD_CN" IS '게시글내용';
   COMMENT ON COLUMN "BRD"."EMP_ID" IS '게시글작성자';
   COMMENT ON COLUMN "BRD"."BRD_DT" IS '게시글작성일';
   COMMENT ON COLUMN "BRD"."BRD_VI" IS '게시글조회수';
   COMMENT ON COLUMN "BRD"."BRD_IMG" IS '게시글이미지';
--------------------------------------------------------
--  DDL for Table BRD_RPL
--------------------------------------------------------

  CREATE TABLE "BRD_RPL" 
   (	"BRD_RPL_ID" VARCHAR2(30 BYTE), 
	"BRD_ID" NUMBER, 
	"EMP_ID" VARCHAR2(100 BYTE), 
	"BRD_RPL_CN" VARCHAR2(4000 BYTE), 
	"BRD_RPL_DT" DATE
   ) ;

   COMMENT ON COLUMN "BRD_RPL"."BRD_RPL_ID" IS '댓글아이디';
   COMMENT ON COLUMN "BRD_RPL"."BRD_ID" IS '게시글아이디';
   COMMENT ON COLUMN "BRD_RPL"."EMP_ID" IS '댓글작성자';
   COMMENT ON COLUMN "BRD_RPL"."BRD_RPL_CN" IS '댓글내용';
   COMMENT ON COLUMN "BRD_RPL"."BRD_RPL_DT" IS '댓글작성일';
--------------------------------------------------------
--  DDL for Table BRNCOFC
--------------------------------------------------------

  CREATE TABLE "BRNCOFC" 
   (	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"BRNCOFC_NM" VARCHAR2(50 BYTE)
   ) ;

   COMMENT ON COLUMN "BRNCOFC"."BRNCOFC_ID" IS '지점아이디';
   COMMENT ON COLUMN "BRNCOFC"."BRNCOFC_NM" IS '지점명';
--------------------------------------------------------
--  DDL for Table CALENDAR
--------------------------------------------------------

  CREATE TABLE "CALENDAR" 
   (	"CALENDAR_NO" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"STARTDAY" DATE, 
	"ENDDAY" DATE, 
	"CATEGORY" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "CALENDAR"."CALENDAR_NO" IS '캘린더번호';
   COMMENT ON COLUMN "CALENDAR"."TITLE" IS '일정명';
   COMMENT ON COLUMN "CALENDAR"."CONTENT" IS '일정내용';
   COMMENT ON COLUMN "CALENDAR"."STARTDAY" IS '시작일';
   COMMENT ON COLUMN "CALENDAR"."ENDDAY" IS '종료일';
   COMMENT ON COLUMN "CALENDAR"."CATEGORY" IS '이벤트분류';
   COMMENT ON COLUMN "CALENDAR"."USER_ID" IS '사용자';
--------------------------------------------------------
--  DDL for Table CHAT
--------------------------------------------------------

  CREATE TABLE "CHAT" 
   (	"CHAT_ID" NUMBER, 
	"CHAT_RM_ID" VARCHAR2(30 BYTE), 
	"EMP_CD_SNDR" VARCHAR2(100 BYTE), 
	"EMP_CD_RCVR" VARCHAR2(100 BYTE), 
	"CHAT_DT" DATE, 
	"CHAT_CN" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "CHAT"."CHAT_ID" IS '채팅아이디';
   COMMENT ON COLUMN "CHAT"."CHAT_RM_ID" IS '채팅방아이디';
   COMMENT ON COLUMN "CHAT"."EMP_CD_SNDR" IS '채팅발신자';
   COMMENT ON COLUMN "CHAT"."EMP_CD_RCVR" IS '채팅수신자';
   COMMENT ON COLUMN "CHAT"."CHAT_DT" IS '채팅발신일';
   COMMENT ON COLUMN "CHAT"."CHAT_CN" IS '채팅내용';
--------------------------------------------------------
--  DDL for Table CMNCD
--------------------------------------------------------

  CREATE TABLE "CMNCD" 
   (	"CMNCD_CD" VARCHAR2(20 BYTE), 
	"CMNCD_GU_CD" VARCHAR2(5 BYTE), 
	"CMNCD_GU_NM" VARCHAR2(30 BYTE), 
	"CMNCD_NM1" VARCHAR2(30 BYTE), 
	"CMNCD_NM2" VARCHAR2(30 BYTE), 
	"CMNCD_OPT1" VARCHAR2(200 BYTE), 
	"CMNCD_YN" VARCHAR2(5 BYTE)
   ) ;

   COMMENT ON COLUMN "CMNCD"."CMNCD_CD" IS '공통코드';
   COMMENT ON COLUMN "CMNCD"."CMNCD_GU_CD" IS '공통그룹코드';
   COMMENT ON COLUMN "CMNCD"."CMNCD_GU_NM" IS '공통코드그룹명';
   COMMENT ON COLUMN "CMNCD"."CMNCD_NM1" IS '코드명1';
   COMMENT ON COLUMN "CMNCD"."CMNCD_NM2" IS '코드명2';
   COMMENT ON COLUMN "CMNCD"."CMNCD_OPT1" IS '옵션1';
   COMMENT ON COLUMN "CMNCD"."CMNCD_YN" IS '사용여부';
--------------------------------------------------------
--  DDL for Table CNPT
--------------------------------------------------------

  CREATE TABLE "CNPT" 
   (	"CNPT_ID" VARCHAR2(30 BYTE), 
	"CNPT_NM" VARCHAR2(150 BYTE), 
	"CNPT_TEL" VARCHAR2(30 BYTE), 
	"CNPT_MAIL" VARCHAR2(100 BYTE), 
	"CNPT_ZIP" NUMBER, 
	"CNPT_ADDR" VARCHAR2(200 BYTE), 
	"CNPT_DADDR" VARCHAR2(200 BYTE), 
	"CNPT_BANK_NM" VARCHAR2(50 BYTE), 
	"CNPT_ACTNO" VARCHAR2(30 BYTE), 
	"CNPT_ACTNM" VARCHAR2(50 BYTE), 
	"CNPT_CHARGER" VARCHAR2(50 BYTE), 
	"CNPT_YN" VARCHAR2(5 BYTE), 
	"CNPT_BRNO" VARCHAR2(50 BYTE), 
	"CNPT_RPRSV_NM" VARCHAR2(50 BYTE), 
	"CNPT_SE" VARCHAR2(10 BYTE), 
	"CMNCD_CD" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "CNPT"."CNPT_ID" IS '거래처아이디';
   COMMENT ON COLUMN "CNPT"."CNPT_NM" IS '거래처명';
   COMMENT ON COLUMN "CNPT"."CNPT_TEL" IS '연락처';
   COMMENT ON COLUMN "CNPT"."CNPT_MAIL" IS '이메일';
   COMMENT ON COLUMN "CNPT"."CNPT_ZIP" IS '우편번호';
   COMMENT ON COLUMN "CNPT"."CNPT_ADDR" IS '주소';
   COMMENT ON COLUMN "CNPT"."CNPT_DADDR" IS '상세주소';
   COMMENT ON COLUMN "CNPT"."CNPT_BANK_NM" IS '은행명';
   COMMENT ON COLUMN "CNPT"."CNPT_ACTNO" IS '계좌번호';
   COMMENT ON COLUMN "CNPT"."CNPT_ACTNM" IS '계좌주';
   COMMENT ON COLUMN "CNPT"."CNPT_CHARGER" IS '거래처담당자';
   COMMENT ON COLUMN "CNPT"."CNPT_YN" IS '거래여부';
   COMMENT ON COLUMN "CNPT"."CNPT_BRNO" IS '사업자등록번호';
   COMMENT ON COLUMN "CNPT"."CNPT_RPRSV_NM" IS '대표자';
   COMMENT ON COLUMN "CNPT"."CNPT_SE" IS '사업자유형';
   COMMENT ON COLUMN "CNPT"."CMNCD_CD" IS '업종코드';
--------------------------------------------------------
--  DDL for Table CNPT_GDS
--------------------------------------------------------

  CREATE TABLE "CNPT_GDS" 
   (	"CNPT_GDS_CD" VARCHAR2(50 BYTE), 
	"CNPT_ID" VARCHAR2(30 BYTE), 
	"CNPT_GDS_NM" VARCHAR2(200 BYTE), 
	"CNPT_GDS_AMT" NUMBER
   ) ;

   COMMENT ON COLUMN "CNPT_GDS"."CNPT_GDS_CD" IS '품번';
   COMMENT ON COLUMN "CNPT_GDS"."CNPT_ID" IS '거래처아이디';
   COMMENT ON COLUMN "CNPT_GDS"."CNPT_GDS_NM" IS '거래처상품명';
   COMMENT ON COLUMN "CNPT_GDS"."CNPT_GDS_AMT" IS '거래처상품단가';
--------------------------------------------------------
--  DDL for Table CUST
--------------------------------------------------------

  CREATE TABLE "CUST" 
   (	"CUST_ID" VARCHAR2(100 BYTE), 
	"CUST_NM" VARCHAR2(50 BYTE), 
	"CUST_TEL" VARCHAR2(50 BYTE), 
	"CUST_MAIL" VARCHAR2(100 BYTE), 
	"CUST_ZIP" NUMBER, 
	"CUST_ADDR" VARCHAR2(200 BYTE), 
	"CUST_DADDR" VARCHAR2(200 BYTE), 
	"CUST_BRDT" DATE, 
	"CUST_MRG_YN" VARCHAR2(5 BYTE), 
	"CUST_STTS" VARCHAR2(20 BYTE), 
	"CUST_CRCD_NO" VARCHAR2(50 BYTE), 
	"CUST_GNDR" VARCHAR2(10 BYTE), 
	"CUST_MKT_RCPTN_AGRE_YN" VARCHAR2(5 BYTE), 
	"CMNCD_CD" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "CUST"."CUST_ID" IS '고객아이디';
   COMMENT ON COLUMN "CUST"."CUST_NM" IS '고객명';
   COMMENT ON COLUMN "CUST"."CUST_TEL" IS '연락처';
   COMMENT ON COLUMN "CUST"."CUST_MAIL" IS '이메일';
   COMMENT ON COLUMN "CUST"."CUST_ZIP" IS '우편번호';
   COMMENT ON COLUMN "CUST"."CUST_ADDR" IS '주소';
   COMMENT ON COLUMN "CUST"."CUST_DADDR" IS '상세주소';
   COMMENT ON COLUMN "CUST"."CUST_BRDT" IS '생년월일';
   COMMENT ON COLUMN "CUST"."CUST_MRG_YN" IS '결혼여부';
   COMMENT ON COLUMN "CUST"."CUST_STTS" IS '고객상태(일반, 휴면, 탈퇴)';
   COMMENT ON COLUMN "CUST"."CUST_CRCD_NO" IS '카드번호';
   COMMENT ON COLUMN "CUST"."CUST_GNDR" IS '성별';
   COMMENT ON COLUMN "CUST"."CUST_MKT_RCPTN_AGRE_YN" IS '마케팅수신동의여부';
   COMMENT ON COLUMN "CUST"."CMNCD_CD" IS '등급';
--------------------------------------------------------
--  DDL for Table CUST_NTSL
--------------------------------------------------------

  CREATE TABLE "CUST_NTSL" 
   (	"CUST_NTSL_ID" NUMBER, 
	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"CUST_ID" VARCHAR2(100 BYTE), 
	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"CUST_NTSL_DT" DATE, 
	"CUST_NTSL_AMT" NUMBER, 
	"CUST_NTSL_QTY" NUMBER
   ) ;

   COMMENT ON COLUMN "CUST_NTSL"."CUST_NTSL_ID" IS '판매아이디';
   COMMENT ON COLUMN "CUST_NTSL"."BRNCOFC_ID" IS '지점아이디';
   COMMENT ON COLUMN "CUST_NTSL"."CUST_ID" IS '고객아이디';
   COMMENT ON COLUMN "CUST_NTSL"."PROD_INFO_ID" IS '상품아이디';
   COMMENT ON COLUMN "CUST_NTSL"."CUST_NTSL_DT" IS '소비자판매일';
   COMMENT ON COLUMN "CUST_NTSL"."CUST_NTSL_AMT" IS '소비자판매가격';
   COMMENT ON COLUMN "CUST_NTSL"."CUST_NTSL_QTY" IS '소비자판매수량';
--------------------------------------------------------
--  DDL for Table EATRZ
--------------------------------------------------------

  CREATE TABLE "EATRZ" 
   (	"EATRZ_ID" VARCHAR2(30 BYTE), 
	"EATRZ_FRM_ID" VARCHAR2(30 BYTE), 
	"EATRZ_SE" VARCHAR2(30 BYTE), 
	"EATRZ_APRVR" VARCHAR2(30 BYTE), 
	"EATRZ_DMND_YMD" DATE, 
	"EATRZ_DDLN_DT" DATE, 
	"EATRZ_APRV_YN" VARCHAR2(5 BYTE), 
	"EATRZ_DT" DATE, 
	"EATRZ_SEND_ID" VARCHAR2(30 BYTE)
   ) ;

   COMMENT ON COLUMN "EATRZ"."EATRZ_ID" IS '결재아이디';
   COMMENT ON COLUMN "EATRZ"."EATRZ_FRM_ID" IS '서식아이디';
   COMMENT ON COLUMN "EATRZ"."EATRZ_SE" IS '결재유형';
   COMMENT ON COLUMN "EATRZ"."EATRZ_APRVR" IS '결재자';
   COMMENT ON COLUMN "EATRZ"."EATRZ_DMND_YMD" IS '결재제출일';
   COMMENT ON COLUMN "EATRZ"."EATRZ_DDLN_DT" IS '결재마감일';
   COMMENT ON COLUMN "EATRZ"."EATRZ_APRV_YN" IS '결재승인여부';
   COMMENT ON COLUMN "EATRZ"."EATRZ_DT" IS '결재일';
   COMMENT ON COLUMN "EATRZ"."EATRZ_SEND_ID" IS '기안아이디';
--------------------------------------------------------
--  DDL for Table EATRZ_FRM
--------------------------------------------------------

  CREATE TABLE "EATRZ_FRM" 
   (	"EATRZ_FRM_ID" VARCHAR2(30 BYTE), 
	"EATRZ_FRM_CN" VARCHAR2(4000 BYTE), 
	"EATRZ_FRM_DT" DATE, 
	"EMP_ID" VARCHAR2(100 BYTE), 
	"EATRZ_FRM_SE_ID" VARCHAR2(300 BYTE)
   ) ;

   COMMENT ON COLUMN "EATRZ_FRM"."EATRZ_FRM_ID" IS '서식아이디';
   COMMENT ON COLUMN "EATRZ_FRM"."EATRZ_FRM_CN" IS '결재서식내용';
   COMMENT ON COLUMN "EATRZ_FRM"."EATRZ_FRM_DT" IS '결재서식작성일';
   COMMENT ON COLUMN "EATRZ_FRM"."EMP_ID" IS '결재서식작성자';
   COMMENT ON COLUMN "EATRZ_FRM"."EATRZ_FRM_SE_ID" IS '결재서식유형아이디';
--------------------------------------------------------
--  DDL for Table EATRZ_FRM_SE
--------------------------------------------------------

  CREATE TABLE "EATRZ_FRM_SE" 
   (	"EATRZ_FRM_SE_ID" VARCHAR2(300 BYTE), 
	"EATRZ_FRM_SE_NM" VARCHAR2(300 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table EMP
--------------------------------------------------------

  CREATE TABLE "EMP" 
   (	"EMP_ID" VARCHAR2(100 BYTE), 
	"EMP_NM" VARCHAR2(50 BYTE), 
	"EMP_JNCMP_YMD" DATE, 
	"EMP_BRDT" DATE, 
	"EMP_MAIL" VARCHAR2(100 BYTE), 
	"EMP_PSWD" VARCHAR2(100 BYTE), 
	"EMP_IMG" VARCHAR2(1000 BYTE), 
	"EMP_IP" VARCHAR2(30 BYTE), 
	"EMP_ACTNO" VARCHAR2(50 BYTE), 
	"EMP_SE" VARCHAR2(100 BYTE), 
	"CTRTEMP_SE" VARCHAR2(10 BYTE), 
	"CMNCD_CD" VARCHAR2(20 BYTE), 
	"EMP_TEL" VARCHAR2(50 BYTE), 
	"ENABLED" CHAR(1 BYTE) DEFAULT 1, 
	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"COUNTALARM" NUMBER DEFAULT 0
   ) ;

   COMMENT ON COLUMN "EMP"."EMP_ID" IS '직원아이디';
   COMMENT ON COLUMN "EMP"."EMP_NM" IS '직원명';
   COMMENT ON COLUMN "EMP"."EMP_JNCMP_YMD" IS '입사일';
   COMMENT ON COLUMN "EMP"."EMP_BRDT" IS '생년월일';
   COMMENT ON COLUMN "EMP"."EMP_MAIL" IS '이메일';
   COMMENT ON COLUMN "EMP"."EMP_PSWD" IS '비밀번호';
   COMMENT ON COLUMN "EMP"."EMP_IMG" IS '이미지';
   COMMENT ON COLUMN "EMP"."EMP_IP" IS '아이피';
   COMMENT ON COLUMN "EMP"."EMP_ACTNO" IS '계좌번호';
   COMMENT ON COLUMN "EMP"."EMP_SE" IS '직원유형';
   COMMENT ON COLUMN "EMP"."CTRTEMP_SE" IS '근무형태';
   COMMENT ON COLUMN "EMP"."CMNCD_CD" IS '부서/직급';
   COMMENT ON COLUMN "EMP"."EMP_TEL" IS '연락처';
   COMMENT ON COLUMN "EMP"."ENABLED" IS '시큐리티';
   COMMENT ON COLUMN "EMP"."BRNCOFC_ID" IS '근무지점';
   COMMENT ON COLUMN "EMP"."COUNTALARM" IS '안읽은 알람';
--------------------------------------------------------
--  DDL for Table EVNT
--------------------------------------------------------

  CREATE TABLE "EVNT" 
   (	"EVNT_ID" VARCHAR2(30 BYTE), 
	"EVNT_HOST" VARCHAR2(50 BYTE), 
	"EVNT_CN" VARCHAR2(200 BYTE), 
	"SCHDL_ID" VARCHAR2(30 BYTE)
   ) ;

   COMMENT ON COLUMN "EVNT"."EVNT_ID" IS '행사아이디';
   COMMENT ON COLUMN "EVNT"."EVNT_HOST" IS '행사주최';
   COMMENT ON COLUMN "EVNT"."EVNT_CN" IS '행사내용';
   COMMENT ON COLUMN "EVNT"."SCHDL_ID" IS '일정아이디';
--------------------------------------------------------
--  DDL for Table EVNT_GDS
--------------------------------------------------------

  CREATE TABLE "EVNT_GDS" 
   (	"EVNT_ID" VARCHAR2(30 BYTE), 
	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"EVNT_GDS_DCNT_RT" NUMBER
   ) ;

   COMMENT ON COLUMN "EVNT_GDS"."EVNT_ID" IS '행사아이디';
   COMMENT ON COLUMN "EVNT_GDS"."PROD_INFO_ID" IS '상품아이디';
   COMMENT ON COLUMN "EVNT_GDS"."EVNT_GDS_DCNT_RT" IS '행사할인율';
--------------------------------------------------------
--  DDL for Table GROUPMAP
--------------------------------------------------------

  CREATE TABLE "GROUPMAP" 
   (	"CHILD_ID" VARCHAR2(30 BYTE), 
	"GROUP_NM" VARCHAR2(30 BYTE), 
	"PARENT_ID" VARCHAR2(30 BYTE), 
	"PERSON_NM" VARCHAR2(30 BYTE), 
	"RANK" VARCHAR2(20 BYTE), 
	"DEPT_NM" VARCHAR2(20 BYTE), 
	"PERSON_TEL" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "GROUPMAP"."CHILD_ID" IS '자식아이디';
   COMMENT ON COLUMN "GROUPMAP"."GROUP_NM" IS '그룹이름';
   COMMENT ON COLUMN "GROUPMAP"."PARENT_ID" IS '부모아이디';
   COMMENT ON COLUMN "GROUPMAP"."PERSON_NM" IS '직원 이름';
   COMMENT ON COLUMN "GROUPMAP"."RANK" IS '직급';
   COMMENT ON COLUMN "GROUPMAP"."DEPT_NM" IS '부서 이름';
   COMMENT ON COLUMN "GROUPMAP"."PERSON_TEL" IS '연락처';
--------------------------------------------------------
--  DDL for Table MAINCALENDAR
--------------------------------------------------------

  CREATE TABLE "MAINCALENDAR" 
   (	"MAIN_CALNO" NUMBER, 
	"MAIN_CALTITLE" VARCHAR2(100 BYTE), 
	"MAIN_CALCON" VARCHAR2(1000 BYTE), 
	"MAIN_START" DATE, 
	"MAIN_END" DATE, 
	"MAIN_CALUSER" VARCHAR2(30 BYTE), 
	"MAIN_COLOR" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "MAINCALENDAR"."MAIN_CALNO" IS '메인캘린더번호';
   COMMENT ON COLUMN "MAINCALENDAR"."MAIN_CALTITLE" IS '메인캘린더제목';
   COMMENT ON COLUMN "MAINCALENDAR"."MAIN_CALCON" IS '메인캘린더내용';
   COMMENT ON COLUMN "MAINCALENDAR"."MAIN_START" IS '메인캘린더시작';
   COMMENT ON COLUMN "MAINCALENDAR"."MAIN_END" IS '메인캘린더끝';
   COMMENT ON COLUMN "MAINCALENDAR"."MAIN_CALUSER" IS '메인캘린더내용';
   COMMENT ON COLUMN "MAINCALENDAR"."MAIN_COLOR" IS '메인캘린더색';
--------------------------------------------------------
--  DDL for Table ORDR
--------------------------------------------------------

  CREATE TABLE "ORDR" 
   (	"ORDR_ID" NUMBER, 
	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"ORDR_QTY" NUMBER, 
	"ORDR_DT" DATE, 
	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"ORDR_SE" VARCHAR2(10 BYTE), 
	"ORDR_YN" VARCHAR2(10 BYTE), 
	"ORDR_WHYN" VARCHAR2(10 BYTE)
   ) ;

   COMMENT ON COLUMN "ORDR"."ORDR_ID" IS '발주아이디';
   COMMENT ON COLUMN "ORDR"."PROD_INFO_ID" IS '상품아이디';
   COMMENT ON COLUMN "ORDR"."ORDR_QTY" IS '발주수량';
   COMMENT ON COLUMN "ORDR"."ORDR_DT" IS '발주일';
   COMMENT ON COLUMN "ORDR"."BRNCOFC_ID" IS '발주지점';
   COMMENT ON COLUMN "ORDR"."ORDR_SE" IS '발주구분';
   COMMENT ON COLUMN "ORDR"."ORDR_YN" IS '수주여부';
   COMMENT ON COLUMN "ORDR"."ORDR_WHYN" IS '입고여부';
--------------------------------------------------------
--  DDL for Table PRCHS
--------------------------------------------------------

  CREATE TABLE "PRCHS" 
   (	"PRCHS_ID" VARCHAR2(30 BYTE), 
	"PRCHS_DT" DATE, 
	"PRCHS_AMT" NUMBER, 
	"CNPT_ID" VARCHAR2(30 BYTE), 
	"PRCHS_SE" VARCHAR2(10 BYTE)
   ) ;

   COMMENT ON COLUMN "PRCHS"."PRCHS_ID" IS '매입아이디';
   COMMENT ON COLUMN "PRCHS"."PRCHS_DT" IS '매입일';
   COMMENT ON COLUMN "PRCHS"."PRCHS_AMT" IS '매입총액';
   COMMENT ON COLUMN "PRCHS"."CNPT_ID" IS '매입거래처';
   COMMENT ON COLUMN "PRCHS"."PRCHS_SE" IS '매입구분';
--------------------------------------------------------
--  DDL for Table PRCHS_GDS
--------------------------------------------------------

  CREATE TABLE "PRCHS_GDS" 
   (	"PRCHS_ID" VARCHAR2(30 BYTE), 
	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"PRCHS_GDS_QTY" NUMBER, 
	"PRCHS_GDS_AMT" NUMBER, 
	"PRCHS_GDS_YN" VARCHAR2(5 BYTE)
   ) ;

   COMMENT ON COLUMN "PRCHS_GDS"."PRCHS_ID" IS '매입아이디';
   COMMENT ON COLUMN "PRCHS_GDS"."PROD_INFO_ID" IS '상품아이디';
   COMMENT ON COLUMN "PRCHS_GDS"."PRCHS_GDS_QTY" IS '매입수량';
   COMMENT ON COLUMN "PRCHS_GDS"."PRCHS_GDS_AMT" IS '매입단가';
   COMMENT ON COLUMN "PRCHS_GDS"."PRCHS_GDS_YN" IS '입고여부';
--------------------------------------------------------
--  DDL for Table PROD_INFO
--------------------------------------------------------

  CREATE TABLE "PROD_INFO" 
   (	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"PROD_INFO_NM" VARCHAR2(200 BYTE), 
	"PROD_INFO_PRCHS_AMT" NUMBER, 
	"PROD_INFO_NTSL_AMT" NUMBER, 
	"PROD_INFO_LDT" VARCHAR2(50 BYTE), 
	"PROD_INFO_PLOR" VARCHAR2(30 BYTE), 
	"CMNCD_CD" VARCHAR2(20 BYTE), 
	"PROD_INFO_YN" VARCHAR2(5 BYTE), 
	"CNPT_ID" VARCHAR2(30 BYTE)
   ) ;

   COMMENT ON COLUMN "PROD_INFO"."PROD_INFO_ID" IS '상품아이디';
   COMMENT ON COLUMN "PROD_INFO"."PROD_INFO_NM" IS '상품명';
   COMMENT ON COLUMN "PROD_INFO"."PROD_INFO_PRCHS_AMT" IS '상품매입가격';
   COMMENT ON COLUMN "PROD_INFO"."PROD_INFO_NTSL_AMT" IS '상품판매가격';
   COMMENT ON COLUMN "PROD_INFO"."PROD_INFO_LDT" IS '상품리드타임';
   COMMENT ON COLUMN "PROD_INFO"."PROD_INFO_PLOR" IS '상품원산지';
   COMMENT ON COLUMN "PROD_INFO"."CMNCD_CD" IS '상품분류';
   COMMENT ON COLUMN "PROD_INFO"."PROD_INFO_YN" IS '상품판매여부';
   COMMENT ON COLUMN "PROD_INFO"."CNPT_ID" IS '거래처아이디';
--------------------------------------------------------
--  DDL for Table SCHDL
--------------------------------------------------------

  CREATE TABLE "SCHDL" 
   (	"SCHDL_ID" VARCHAR2(30 BYTE), 
	"SCHDL_NM" VARCHAR2(200 BYTE), 
	"SCHDL_STRT_DT" DATE, 
	"SCHDL_END_DT" DATE, 
	"BRNCOFC_ID" VARCHAR2(30 BYTE)
   ) ;

   COMMENT ON COLUMN "SCHDL"."SCHDL_ID" IS '일정아이디';
   COMMENT ON COLUMN "SCHDL"."SCHDL_NM" IS '일정명';
   COMMENT ON COLUMN "SCHDL"."SCHDL_STRT_DT" IS '일정시작일';
   COMMENT ON COLUMN "SCHDL"."SCHDL_END_DT" IS '일정종료일';
   COMMENT ON COLUMN "SCHDL"."BRNCOFC_ID" IS '일정해당지점';
--------------------------------------------------------
--  DDL for Table SLS
--------------------------------------------------------

  CREATE TABLE "SLS" 
   (	"SLS_ID" VARCHAR2(30 BYTE), 
	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"SLS_DT" DATE, 
	"SLS_AMT" NUMBER, 
	"PRC_AMT" NUMBER, 
	"NETINCOME" NUMBER
   ) ;

   COMMENT ON COLUMN "SLS"."SLS_ID" IS '매출아이디';
   COMMENT ON COLUMN "SLS"."BRNCOFC_ID" IS '지점아이디';
   COMMENT ON COLUMN "SLS"."SLS_DT" IS '매출발생일';
   COMMENT ON COLUMN "SLS"."SLS_AMT" IS '매출액';
   COMMENT ON COLUMN "SLS"."PRC_AMT" IS '입고된매입액';
   COMMENT ON COLUMN "SLS"."NETINCOME" IS '매출액-입고된매입액=순이익';
--------------------------------------------------------
--  DDL for Table STRE
--------------------------------------------------------

  CREATE TABLE "STRE" 
   (	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"STRE_SE" VARCHAR2(30 BYTE), 
	"STRE_GDS_CG" VARCHAR2(50 BYTE), 
	"CMNCD_CD" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "STRE"."BRNCOFC_ID" IS '지점아이디';
   COMMENT ON COLUMN "STRE"."STRE_SE" IS '매장섹션';
   COMMENT ON COLUMN "STRE"."STRE_GDS_CG" IS '매장상품카테고리';
--------------------------------------------------------
--  DDL for Table STRE_STCK
--------------------------------------------------------

  CREATE TABLE "STRE_STCK" 
   (	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"STRE_STCK_QTY" NUMBER, 
	"STRE_STCK_SFTY_QTY" NUMBER
   ) ;

   COMMENT ON COLUMN "STRE_STCK"."BRNCOFC_ID" IS '지점아이디';
   COMMENT ON COLUMN "STRE_STCK"."PROD_INFO_ID" IS '상품아이디';
   COMMENT ON COLUMN "STRE_STCK"."STRE_STCK_QTY" IS '매장재고수량';
   COMMENT ON COLUMN "STRE_STCK"."STRE_STCK_SFTY_QTY" IS '매장안전재고수';
--------------------------------------------------------
--  DDL for Table STRG_SHMT
--------------------------------------------------------

  CREATE TABLE "STRG_SHMT" 
   (	"STRG_SHMT_ID" NUMBER, 
	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"STRG_SHMT_QTY" NUMBER, 
	"STRG_SHMT_DT" DATE, 
	"BRNCOFC_ID_WR" VARCHAR2(30 BYTE)
   ) ;

   COMMENT ON COLUMN "STRG_SHMT"."STRG_SHMT_ID" IS '창고출고아이디';
   COMMENT ON COLUMN "STRG_SHMT"."BRNCOFC_ID" IS '출고지점아이디';
   COMMENT ON COLUMN "STRG_SHMT"."PROD_INFO_ID" IS '창고출고상품';
   COMMENT ON COLUMN "STRG_SHMT"."STRG_SHMT_QTY" IS '창고출고수량';
   COMMENT ON COLUMN "STRG_SHMT"."STRG_SHMT_DT" IS '창고출고날짜';
   COMMENT ON COLUMN "STRG_SHMT"."BRNCOFC_ID_WR" IS '입고지점아이디';
--------------------------------------------------------
--  DDL for Table STRG_STCK
--------------------------------------------------------

  CREATE TABLE "STRG_STCK" 
   (	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"STRG_STCK_QTY" NUMBER, 
	"STRG_STCK_SFTY_QTY" NUMBER, 
	"STRG_STCK_DFLT_QTY" NUMBER, 
	"STRG_STCK_YN" VARCHAR2(5 BYTE), 
	"STRG_STCK_ORDR_YN" VARCHAR2(5 BYTE)
   ) ;

   COMMENT ON COLUMN "STRG_STCK"."BRNCOFC_ID" IS '지점아이디';
   COMMENT ON COLUMN "STRG_STCK"."PROD_INFO_ID" IS '창고재고상품';
   COMMENT ON COLUMN "STRG_STCK"."STRG_STCK_QTY" IS '창고재고수량';
   COMMENT ON COLUMN "STRG_STCK"."STRG_STCK_SFTY_QTY" IS '창고안전재고수';
   COMMENT ON COLUMN "STRG_STCK"."STRG_STCK_DFLT_QTY" IS '창고기본보유수량';
   COMMENT ON COLUMN "STRG_STCK"."STRG_STCK_YN" IS '창고판매여부';
   COMMENT ON COLUMN "STRG_STCK"."STRG_STCK_ORDR_YN" IS '발주여부';
--------------------------------------------------------
--  DDL for Table STRG_WRHS
--------------------------------------------------------

  CREATE TABLE "STRG_WRHS" 
   (	"STRG_WRHS_ID" NUMBER, 
	"BRNCOFC_ID" VARCHAR2(30 BYTE), 
	"PROD_INFO_ID" VARCHAR2(30 BYTE), 
	"STRG_WRHS_QTY" NUMBER, 
	"STRG_WRHS_DT" DATE
   ) ;

   COMMENT ON COLUMN "STRG_WRHS"."STRG_WRHS_ID" IS '창고입고아이디';
   COMMENT ON COLUMN "STRG_WRHS"."BRNCOFC_ID" IS '지점아이디';
   COMMENT ON COLUMN "STRG_WRHS"."PROD_INFO_ID" IS '창고입고상품';
   COMMENT ON COLUMN "STRG_WRHS"."STRG_WRHS_QTY" IS '창고입고수량';
   COMMENT ON COLUMN "STRG_WRHS"."STRG_WRHS_DT" IS '창고입고날짜';
--------------------------------------------------------
--  DDL for Table TAX
--------------------------------------------------------

  CREATE TABLE "TAX" 
   (	"EMP_ID" VARCHAR2(20 BYTE), 
	"TAX101" NUMBER, 
	"TAX201" NUMBER, 
	"TAX202" NUMBER, 
	"TAX301" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table TTABLE
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "TTABLE" 
   (	"WORKSTTS_DT" DATE
   ) ON COMMIT PRESERVE ROWS ;
--------------------------------------------------------
--  DDL for Table WORKSTTS
--------------------------------------------------------

  CREATE TABLE "WORKSTTS" 
   (	"EMP_ID" VARCHAR2(100 BYTE), 
	"WORKSTTS_DT" DATE, 
	"WORKSTTS_BGNG_TM" VARCHAR2(20 BYTE), 
	"WORKSTTS_END_TM" VARCHAR2(20 BYTE), 
	"CMNCD_CD" VARCHAR2(20 BYTE), 
	"WORKSTTS_TM" NUMBER DEFAULT NULL, 
	"WORKSTTS_SC_TM" VARCHAR2(100 BYTE), 
	"WORKSTTS_CK" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "WORKSTTS"."EMP_ID" IS '직원아이디';
   COMMENT ON COLUMN "WORKSTTS"."WORKSTTS_DT" IS '출근날짜';
   COMMENT ON COLUMN "WORKSTTS"."WORKSTTS_BGNG_TM" IS '출근시간';
   COMMENT ON COLUMN "WORKSTTS"."WORKSTTS_END_TM" IS '퇴근시간';
   COMMENT ON COLUMN "WORKSTTS"."CMNCD_CD" IS '출근,조퇴,연차,외출 등';
   COMMENT ON COLUMN "WORKSTTS"."WORKSTTS_TM" IS '근무(시)간';
   COMMENT ON COLUMN "WORKSTTS"."WORKSTTS_SC_TM" IS '지정근무시간';
   COMMENT ON COLUMN "WORKSTTS"."WORKSTTS_CK" IS '업무상태';
--------------------------------------------------------
--  DDL for View V_TEST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_TEST" ("C1", "C2", "C3", "C4", "C5") AS 
  SELECT 
       ta.age_group, 
       ta.cust_gndr,
       tb.cmncd_cd,
       ta.cust_ntsl_qty,
       ta.cust_ntsl_amt
  FROM (SELECT  DISTINCT C.cust_id AS cust_id,
                C.cust_nm AS cust_nm,
                C.cust_mrg_yn AS cust_mrg_yn,
                C.cust_crcd_no AS cust_crcd_no,
                C.cust_gndr AS cust_gndr,
                C.cmncd_cd AS cmncd_cd,
                cn.cust_ntsl_id AS cust_ntsl_id,
                cn.brncofc_id AS brncofc_id,
                cn.cust_ntsl_qty AS cust_ntsl_qty,
                cn.cust_ntsl_amt AS cust_ntsl_amt,
               TRUNC((SELECT months_between(TRUNC(sysdate,'YEAR'),
                       TRUNC(TO_DATE(cust_brdt,'YYYY/MM/DD'),'YEAR')) /12 +1
                 FROM cust b WHERE C.cust_id=b.cust_id),-1) AS age_group
         FROM cust C ,cust b, cust_ntsl cn , prod_info pi , cmncd cc
        WHERE C.cust_id = b.cust_id
          AND b.cust_id = cn.cust_id) ta,
       (SELECT pi.cmncd_cd AS cmncd_cd,
               cn.cust_ntsl_id AS cust_ntsl_id
         FROM cmncd cc , cust_ntsl cn, prod_info pi
        WHERE pi.cmncd_cd = cc.cmncd_cd
          AND pi.prod_info_id = cn.prod_info_id
          AND cn.prod_info_id = pi.prod_info_id) tb   
 WHERE ta.cust_ntsl_id=tb.cust_ntsl_id
;
REM INSERTING into ALAM
SET DEFINE OFF;
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (46,'stockAlam','김진석','박연아','대전문화점','PROD00045','총괄(GE)','지점장','X','EMP00034','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (48,'stockAlam','김진석','최쿠라','대전문화점','PROD00045','총괄(GE)','지점장','X','EMP00033','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (62,'settlement','null','김설현','인천마계점','p','null','null','Y','EMP00001','null',to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (63,'settlement','김설현','김설현','대전문화점','p','재무(FM)','부장','Y','EMP00001','EMP00001',to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (64,'settlement','김설현','김설현','대전문화점','p','재무(FM)','부장','Y','EMP00001','EMP00001',to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (61,'settlement','김설현','김설현','인천마계점','p','재무(FM)','부장','Y','EMP00001','EMP00001',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (66,'settlement','김설현','김설현','대전문화점','p','재무(FM)','부장','X','EMP00001','EMP00001',to_date('2022/04/22','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (59,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (60,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (1,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (2,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (3,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (4,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (5,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (8,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (6,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (7,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (9,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (10,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (11,'settlement','null','김설현','null','p','null','null','Y','EMP00001','null',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (12,'settlement','김진석','김설현','대전문화점','p','총괄(GE)','지점장','Y','EMP00001','EMP00018',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (13,'settlement','null','김설현','null','p','null','null','Y','EMP00001','null',to_date('2022/04/16','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (29,'settlement','김설현','김설현','인천마계점','p','재무(FM)','부장','X','EMP00001','EMP00001',to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (31,'settlement','아쒸','김설현','대전문화점','p','관리(AD)','직원','X','EMP00001','EMP00012',to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (37,'stockAlam','김진석','이제훈','대전문화점','PROD00028','총괄(GE)','지점장','X','EMP00016','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (38,'stockAlam','김진석','최쿠라','대전문화점','PROD00028','총괄(GE)','지점장','X','EMP00033','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (40,'stockAlam','김진석','한소희','대전문화점','PROD00057','총괄(GE)','지점장','X','EMP00017','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (41,'stockAlam','김진석','이제훈','대전문화점','PROD00057','총괄(GE)','지점장','X','EMP00016','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (42,'stockAlam','김진석','최쿠라','대전문화점','PROD00057','총괄(GE)','지점장','X','EMP00033','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (44,'stockAlam','김진석','이제훈','대전문화점','PROD00045','총괄(GE)','지점장','X','EMP00016','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (45,'stockAlam','김진석','한소희','대전문화점','PROD00045','총괄(GE)','지점장','X','EMP00017','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (47,'stockAlam','김진석','김감자5','대전문화점','PROD00045','총괄(GE)','지점장','X','EMP00006','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (35,'stockAlam','김진석','박연아','대전문화점','PROD00047','총괄(GE)','지점장','X','EMP00034','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (36,'stockAlam','김진석','김감자5','대전문화점','PROD00028','총괄(GE)','지점장','X','EMP00006','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (51,'settlement','null','김설현','부산점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (52,'settlement','null','김설현','대전문화점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (53,'settlement','null','김설현','대전문화점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (54,'settlement','null','김설현','대전문화점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (55,'settlement','null','김설현','대전문화점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (49,'settlement','null','김설현','대전문화점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (50,'settlement','null','김설현','인천마계점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (56,'settlement','null','김설현','대전문화점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (57,'settlement','null','김설현','대전문화점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (58,'settlement','null','김설현','인천마계점','p','null','null','Y','EMP00001','null',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (65,'settlement','김설현','김설현','대전문화점','p','재무(FM)','부장','X','EMP00001','EMP00001',to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (34,'stockAlam','김진석','최쿠라','대전문화점','PROD00047','총괄(GE)','지점장','X','EMP00033','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (39,'stockAlam','김진석','박연아','대전문화점','PROD00028','총괄(GE)','지점장','X','EMP00034','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (43,'stockAlam','김진석','박연아','대전문화점','PROD00057','총괄(GE)','지점장','X','EMP00034','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (32,'stockAlam','김진석','김감자5','대전문화점','PROD00047','총괄(GE)','지점장','X','EMP00006','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into ALAM (ALAMNUM,TITLE,SENDER_NAME,RECEIVER_NAME,BRNCOFCNM,SHORTSTOCKNM,DPTOPT,LELOPT,RECEPTION_STATUS,RECEIVER_ID,SENDER_ID,ALAM_SEND_TIME,ALAM_RECEIVE_TIME) values (33,'stockAlam','김진석','이제훈','대전문화점','PROD00047','총괄(GE)','지점장','X','EMP00016','EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null);
REM INSERTING into ATCHFILE
SET DEFINE OFF;
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (11,'증사ㅏㅏKakaoTalk_20210412_162607419.jpg','1813575','22/03/18');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (18,'증명2.jpg','25604','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (27,'아이린 증사.jpg','30521','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (28,'슬기 증사.jpg','74664','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (29,'한소희 증사.jpg','58050','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (30,'아이유 증사.jpg','66032','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (31,'차은우 증사.jpg','16974','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (32,'설현 증사.jpg','67211','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (33,'설현 증사.jpg','67211','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (34,'이주빈 증사.jpg','39510','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (35,'이제훈 증사.jpg','76711','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (36,'이제훈 증사.jpg','76711','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (37,'김재욱 증사.jpg','41300','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (38,'카리나 증사.jpg','62979','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (39,'고윤정.jpg','57805','22/03/30');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (59,null,'0','22/04/12');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (12,'감자증ㅅ.png','37899','22/03/18');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (19,'메인2.JPG','16006','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (21,'Seul컴_태연_INVU_06.jpg','57763','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (22,'Seul컴_태연_INVU_06.jpg','57763','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (2,'고추장.JPG','11872','22/03/11');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (7,'강아지5.jpg','25884','22/03/11');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (9,'Seul컴_태연_INVU_11.jpg','85246','22/03/15');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (10,'Seul컴_태연_INVU_11.jpg','85246','22/03/15');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (14,'ㅍㅅ.jpg','147778','22/03/27');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (15,'Seul컴_태연_INVU_11.jpg','85246','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (16,'증명2.jpg','25604','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (54,'P1.JPG','47043','22/04/09');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (55,null,'0','22/04/12');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (56,null,'0','22/04/12');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (13,'감자증ㅅ.png','37899','22/03/26');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (17,'증명2.jpg','25604','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (20,'Seul컴_태연_INVU_06.jpg','57763','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (24,'Seul컴_태연_INVU_11.jpg','85246','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (25,'우렁이구조도.xlsx','48199','22/03/29');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (26,'Seul컴_태연_INVU_11.jpg','85246','22/03/29');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (60,null,'0','22/04/19');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (1,'P1235.jpg','75215','22/03/11');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (3,'chopa.jpg','34645','22/03/11');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (4,'바위_우.PNG','28326','22/03/11');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (5,'spongebob.png','535569','22/03/11');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (6,'image.2.jpg','20639','22/03/11');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (8,'옹기.jpg','41477','22/03/14');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (23,'매운고추.JPG','9796','22/03/28');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (40,'증1.JPG','15300','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (41,'증2.JPG','20306','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (42,'증3.JPG','18705','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (43,'증6.JPG','14202','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (44,'증5.JPG','15458','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (45,'증7.JPG','20487','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (46,'증9.JPG','41102','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (47,'증10.JPG','43697','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (48,'증11.JPG','37256','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (49,'증15.JPG','43528','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (50,'증13.JPG','48437','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (51,'증16.JPG','30456','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (52,'증14.JPG','44768','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (53,'증7.JPG','20487','22/04/08');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (57,null,'0','22/04/12');
Insert into ATCHFILE (ATCHFILE_ID,ATCHFILE_NM,ATCHFILE_SZ,ATCHFILE_DT) values (58,'고윤정.jpg','57805','22/04/12');
REM INSERTING into ATRZ
SET DEFINE OFF;
Insert into ATRZ (ATRZ_ID,EMP_ID,ATRZ_NM,ATRZ_DT,EATRZ_ID) values ('2022041100001','EMP00012','부장전결',to_date('2022/04/11','YYYY/MM/DD'),'ET2022032100001');
Insert into ATRZ (ATRZ_ID,EMP_ID,ATRZ_NM,ATRZ_DT,EATRZ_ID) values ('2022041100002','EMP00030','부장전결',to_date('2022/04/11','YYYY/MM/DD'),'ET2022032100001');
REM INSERTING into AUTHORITIES
SET DEFINE OFF;
Insert into AUTHORITIES (EMP_ID,AUTHORITY) values ('EMP00001','ROLE_ADMIN');
REM INSERTING into BRD
SET DEFINE OFF;
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (18,'sig','전기 안전사고 유의','변압기 근처에 가지 마세요 ','EMP00018',to_date('2022/04/12','YYYY/MM/DD'),0,'/resources/upload/2022/04/12/78d17438-688e-4fa2-bae1-00edcd49f45f-');
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (32,'공지','방역 해제 알림','실내 마스크 안쓰기 가능하므다.&nbsp;<img alt="" src="/resources/upload/2022/04/18/85894c98-7d90-493a-8060-a4d861a1543a-P1.JPG" style="border-style:solid; border-width:1px; height:100px; margin:1px; width:100px" /><br />
&nbsp;','EMP00015',to_date('2022/04/18','YYYY/MM/DD'),33,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (16,'sig','방역 안내','방역합니다.','EMP00018',to_date('2022/03/18','YYYY/MM/DD'),0,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (17,'sig','정전 안내','정전합니다.','EMP00018',to_date('2022/03/18','YYYY/MM/DD'),0,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (1,'공지','3/17일 안내','열일 부탁','EMP00014',to_date('2022/03/17','YYYY/MM/DD'),6,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (2,'공지','3/18일 안내','열일 부탁','EMP00014',to_date('2022/03/18','YYYY/MM/DD'),4,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (3,'공지','방역 강화 안내','열일 부탁','EMP00015',to_date('2022/03/19','YYYY/MM/DD'),10,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (4,'공지','확진시 메뉴얼 안내','열일 부탁','EMP00014',to_date('2022/03/20','YYYY/MM/DD'),5,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (5,'공지','재택 근무 신청 안내','열일 부탁','EMP00014',to_date('2022/03/21','YYYY/MM/DD'),0,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (6,'공지','매장 관리 안내','열일 부탁','EMP00014',to_date('2022/03/18','YYYY/MM/DD'),0,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (7,'공지','재고 관리 안내','열일 부탁','EMP00014',to_date('2022/03/25','YYYY/MM/DD'),0,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (8,'공지','거래처 지연 안내','열일 부탁','EMP00014',to_date('2022/03/18','YYYY/MM/DD'),3,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (13,'공지','인천점 위생점검 안내','식약처에서 위생점검이 왔습니다. 
식품분야 위생 점검 준비 부탁 드립니다. ','EMP00001',to_date('2022/04/12','YYYY/MM/DD'),12,'/resources/upload/2022/04/12/283182f3-b7ed-4612-8c93-5d2e27477a7a-');
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (14,'공지','대전점 정전사고 인력지원 요청','대전점에 정전사고 발생해서, 냉동식품을 급히 냉동탑차로 옮겨야 하니 다른지점 매장 인원들 지원 부탁드립니다.','EMP00001',to_date('2022/04/12','YYYY/MM/DD'),22,'/resources/upload/2022/04/12/3835d6af-f9bb-439a-bc84-73cef6ef1331-');
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (19,'공지','물류 창고 안내','<h2>이거바바라~<img alt="" src="/resources/upload/2022/04/13/761ee20d-a2c3-4b3e-9b17-15890a955530-차은우 증사.jpg" style="border-style:solid; border-width:1px; height:100px; margin:1px; width:100px" /><br />
이렇게 글쓸수깄다?<br />
개쩔쥬?<br />
개쩔져?<img alt="" src="/resources/upload/2022/04/13/ad4b5c29-6812-46d1-908c-f1ca7487d70a-P1.JPG" style="border-style:solid; border-width:1px; height:30px; margin:1px; width:30px" /></h2>
','EMP00014',to_date('2022/04/13','YYYY/MM/DD'),39,null);
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (10,'공지','qtqt','qtqt','EMP00014',to_date('2022/03/28','YYYY/MM/DD'),1,'/resources/upload/2022/03/28/62e87b8d-2a2f-417b-ab14-d8c24d52ed2a-Seul컴_태연_INVU_11.jpg');
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (11,'공지','첨부파일 공지','이믄디ㅏ','EMP00014',to_date('2022/03/29','YYYY/MM/DD'),4,'/resources/upload/2022/03/29/7a540d49-b710-4c5a-9b53-51194aaee324-우렁이구조도.xlsx');
Insert into BRD (BRD_ID,BRD_SE,BRD_TTL,BRD_CN,EMP_ID,BRD_DT,BRD_VI,BRD_IMG) values (9,'공지','tq','tqtqtq','EMP00014',to_date('2022/03/28','YYYY/MM/DD'),2,'/resources/upload/2022/03/28/8ec4fefa-0bf1-4d4d-8ddd-718a290bec43-매운고추.JPG');
REM INSERTING into BRD_RPL
SET DEFINE OFF;
REM INSERTING into BRNCOFC
SET DEFINE OFF;
Insert into BRNCOFC (BRNCOFC_ID,BRNCOFC_NM) values ('BRN00000','본사');
Insert into BRNCOFC (BRNCOFC_ID,BRNCOFC_NM) values ('BRN00003','부산점');
Insert into BRNCOFC (BRNCOFC_ID,BRNCOFC_NM) values ('BRN00002','인천마계점');
Insert into BRNCOFC (BRNCOFC_ID,BRNCOFC_NM) values ('BRN00001','대전문화점');
REM INSERTING into CALENDAR
SET DEFINE OFF;
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (30,'프로젝트 뒷풀이','드디어 프로젝트 끝~~~!',to_date('2022/04/27','YYYY/MM/DD'),to_date('2022/04/28','YYYY/MM/DD'),'보통','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (29,'프로젝트 뒷풀이','드디어 프로젝트 끝~~~!',to_date('2022/04/21','YYYY/MM/DD'),to_date('2022/04/22','YYYY/MM/DD'),'중요','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (24,'부산점 매장 출장','인사 검열 및 회계 검열',to_date('2022/04/01','YYYY/MM/DD'),to_date('2022/04/04','YYYY/MM/DD'),'중요','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (4,'프로젝트 끝','엔딩',to_date('2022/04/22','YYYY/MM/DD'),to_date('2022/04/22','YYYY/MM/DD'),'중요','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (17,'토익 시험 공부','800점이상을 목표로',to_date('2022/04/19','YYYY/MM/DD'),to_date('2022/04/19','YYYY/MM/DD'),'보통','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (16,'대전점 행사','행사일자는 11월 12부터 12월 30일까지',to_date('2022/04/12','YYYY/MM/DD'),to_date('2022/04/14','YYYY/MM/DD'),'낮음','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (23,'아침회의 주간','아침 7시부터 시작',to_date('2022/04/11','YYYY/MM/DD'),to_date('2022/04/15','YYYY/MM/DD'),'중요','EMP00005');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (26,'회사 동호회 모임','제주도 여행 ',to_date('2022/04/16','YYYY/MM/DD'),to_date('2022/04/17','YYYY/MM/DD'),'보통','EMP00033');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (31,'프로젝트 뒷풀이','드디어 프로젝트 끝~~~!',to_date('2022/04/28','YYYY/MM/DD'),to_date('2022/04/29','YYYY/MM/DD'),'보통','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (12,'인천점 부장님과 미팅','저녁 은행동에서',to_date('2022/04/13','YYYY/MM/DD'),to_date('2022/04/13','YYYY/MM/DD'),'보통','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (15,'ㅇㅇㅇㅇ','ㅇㅇㅇ',to_date('2022/04/05','YYYY/MM/DD'),to_date('2022/04/07','YYYY/MM/DD'),'중요','EMP00002');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (13,'취업특강','선생님과 함께하는 즐거운 시간',to_date('2022/04/05','YYYY/MM/DD'),to_date('2022/04/07','YYYY/MM/DD'),'보통','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (18,'gd','gdgd',to_date('2022/04/05','YYYY/MM/DD'),to_date('2022/04/08','YYYY/MM/DD'),'중요','EMP00018');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (25,'우리집 강아지 뭉치 생일','무슨 선물을 해야하나',to_date('2022/04/08','YYYY/MM/DD'),to_date('2022/04/08','YYYY/MM/DD'),'중요','EMP00033');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (27,'독서하기','기사 시험 준비',to_date('2022/04/11','YYYY/MM/DD'),to_date('2022/04/13','YYYY/MM/DD'),'낮음','EMP00033');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (2,'울산 출장','새로운 매장 조사로 출장',to_date('2022/04/04','YYYY/MM/DD'),to_date('2022/04/08','YYYY/MM/DD'),'보통','EMP00001');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (28,'PT 가기','다이어트는 언제나 필수 60kg는 멀지 않았다',to_date('2022/04/12','YYYY/MM/DD'),to_date('2022/04/15','YYYY/MM/DD'),'중요','EMP00033');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (6,'운동','등운동',to_date('2022/04/11','YYYY/MM/DD'),to_date('2022/04/15','YYYY/MM/DD'),'낮음','EMP00002');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (8,'휴식','ㅇㄹㅇㄹ',to_date('2022/04/17','YYYY/MM/DD'),to_date('2022/04/19','YYYY/MM/DD'),'보통','EMP00002');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (19,'너굴너굴','너구리',to_date('2022/04/11','YYYY/MM/DD'),to_date('2022/04/11','YYYY/MM/DD'),'보통','EMP00029');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (20,'프로젝트 발표','프로젝트 발표일!',to_date('2022/04/22','YYYY/MM/DD'),to_date('2022/04/22','YYYY/MM/DD'),'중요','EMP00029');
Insert into CALENDAR (CALENDAR_NO,TITLE,CONTENT,STARTDAY,ENDDAY,CATEGORY,USER_ID) values (22,'운동','감사합니다',to_date('2022/04/11','YYYY/MM/DD'),to_date('2022/04/15','YYYY/MM/DD'),'낮음','EMP00006');
REM INSERTING into CHAT
SET DEFINE OFF;
REM INSERTING into CMNCD
SET DEFINE OFF;
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A101','A1','본사','사장',null,null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A102','A1','본사','인사(PM)','부장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A103','A1','본사','인사(PM)','과장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A104','A1','본사','인사(PM)','대리',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A105','A1','본사','인사(PM)','사원',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A201','A2','지점','총괄(GE)','지점장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A202','A2','지점','관리(AD)','팀장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A203','A2','지점','관리(AD)','직원',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('B101','B1','고객등급','VIP',null,null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('B102','B1','고객등급','GOLD',null,null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('B103','B1','고객등급','SILVER',null,null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A501','A5','근태','정상',null,null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A502','A5','근태','연차',null,null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A503','A5','근태','지각',null,null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A504','A5','근태','조퇴',null,null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C101','C1','상품분류','패션','의류',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C102','C1','상품분류','패션','신발',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C103','C1','상품분류','패션','가방/지갑',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C104','C1','상품분류','패션','언더웨어/잠옷',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C105','C1','상품분류','패션','시계',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C106','C1','상품분류','패션','주얼리',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C107','C1','상품분류','패션','패션잡화/소품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C201','C2','상품분류','가구/인테리어','소파',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C202','C2','상품분류','가구/인테리어','침대/매트리스',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C203','C2','상품분류','가구/인테리어','드레스룸/행거',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C204','C2','상품분류','가구/인테리어','거실장/테이블',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C205','C2','상품분류','가구/인테리어','책상/책장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C206','C2','상품분류','가구/인테리어','의자',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C207','C2','상품분류','가구/인테리어','식탁/주방가구',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C208','C2','상품분류','가구/인테리어','선반/수납가구',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C209','C2','상품분류','가구/인테리어','아동가구',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C210','C2','상품분류','가구/인테리어','조명/스탠드',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C301','C3','상품분류','화장품/미용','스킨케어',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C302','C3','상품분류','화장품/미용','헤어케어',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C303','C3','상품분류','화장품/미용','바디케어',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C304','C3','상품분류','화장품/미용','향수',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C305','C3','상품분류','화장품/미용','클렌징',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C306','C3','상품분류','화장품/미용','뷰티소품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C307','C3','상품분류','화장품/미용','베이스메이크업',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C308','C3','상품분류','화장품/미용','색조메이크업',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C309','C3','상품분류','화장품/미용','마스크/팩',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C310','C3','상품분류','화장품/미용','네일케어',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C311','C3','상품분류','화장품/미용','선케어',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C312','C3','상품분류','화장품/미용','남성화장품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C313','C3','상품분류','화장품/미용','비건',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C401','C4','상품분류','식품','건강식품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C402','C4','상품분류','식품','농산물',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C403','C4','상품분류','식품','축산',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C404','C4','상품분류','식품','수산물',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C405','C4','상품분류','식품','반찬',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C406','C4','상품분류','식품','김치',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C407','C4','상품분류','식품','라면/면류',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C408','C4','상품분류','식품','가공식품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C409','C4','상품분류','식품','음료',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C410','C4','상품분류','식품','유가공품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C411','C4','상품분류','식품','냉동/간편조리',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C501','C5','상품분류','출산/유아동','분유',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C502','C5','상품분류','출산/유아동','기저귀',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C503','C5','상품분류','출산/유아동','물티슈',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C504','C5','상품분류','출산/유아동','이유식/유아간식',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C505','C5','상품분류','출산/유아동','이유식용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C506','C5','상품분류','출산/유아동','수유용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C507','C5','상품분류','출산/유아동','유모차/왜건',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C508','C5','상품분류','출산/유아동','카시트',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C509','C5','상품분류','출산/유아동','아기띠/외출용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C510','C5','상품분류','출산/유아동','목욕/스킨케어',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C511','C5','상품분류','출산/유아동','위생/건강/세제',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C512','C5','상품분류','출산/유아동','매트/안전용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C513','C5','상품분류','출산/유아동','유아가구',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C514','C6','상품분류','반려동물용품','강아지용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C601','C6','상품분류','반려동물용품','고양이용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C602','C6','상품분류','반려동물용품','기타반려동물용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C603','C6','상품분류','반려동물용품','조류용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C604','C6','상품분류','반려동물용품','햄스터용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C605','C6','상품분류','반려동물용품','토끼용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C606','C6','상품분류','반려동물용품','고슴도치용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C607','C6','상품분류','반려동물용품','관상어용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C701','C7','상품분류','생활/주방용품','주방용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C702','C7','상품분류','생활/주방용품','생활용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C703','C7','상품분류','생활/주방용품','욕실용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C704','C7','상품분류','생활/주방용품','수납/정리용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C705','C7','상품분류','생활/주방용품','청소용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C706','C7','상품분류','생활/주방용품','구강위생용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C707','C7','상품분류','생활/주방용품','보안용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C708','C7','상품분류','생활/주방용품','세탁용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C801','C8','상품분류','가전','TV',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C802','C8','상품분류','가전','청소기',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C803','C8','상품분류','가전','냉장고',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C804','C8','상품분류','가전','계절가전',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C805','C8','상품분류','가전','세탁기/건조기',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C806','C8','상품분류','가전','주방가전',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C807','C8','상품분류','가전','이미용가전',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C808','C8','상품분류','가전','욕실가전',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C809','C8','상품분류','가전','영상가전',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C810','C8','상품분류','가전','생활가전',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C811','C8','상품분류','가전','펫가전',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C907','C9','상품분류','디지털','태블릿PC',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C901','C9','상품분류','디지털','음향기기',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C902','C9','상품분류','디지털','스마트워치',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C903','C9','상품분류','디지털','게이밍',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C904','C9','상품분류','디지털','휴대폰',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C905','C9','상품분류','디지털','카메라',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C906','C9','상품분류','디지털','1인방송/촬영',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1001','C10','상품분류','컴퓨터','노트북',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1002','C10','상품분류','컴퓨터','데스크탑',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1003','C10','상품분류','컴퓨터','모니터',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1004','C10','상품분류','컴퓨터','복합기/프린터',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1005','C10','상품분류','컴퓨터','키보드/마우스',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1006','C10','상품분류','컴퓨터','주변기기',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1007','C10','상품분류','컴퓨터','저장장치',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1008','C10','상품분류','컴퓨터','소프트웨어',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1009','C10','상품분류','컴퓨터','부품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1101','C11','상품분류','스포츠/레저','캠핑',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1102','C11','상품분류','스포츠/레저','등산/아웃도어',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1103','C11','상품분류','스포츠/레저','골프',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1104','C11','상품분류','스포츠/레저','자전거',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1105','C11','상품분류','스포츠/레저','홈트레이닝',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1106','C11','상품분류','스포츠/레저','낚시',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1107','C11','상품분류','스포츠/레저','퍼스널모빌리티',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1108','C11','상품분류','스포츠/레저','배드민턴',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1109','C11','상품분류','스포츠/레저','테니스',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1110','C11','상품분류','스포츠/레저','족구',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1111','C11','상품분류','스포츠/레저','볼링',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1112','C11','상품분류','스포츠/레저','축구',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1201','C12','상품분류','건강/의료용품','건강관리용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1202','C12','상품분류','건강/의료용품','마스크',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1203','C12','상품분류','건강/의료용품','손소독제',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1204','C12','상품분류','건강/의료용품','안마용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1205','C12','상품분류','건강/의료용품','건강측정용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1206','C12','상품분류','건강/의료용품','의료용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1207','C12','상품분류','건강/의료용품','발건강용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1000','C10','상품분류','컴퓨터',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C100','C1','상품분류','패션',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1100','C11','상품분류','스포츠/레저',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1200','C12','상품분류','건강/의료용품',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1300','C13','상품분류','자동차/공구',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1400','C14','상품분류','취미/문구/악기',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1500','C15','상품분류','도서',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C200','C2','상품분류','가구/인테리어',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C300','C3','상품분류','화장품/미용',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C400','C4','상품분류','식품',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C500','C5','상품분류','출산/유아동',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C600','C6','상품분류','반려동물용품',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C700','C7','상품분류','생활/주방용품',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C800','C8','상품분류','가전',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C900','C9','상품분류','디지털',null,null,null);
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1208','C12','상품분류','건강/의료용품','재활운동용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1209','C12','상품분류','건강/의료용품','족욕/좌훈용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1210','C12','상품분류','건강/의료용품','실버용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1211','C12','상품분류','건강/의료용품','냉온/찜질용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1212','C12','상품분류','건강/의료용품','눈건강용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1301','C13','상품분류','자동차/공구','타이어/휠',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1302','C13','상품분류','자동차/공구','공구',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1303','C13','상품분류','자동차/공구','자동차용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1304','C13','상품분류','자동차/공구','자동차기기',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1305','C13','상품분류','자동차/공구','겨울용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1401','C14','상품분류','취미/문구/악기','원예용품/식물',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1402','C14','상품분류','취미/문구/악기','수집품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1403','C14','상품분류','취미/문구/악기','문구/사무용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1404','C14','상품분류','취미/문구/악기','화방용품',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1501','C15','상품분류','도서','소설',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1502','C15','상품분류','도서','시/에세이',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1503','C15','상품분류','도서','경제/경영',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1504','C15','상품분류','도서','자기계발',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1505','C15','상품분류','도서','인문',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1506','C15','상품분류','도서','역사',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1507','C15','상품분류','도서','사회/정치',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1508','C15','상품분류','도서','자연/과학',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1509','C15','상품분류','도서','예술/대중문화',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1510','C15','상품분류','도서','종교',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1511','C15','상품분류','도서','유아',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1512','C15','상품분류','도서','어린이',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('C1513','C15','상품분류','도서','청소년',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A106','A1','본사','기획(PL)','부장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A107','A1','본사','기획(PL)','과장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A108','A1','본사','기획(PL)','대리',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A109','A1','본사','기획(PL)','사원',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A110','A1','본사','영업(BU)','부장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A111','A1','본사','영업(BU)','과장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A112','A1','본사','영업(BU)','대리',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A113','A1','본사','영업(BU)','사원',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A114','A1','본사','물류(DT)','부장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A115','A1','본사','물류(DT)','과장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A116','A1','본사','물류(DT)','대리',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A117','A1','본사','물류(DT)','사원',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A204','A2','지점','창고(WM)','팀장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A205','A2','지점','창고(WM)','직원',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A206','A2','지점','매장(SM)','팀장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A207','A2','지점','매장(SM)','직원',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A118','A1','본사','재무(FM)','부장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A119','A1','본사','재무(FM)','과장',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A120','A1','본사','재무(FM)','대리',null,'Y');
Insert into CMNCD (CMNCD_CD,CMNCD_GU_CD,CMNCD_GU_NM,CMNCD_NM1,CMNCD_NM2,CMNCD_OPT1,CMNCD_YN) values ('A121','A1','본사','재무(FM)','사원',null,'Y');
REM INSERTING into CNPT
SET DEFINE OFF;
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0001','농심이','02-1234-1234','nogsim@naver.com',1232,'서울시','용산구','카카오뱅크','567856785679','(주)농심ㅎ','김농심씨','N','132-15-15123','박준','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0002','삼양','02-2345-3456','samyang@naver.com',2345,'서울시','구로구 구로동','신한은행','234523452311','(주)삼양','이삼양','Y','426-45-75611','송자량','개인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0003','팔도','02-3456-3456','paldo@naver.com',3456,'서울시','강북구','농협은행','345634563456','(주)팔도','박팔도','Y','426-455-45545','고정완','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0004','오뚜기','02-4567-4567','ottugi@naver.com',4567,'서울시','강남구','우체국은행','456745674567','(주)오뚜기','오뚝이','Y','455-45-45555','황성만','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0006','CJ제일제당','02-2356-3467','jeiljedang@cjcjcj.com',3414,'서울시','강남구','국민은행','239585-28-48989','CJ제일제당','시제제','Y','034-35-56624','박재진','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0005','(주)삼성가전','010-1234-1251','samsung@samsung.com',34611,'대전 동구 우암로 133','주공삼성타운아파트','기업은행','12345-12151315','(주)삼성전자','삼성담','Y','125-45-45646','이재용','법인','C800');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0024','살림백서','02-4381-4873','salim@salrim.com',15764,'서울시 강남구','테헤란로 142 아크플레이스 17층','신한은행','235-451-11122','살림백서','김민대','Y','367-35-67313','이보명','법인','C700');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0025','마와','02-2216-3415','mawa@mawa.com',86614,'서울시 동대문구','한천로11길 6 미주빌딩 1층 101호','우리은행','23-1741-91027','마와','최시원','Y','724-97-36752','신동희','법인','C700');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0026','유한양행','02-507-7582','uhan@uhan.com',43521,'경기 과천시','별양상가1로 30 골든타워 4층 402호','하나은행','910-271-29845','유한양행','이명환','Y','598-23-83964','이명환','법인','C700');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0027','트라몬티나','032-812-8480','trnadkj@roks.com',39759,'인천 남동구','은청로 4-19','신협','127-53-74681','트라몬티나','조민아','Y','598-23-83964','신민서','법인','C700');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0028','오브바이포','063-262-7771','ovbyfor@ovbyo.com',65791,'전북 완주군','봉동읍 봉동동서로 75','NH농협은행','27-5153-7101','오브바이포','손하리','Y','140-33-50964','임주연','법인','C600');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0029','마이펫닥터','02-2038-7379','mypet@doctor.com',4528,'서울 중구','남대문로 2','신한은행','947-21-74601','마이펫닥터','문리원','Y','507-12-49111','소지원','법인','C600');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0030','일동후디스','02-2192-1700','ildong@hoodi.com',4511,'서울 중구','통일로2길 16 AIA타워 2층','하나은행','982-65-826301','일동후디스','박지훈','Y','106-18-70647','박지훈','법인','C500');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0032','아모레퍼시픽','02-716-6114','amore@amore.com',70647,'서울 강서구','마곡중앙1로 20 M시그니처 7층','국민은행','301-58-92173','아모레퍼시픽','황민호','Y','647-18-28448','문가영','법인','C300');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0031','하기스','02-761-1207','hagiseu@haaa.com',49111,'서울 영등포구','여의공원로 101','우리은행','601-34-81003','하기스','김영광','Y','171-09-12388','홍지현','법인','C500');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0033','미쟝센','02-1934-5870','mimi@jangsen.com',81003,'서울 관악구','봉천로 209 2층','하나은행','5498-334-17349','미쟝센','김용국','Y','455-51-59450','김태동','법인','C300');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0034','랑콤','02-2159-4568','rang@com.com',92173,'서울 서초구','강남대로65길 1','신한은행','015-79-65803','랑콤','유연수','Y','154-12-06554','유연수','법인','C300');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0035','이니스프리','02-0358-0484','inisfree@inisfree.com',8708,'서울 금천구','벚꽃로 278 1층','국민은행','265-45-42052','이니스프리','전소연','Y','109-57-14871','전소미','법인','C300');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0036','요시고','02-3810-3927','yosigo@yosigo.com',49864,'서울 강북구','도봉로 356 4층','하나은행','485-71-87118','요시고','이채영','Y','433-08-17550','노지선','법인','C200');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0037','ACE','02-1834-7135','ace@tace.com',71894,'서울 서초구','강남대로 369 15층','신한은행','863-98-74138','ACE','이가현','Y','415-63-87198','김지유','법인','C200');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0038','팩토리나인','02-103-8719','factorynine@factorynine.com',78710,'서울 금천구','해마로 1239 1층','국민은행','37-83274-019','팩토리나인','조미연','Y','629-31-93842','김민니','법인','C1500');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0039','허블','02-8271-8372','heoble@heoble.com',84712,'경기 부천시','소사로819번길 33','우리은행','1298-37-9273','허블','이정환','Y','756-38-19238','신혜성','법인','C1500');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0040','해선생','054-281-2222','hssmall@naver.com',37930,'경북 포항시 남구 구룡포읍 일출로332번길 95-17','꼼꼼깐깐 해선생','국민은행','93759854390','김부강','김부강','Y','656-87-01235','김부강','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0041','스윗밸런스','031-3474-1256','sweetbalance@naver.com',13403,'경기 성남시 중원구 둔촌대로388번길 20','상대원동','기업은행','456723643453','장지만','장지만','Y','397-85-00686','이운성','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0042','마니커','031-281-5300','dkswjddnjs@naver.com',11121,'경기 포천시 일동면 영일로 665-1','경기도 포천시 일동면 영일로 665-1','기업은행','43674567456','안정원','안정원','Y','127-86-26084','안정원','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0043','하림','062-860-2114','rlaghdrnr@naver.com',54517,'전북 익산시 망성면 망성로 14','(주)하림','기업은행',null,null,'김홍국','Y','403-81-61113','이강수','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0044','한돈','02-417-5712','qkrwotjd@naver.com',6740,'서울 서초구 논현로31길 23','썬빌리지','기업은행','2345457546','박재성','박재성','Y','211-88-35505','박재성','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0045','서울우유','080-021-5656','answlstjq@naver.com',2118,'서울 중랑구 중랑천로 71','서울특별시 중랑구 중랑천로 71','기업은행','4674567','문진섭','문진섭','Y','216-82-00028','문진섭','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0046','청정원','080-019-9119','dlawjdqo@naver.com',3130,'서울 종로구 창경궁로 120','종로플레이스','기업은행','674567456745','임정배','임정배','Y','109-81-14886','임정배','법인','C400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0010','(주)아모스','02-3452-0553','2eun211@naver.com',18487,'경기 화성시 동탄산단5길 42','(주)아모스','우리은행','125-7778241','아모스','이은지','Y','124-86-74646','이은성','법인','C1400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0008','(주)LG가전','02-7858-7845','googwan12@naver.com',7336,'서울 영등포구 여의도동 20','LG트윈타워 서관 14층','하나은행','788559-0-589741','LG','구관우','Y','145-58-45789','구광모, 권봉석','법인','C800');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0009','(주)텐바이텐','010-8745-9856','eunsoo54@gmail.com',3082,'서울 종로구 대학로 57','홍익대학교대학로캠퍼스 교육동 14층','국민은행','145-88-145012','텐바이텐','최은수','Y','211-87-00620','최은희','법인','C1400');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0011','(주)불스원','02-2106-7850','hoon15655@hotmail.com',6210,'서울 강남구 테헤란로 306','카이트타워 6층 (주)불스원','외환은행','144-85-785412','불스원','이경훈','Y','220-86-07635','이장훈','법인','C1300');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0012','(주)비젼코베아','1588-5515','jinjin5521@naver.com',21072,'인천 계양구 서운산단로1길 87','KOVEA','우리은행','25-854-14523','코베아','박수진','Y','130-81-77468',' 김상현','법인','C1100');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0013','(주)삼성Digital','010-1234-1251','samsung@samsung.com',34611,'대전 동구 우암로 133','주공삼성타운아파트','기업은행','12345-12151315','(주)삼성전자','사성담','Y','125-45-45646','이재용','법인','C900');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0014','(주)LGDigital','02-7858-7845','googwan12@naver.com',7336,'서울 영등포구 여의도동 20','LG트윈타워 서관 14층','하나은행','788559-0-589741','LG','구관우','Y','145-58-45789','구광모, 권봉석','법인','C900');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0015','(주)삼성전자','010-1234-1251','samsung@samsung.com',34611,'대전 동구 우암로 133','주공삼성타운아파트','기업은행','12345-12151315','(주)삼성전자','삼성담','Y','125-45-45646','이재용','법인','C1000');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0016','(주)LG전자','02-7858-7845','googwan12@naver.com',7336,'서울 영등포구 여의도동 20','LG트윈타워 서관 14층','하나은행','788559-0-589741','LG','구관우','Y','145-58-45789','구광모, 권봉석','법인','C1000');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0017','삼성물산(주)패션부문','1599-0007 ','hoo52215@naver.com',6292,'서울 강남구 남부순환로 2806','군인공제회관','국민은행','521-85-47854','삼성물산','김경호','Y','101-85-43600','고정석','법인','C100');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0018','㈜신세계인터내셔날',' 1644-4490','tndyd5214@naver.com',6015,'서울 강남구 도산대로 449','SI CHEONGDAM','기업은행','5256-44582','JAJU','신수용','Y',' 201-81-53657','이길한','법인','C100');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0019','신성통상(주)','1600-3424','hwang123@naver.com',5364,'서울 강동구 풍성로63길 84','신성빌딩','농협','521-2485-4515','탑텐','황대혁','Y','104-81-01106','황대규','법인','C100');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0020','한국캘러웨이골프(유)','02)3218-1900','sangsang5214@gmail.com',6062,'서울 강남구 도산대로 414','한성청담빌딩 4층(AS센터) 6층','씨티은행','521-55-8965','캘러웨이','이상훈','Y','101-81-44519','이상현','법인','C1100');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0021','(주)하나로상사','1577-9717','hanaro7080@naver.com',16823,'경기 용인시 수지구 동천로 65','(주)하나로상사','기업은행','488-037196-01-021','(주)하나로상사','조철민','Y','142-81-27016','김경원','법인','C1100');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0022','㈜세라젬','1577-5570','serajem1212@naver.com',6142,'서울 강남구 테헤란로 231','센터필드 WEST동 10-11층','수협','521-854-4521','세라젬','김영훈','Y','139-81-37459','이경수','법인','C1200');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0023','(주)그린제약','02-842-1301 ','greenmedi22@naver.com',4526,'서울 중구 남대문로1길 49','계동빌딩 4층','우리은행','415-85-8552','그린제약','손현수','Y','301-81-12878','홍준표','법인','C1200');
Insert into CNPT (CNPT_ID,CNPT_NM,CNPT_TEL,CNPT_MAIL,CNPT_ZIP,CNPT_ADDR,CNPT_DADDR,CNPT_BANK_NM,CNPT_ACTNO,CNPT_ACTNM,CNPT_CHARGER,CNPT_YN,CNPT_BRNO,CNPT_RPRSV_NM,CNPT_SE,CMNCD_CD) values ('CNPT0007','목우촌','02-2224-8800','mockuchone@gmail.com',5398,'서울 강동구 올림픽로 528','농협서울지역본부','기업은행','93759854390','정종대','정종대','Y','215-86-87597','정종대','법인','C400');
REM INSERTING into CNPT_GDS
SET DEFINE OFF;
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00010001','CNPT0001','신라면',700);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00010002','CNPT0001','오징어짬뽕',710);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00010003','CNPT0001','안성탕면',720);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00020001','CNPT0002','삼양라면',730);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00020002','CNPT0002','붉닭볶음면',740);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00020003','CNPT0002','불닭까르보',750);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00030001','CNPT0003','팔도비빔면',760);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00030002','CNPT0003','팔도네넴띤',770);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00030003','CNPT0003','왕뚜껑',780);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00040001','CNPT0004','진라면매운맛',790);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00040002','CNPT0004','진라면순한맛',800);
Insert into CNPT_GDS (CNPT_GDS_CD,CNPT_ID,CNPT_GDS_NM,CNPT_GDS_AMT) values ('CNPT00040003','CNPT0004','열라면',810);
REM INSERTING into CUST
SET DEFINE OFF;
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203150005','박시은','010-1234-1456','qkerew123@naver.com',215412,'Artisanal kale','Artisanal kale',to_date('1981/01/03','YYYY/MM/DD'),'Y','일반','10003254560','F','Y','B102');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203150006','장예은','010-1458-8569','qkerew123@naver.com',215412,'Artisanal kale','Artisanal kale',to_date('1970/03/02','YYYY/MM/DD'),'Y','일반','10003254560','M','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203140001','김진석','01095597851','pooyttl@naver.com',123123,'대전','중구',to_date('1991/10/05','YYYY/MM/DD'),'N','일반','1234-1234','M','Y','B102');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203140002','김진호','010-1234-1456','qkerew123@naver.com',215412,'Artisanal kale 2222','Artisanal kalesfsd',to_date('1960/03/02','YYYY/MM/DD'),'N','일반','10003254560','M','Y','B102');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204070001','박시은','010-1458-8569','qkrwldms1403@naver.com',2570,'서울 동대문구 약령동길 17','기업은행 2층',to_date('1986/10/14','YYYY/MM/DD'),'N','일반','12541256325','M','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203170001','김동헌','010-1257-8548','asd23@naver.com',63275,'제주특별자치도 제주시 가령골길 1-1','기업은행 2층',to_date('2010/12/11','YYYY/MM/DD'),'N','일반','1524521','M','N','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203280001','윤세은','010-1458-8544','qkrwldms1403@naver.com',2236,'서울 중랑구 면목천로 33','대림동코오롱아파트 102동',to_date('1985/06/26','YYYY/MM/DD'),'N','일반','12541256325','F','N','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203280002','심자윤','010-8549-9666','qkrwldms1403@nate.com',48210,'부산 수영구 망미배산로 2','기업은행 2층',to_date('1992/10/01','YYYY/MM/DD'),'Y','일반','10245862','M','N','B102');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204120001','김진호','010-1458-8569','asd23@naver.com',8103,'서울 양천구 안양천로 669','복지신정충전소',to_date('1998/06/24','YYYY/MM/DD'),'Y','탈퇴','12541256325','M','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204180001','김은지','010-3458-1458','eunj111@naver.com',39626,'경북 김천시 가메실길 2','대림동코오롱아파트 102동',to_date('1984/10/25','YYYY/MM/DD'),'N','휴면','12012-85411-44','F','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203180001','박시은','010-1458-2589','asd23@naver.com',5573,'서울 송파구 도곡로 438','GS칼텍스 아시아주유소',to_date('1984/10/25','YYYY/MM/DD'),'N','일반',null,'F','N','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203180002','진동민','010-0441-0258','asdf12@naver.com',2477,'서울 동대문구 약령시로 1-1','구두수선대',to_date('1993/10/19','YYYY/MM/DD'),'Y','일반','1524521','M','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203180003','이채영','010-1458-7458','asdf12@naver.com',2494,'서울 동대문구 망우로 16','김제지평선장학숙',to_date('1986/06/17','YYYY/MM/DD'),'N','일반',null,'F','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203180004','김동영','010-7859-9632','asdf12@naver.com',6921,'서울 동작구 만양로1길 3','라랄라라라랄',to_date('1997/09/23','YYYY/MM/DD'),'N','일반','12541256325','M','N','B102');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204180002','이주희','010-2547-6852','zoozoo23@naver.com',8386,'서울 구로구 구로동로 2','현대자동차AS센타 2층',to_date('1996/08/20','YYYY/MM/DD'),'Y','휴면',null,'F','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204180003','손지훈','010-8457-1403','jihoon121@naver.com',48093,'부산 해운대구 동백로 23','현대아쿠아팰리스동백섬2호',to_date('1979/07/24','YYYY/MM/DD'),'N','휴면','2514-25-14500','M','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204180004','손현수','010-8547-1425','sososo11@naver.com',39697,'경북 김천시 대덕면 가례길 46-5','본관',to_date('1992/03/09','YYYY/MM/DD'),'N','탈퇴','1201-854-44','M','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204180005','김은성','010-2541-1458','skdmstjd22@naver.com',39649,'경북 김천시 갈대고개길 12-8','법무아파트',to_date('1998/04/18','YYYY/MM/DD'),'N','탈퇴','254-85-14500','M','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204180006','이주연','010-5214-8520','wndus1234@naver.com',34335,'대전 대덕구 갑천도시고속도로 717','동양산업(주)',to_date('2001/08/20','YYYY/MM/DD'),'N','탈퇴','142-52-14520','F','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204180007','조하영','010-5214-8569','younggk2233@naver.com',8745,'서울 관악구 중앙1나길 9-4','기업은행 2층',to_date('1995/08/16','YYYY/MM/DD'),'N','탈퇴',null,'F','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204180008','장유진','010-8247-8212','dbwls123@naver.com',63275,'제주특별자치도 제주시 가령골길 1','크래프톤타워 1층',to_date('1988/06/28','YYYY/MM/DD'),'Y','탈퇴',null,'F','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203150001','최현석','010-1234-1456','qkerew123@naver.com',215412,'Artisanal kale111','Artisanal kalesfsd',to_date('1950/02/01','YYYY/MM/DD'),'Y','일반','10003254560','F','Y','B101');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203160001','박정우','010-1234-1456','qkerew123@naver.com',63503,'제주특별자치도 서귀포시 대정읍 대한로 632','대림동코오롱아파트 102동',to_date('1987/06/18','YYYY/MM/DD'),'Y','일반','10003254560','F','Y','B101');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203150003','김소진','010-1458-8569','qkerew123@naver.com',215412,'Artisanal kale111','Artisanal kalesfsd',to_date('2000/02/11','YYYY/MM/DD'),'N','일반','10003254560','M','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202203150004','노지선','010-1458-7856','qkerew123@naver.com',215412,'Artisanal kale 2222','Artisanal kalesfsd',to_date('1999/02/02','YYYY/MM/DD'),'N','일반','10003254560','F','Y','B103');
Insert into CUST (CUST_ID,CUST_NM,CUST_TEL,CUST_MAIL,CUST_ZIP,CUST_ADDR,CUST_DADDR,CUST_BRDT,CUST_MRG_YN,CUST_STTS,CUST_CRCD_NO,CUST_GNDR,CUST_MKT_RCPTN_AGRE_YN,CMNCD_CD) values ('202204070002','박지훈','010-1458-7856','qkrwldms1403@nate.com',30100,'세종특별자치시 아름남1길 8','기업은행 2층',to_date('2000/05/16','YYYY/MM/DD'),'N','일반','12541256325','M','Y','B103');
REM INSERTING into CUST_NTSL
SET DEFINE OFF;
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6496,'BRN00002','202204120001','PROD00028',to_date('2022/04/20','YYYY/MM/DD'),20500,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6497,'BRN00002','202204120001','PROD00014',to_date('2022/04/20','YYYY/MM/DD'),960000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6498,'BRN00001','202203150005','PROD00115',to_date('2022/04/20','YYYY/MM/DD'),3750,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6499,'BRN00001','202203180003','PROD00082',to_date('2022/04/20','YYYY/MM/DD'),70000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6500,'BRN00001','202204070002','PROD00127',to_date('2022/04/20','YYYY/MM/DD'),2000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6501,'BRN00001','202204070002','PROD00119',to_date('2022/04/20','YYYY/MM/DD'),800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6502,'BRN00002','202203170001','PROD00042',to_date('2022/04/20','YYYY/MM/DD'),161400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6503,'BRN00003','202203150001','PROD00057',to_date('2022/04/20','YYYY/MM/DD'),2810,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6504,'BRN00003','202203180004','PROD00049',to_date('2022/04/20','YYYY/MM/DD'),17190,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6505,'BRN00003','202203280002','PROD00073',to_date('2022/04/20','YYYY/MM/DD'),34500,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6506,'BRN00003','202204070001','PROD00140',to_date('2022/04/20','YYYY/MM/DD'),23600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6507,'BRN00003','202203180001','PROD00088',to_date('2022/04/20','YYYY/MM/DD'),30080,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6508,'BRN00002','202203150005','PROD00002',to_date('2022/04/20','YYYY/MM/DD'),1820,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6509,'BRN00002','202203150004','PROD00114',to_date('2022/04/20','YYYY/MM/DD'),1400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6510,'BRN00002','202203180001','PROD00014',to_date('2022/04/20','YYYY/MM/DD'),720000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6511,'BRN00002','202204070001','PROD00033',to_date('2022/04/20','YYYY/MM/DD'),59000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6512,'BRN00002','202203140001','PROD00123',to_date('2022/04/20','YYYY/MM/DD'),56000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6513,'BRN00001','202203280002','PROD00117',to_date('2022/04/20','YYYY/MM/DD'),3200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6514,'BRN00003','202204070001','PROD00020',to_date('2022/04/20','YYYY/MM/DD'),2000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6515,'BRN00002','202204070002','PROD00091',to_date('2022/04/20','YYYY/MM/DD'),17952000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6516,'BRN00001','202203180004','PROD00137',to_date('2022/04/20','YYYY/MM/DD'),69000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6517,'BRN00001','202203170001','PROD00044',to_date('2022/04/20','YYYY/MM/DD'),378000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6518,'BRN00002','202203280001','PROD00108',to_date('2022/04/20','YYYY/MM/DD'),26000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6519,'BRN00002','202203180004','PROD00069',to_date('2022/04/20','YYYY/MM/DD'),3596000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6520,'BRN00001','202203150003','PROD00020',to_date('2022/04/20','YYYY/MM/DD'),4000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6607,'BRN00001','202203180001','PROD00117',to_date('2022/04/20','YYYY/MM/DD'),4000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6608,'BRN00003','202204120001','PROD00054',to_date('2022/04/20','YYYY/MM/DD'),65000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6609,'BRN00001','202203160001','PROD00043',to_date('2022/04/20','YYYY/MM/DD'),23200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6610,'BRN00001','202203180003','PROD00128',to_date('2022/04/20','YYYY/MM/DD'),33000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6611,'BRN00002','202203180003','PROD00055',to_date('2022/04/20','YYYY/MM/DD'),87400,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6612,'BRN00002','202203280002','PROD00115',to_date('2022/04/20','YYYY/MM/DD'),2500,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6613,'BRN00002','202203150006','PROD00108',to_date('2022/04/20','YYYY/MM/DD'),65000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6614,'BRN00001','202203180002','PROD00041',to_date('2022/04/20','YYYY/MM/DD'),21000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6615,'BRN00001','202203180004','PROD00004',to_date('2022/04/20','YYYY/MM/DD'),930,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6616,'BRN00001','202203180003','PROD00001',to_date('2022/04/20','YYYY/MM/DD'),2700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6617,'BRN00002','202203150005','PROD00097',to_date('2022/04/20','YYYY/MM/DD'),17100,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6618,'BRN00002','202203150004','PROD00118',to_date('2022/04/20','YYYY/MM/DD'),5600,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6619,'BRN00002','202203150005','PROD00058',to_date('2022/04/20','YYYY/MM/DD'),75000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6620,'BRN00003','202203180003','PROD00018',to_date('2022/04/20','YYYY/MM/DD'),1100000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6621,'BRN00003','202203150001','PROD00110',to_date('2022/04/20','YYYY/MM/DD'),390000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6622,'BRN00002','202203140001','PROD00002',to_date('2022/04/20','YYYY/MM/DD'),4550,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6623,'BRN00003','202204070001','PROD00073',to_date('2022/04/20','YYYY/MM/DD'),34500,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6624,'BRN00002','202203160001','PROD00098',to_date('2022/04/20','YYYY/MM/DD'),104700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6625,'BRN00001','202203150005','PROD00047',to_date('2022/04/20','YYYY/MM/DD'),139500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6626,'BRN00001','202203150004','PROD00101',to_date('2022/04/20','YYYY/MM/DD'),5000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6627,'BRN00003','202203140002','PROD00015',to_date('2022/04/20','YYYY/MM/DD'),6000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6628,'BRN00001','202203180003','PROD00120',to_date('2022/04/20','YYYY/MM/DD'),60000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6629,'BRN00003','202203150003','PROD00131',to_date('2022/04/20','YYYY/MM/DD'),24000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6630,'BRN00003','202203150003','PROD00005',to_date('2022/04/20','YYYY/MM/DD'),4700,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6631,'BRN00002','202203150004','PROD00133',to_date('2022/04/20','YYYY/MM/DD'),33000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6632,'BRN00001','202203140002','PROD00105',to_date('2022/04/20','YYYY/MM/DD'),716000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6633,'BRN00003','202203180001','PROD00069',to_date('2022/04/20','YYYY/MM/DD'),2697000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6634,'BRN00003','202203150005','PROD00005',to_date('2022/04/20','YYYY/MM/DD'),4700,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6635,'BRN00003','202203150003','PROD00023',to_date('2022/04/20','YYYY/MM/DD'),61600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6636,'BRN00002','202203180002','PROD00131',to_date('2022/04/20','YYYY/MM/DD'),48000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6637,'BRN00001','202203150005','PROD00011',to_date('2022/04/20','YYYY/MM/DD'),5000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6638,'BRN00002','202204070001','PROD00029',to_date('2022/04/20','YYYY/MM/DD'),8960,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6639,'BRN00001','202203140001','PROD00082',to_date('2022/04/20','YYYY/MM/DD'),210000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6640,'BRN00001','202203140002','PROD00125',to_date('2022/04/20','YYYY/MM/DD'),55000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6641,'BRN00002','202203150005','PROD00050',to_date('2022/04/20','YYYY/MM/DD'),31360,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6642,'BRN00003','202203280002','PROD00005',to_date('2022/04/20','YYYY/MM/DD'),940,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6643,'BRN00001','202203140001','PROD00040',to_date('2022/04/20','YYYY/MM/DD'),3960000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6644,'BRN00003','202203180002','PROD00043',to_date('2022/04/20','YYYY/MM/DD'),5800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6645,'BRN00002','202203160001','PROD00027',to_date('2022/04/20','YYYY/MM/DD'),10480,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6646,'BRN00003','202203140002','PROD00030',to_date('2022/04/20','YYYY/MM/DD'),16080,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6647,'BRN00003','202203140001','PROD00018',to_date('2022/04/20','YYYY/MM/DD'),5500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6648,'BRN00003','202203180002','PROD00139',to_date('2022/04/20','YYYY/MM/DD'),44500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6649,'BRN00003','202203150006','PROD00116',to_date('2022/04/20','YYYY/MM/DD'),16800,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6650,'BRN00002','202203180001','PROD00067',to_date('2022/04/20','YYYY/MM/DD'),24800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6651,'BRN00001','202203160001','PROD00109',to_date('2022/04/20','YYYY/MM/DD'),218000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6652,'BRN00001','202204120001','PROD00041',to_date('2022/04/20','YYYY/MM/DD'),4200,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6653,'BRN00003','202203140001','PROD00035',to_date('2022/04/20','YYYY/MM/DD'),105400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6654,'BRN00001','202203180004','PROD00005',to_date('2022/04/20','YYYY/MM/DD'),940,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6655,'BRN00003','202203180001','PROD00072',to_date('2022/04/20','YYYY/MM/DD'),1934000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6656,'BRN00001','202203140002','PROD00048',to_date('2022/04/20','YYYY/MM/DD'),108000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6657,'BRN00002','202203280001','PROD00127',to_date('2022/04/20','YYYY/MM/DD'),1000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6658,'BRN00002','202203150001','PROD00014',to_date('2022/04/20','YYYY/MM/DD'),240000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6659,'BRN00003','202203180004','PROD00004',to_date('2022/04/20','YYYY/MM/DD'),930,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6660,'BRN00003','202203140001','PROD00098',to_date('2022/04/20','YYYY/MM/DD'),174500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6661,'BRN00002','202203150003','PROD00102',to_date('2022/04/20','YYYY/MM/DD'),30000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6662,'BRN00001','202203150001','PROD00013',to_date('2022/04/20','YYYY/MM/DD'),2400000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6663,'BRN00003','202203150001','PROD00013',to_date('2022/04/20','YYYY/MM/DD'),3600000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6664,'BRN00002','202203280002','PROD00015',to_date('2022/04/20','YYYY/MM/DD'),15000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6665,'BRN00002','202203140002','PROD00083',to_date('2022/04/20','YYYY/MM/DD'),800000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6666,'BRN00001','202203140002','PROD00012',to_date('2022/04/20','YYYY/MM/DD'),2020,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6667,'BRN00001','202203180003','PROD00065',to_date('2022/04/20','YYYY/MM/DD'),3200,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6668,'BRN00003','202203280001','PROD00119',to_date('2022/04/20','YYYY/MM/DD'),3200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6669,'BRN00002','202203180004','PROD00066',to_date('2022/04/20','YYYY/MM/DD'),12800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6670,'BRN00003','202203150001','PROD00105',to_date('2022/04/20','YYYY/MM/DD'),1790000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6671,'BRN00002','202204070002','PROD00026',to_date('2022/04/20','YYYY/MM/DD'),40000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6672,'BRN00001','202203180001','PROD00059',to_date('2022/04/20','YYYY/MM/DD'),1100000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6673,'BRN00003','202203150006','PROD00136',to_date('2022/04/20','YYYY/MM/DD'),10800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6674,'BRN00001','202203180002','PROD00083',to_date('2022/04/20','YYYY/MM/DD'),1000000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6675,'BRN00003','202203160001','PROD00013',to_date('2022/04/20','YYYY/MM/DD'),3600000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6676,'BRN00001','202203140002','PROD00044',to_date('2022/04/20','YYYY/MM/DD'),756000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6677,'BRN00003','202203180001','PROD00018',to_date('2022/04/20','YYYY/MM/DD'),3300000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6678,'BRN00001','202203170001','PROD00083',to_date('2022/04/20','YYYY/MM/DD'),400000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6679,'BRN00001','202203280001','PROD00052',to_date('2022/04/20','YYYY/MM/DD'),38700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6680,'BRN00003','202203150003','PROD00132',to_date('2022/04/20','YYYY/MM/DD'),11000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6681,'BRN00002','202203180004','PROD00018',to_date('2022/04/20','YYYY/MM/DD'),3300000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6682,'BRN00001','202203280001','PROD00106',to_date('2022/04/20','YYYY/MM/DD'),3400000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6683,'BRN00001','202203180001','PROD00138',to_date('2022/04/20','YYYY/MM/DD'),139500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6684,'BRN00003','202203180002','PROD00062',to_date('2022/04/20','YYYY/MM/DD'),200000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6685,'BRN00003','202203150001','PROD00054',to_date('2022/04/20','YYYY/MM/DD'),26000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6686,'BRN00001','202203180004','PROD00118',to_date('2022/04/20','YYYY/MM/DD'),28000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6687,'BRN00001','202203150005','PROD00138',to_date('2022/04/20','YYYY/MM/DD'),139500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6688,'BRN00002','202203280001','PROD00037',to_date('2022/04/20','YYYY/MM/DD'),1757700,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6689,'BRN00002','202203160001','PROD00110',to_date('2022/04/20','YYYY/MM/DD'),78000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6690,'BRN00002','202203150006','PROD00033',to_date('2022/04/20','YYYY/MM/DD'),236000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6691,'BRN00003','202203140001','PROD00140',to_date('2022/04/20','YYYY/MM/DD'),35400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6692,'BRN00001','202203280001','PROD00111',to_date('2022/04/20','YYYY/MM/DD'),25000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6693,'BRN00001','202203180003','PROD00061',to_date('2022/04/20','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6694,'BRN00001','202203150006','PROD00017',to_date('2022/04/20','YYYY/MM/DD'),3960000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6695,'BRN00001','202203150001','PROD00105',to_date('2022/04/20','YYYY/MM/DD'),1432000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6696,'BRN00002','202203150006','PROD00106',to_date('2022/04/20','YYYY/MM/DD'),3400000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6697,'BRN00003','202203180002','PROD00126',to_date('2022/04/20','YYYY/MM/DD'),22000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6698,'BRN00002','202203160001','PROD00077',to_date('2022/04/20','YYYY/MM/DD'),150000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6699,'BRN00002','202203150006','PROD00065',to_date('2022/04/20','YYYY/MM/DD'),4800,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6700,'BRN00003','202203140001','PROD00078',to_date('2022/04/20','YYYY/MM/DD'),20000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6701,'BRN00002','202204120001','PROD00015',to_date('2022/04/20','YYYY/MM/DD'),6000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6702,'BRN00001','202203180001','PROD00047',to_date('2022/04/20','YYYY/MM/DD'),27900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6703,'BRN00003','202203280001','PROD00088',to_date('2022/04/20','YYYY/MM/DD'),7520,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6704,'BRN00003','202203280001','PROD00129',to_date('2022/04/20','YYYY/MM/DD'),39000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6705,'BRN00002','202203170001','PROD00013',to_date('2022/04/20','YYYY/MM/DD'),1200000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6706,'BRN00001','202204070002','PROD00024',to_date('2022/04/20','YYYY/MM/DD'),4160,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6707,'BRN00002','202203150003','PROD00009',to_date('2022/04/20','YYYY/MM/DD'),2940,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6708,'BRN00003','202203150004','PROD00117',to_date('2022/04/20','YYYY/MM/DD'),1600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6709,'BRN00002','202203180001','PROD00092',to_date('2022/04/20','YYYY/MM/DD'),25152000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6710,'BRN00003','202203140002','PROD00142',to_date('2022/04/20','YYYY/MM/DD'),75000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6711,'BRN00001','202203280002','PROD00097',to_date('2022/04/20','YYYY/MM/DD'),68400,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6712,'BRN00002','202203180003','PROD00142',to_date('2022/04/20','YYYY/MM/DD'),75000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6713,'BRN00003','202203150001','PROD00034',to_date('2022/04/20','YYYY/MM/DD'),33000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6714,'BRN00002','202203140001','PROD00113',to_date('2022/04/20','YYYY/MM/DD'),3000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6715,'BRN00002','202204070001','PROD00037',to_date('2022/04/20','YYYY/MM/DD'),703080,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6716,'BRN00002','202203180002','PROD00055',to_date('2022/04/20','YYYY/MM/DD'),349600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6717,'BRN00001','202203140001','PROD00023',to_date('2022/04/20','YYYY/MM/DD'),154000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6718,'BRN00001','202203160001','PROD00077',to_date('2022/04/20','YYYY/MM/DD'),120000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6719,'BRN00001','202203170001','PROD00031',to_date('2022/04/20','YYYY/MM/DD'),59800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6720,'BRN00002','202203150003','PROD00119',to_date('2022/04/20','YYYY/MM/DD'),1600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6721,'BRN00001','202203180001','PROD00132',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6722,'BRN00002','202203280001','PROD00020',to_date('2022/04/20','YYYY/MM/DD'),10000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6723,'BRN00001','202203180003','PROD00059',to_date('2022/04/20','YYYY/MM/DD'),5500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6724,'BRN00001','202203150001','PROD00136',to_date('2022/04/20','YYYY/MM/DD'),43200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6725,'BRN00002','202203140002','PROD00136',to_date('2022/04/20','YYYY/MM/DD'),10800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6726,'BRN00001','202203170001','PROD00064',to_date('2022/04/20','YYYY/MM/DD'),6000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6727,'BRN00003','202203280002','PROD00053',to_date('2022/04/20','YYYY/MM/DD'),79600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6728,'BRN00001','202203150003','PROD00054',to_date('2022/04/20','YYYY/MM/DD'),65000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6729,'BRN00003','202203150006','PROD00083',to_date('2022/04/20','YYYY/MM/DD'),200000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6730,'BRN00002','202204070001','PROD00038',to_date('2022/04/20','YYYY/MM/DD'),64000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6731,'BRN00001','202203140002','PROD00139',to_date('2022/04/20','YYYY/MM/DD'),35600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6732,'BRN00001','202203280002','PROD00033',to_date('2022/04/20','YYYY/MM/DD'),236000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6733,'BRN00001','202203140001','PROD00126',to_date('2022/04/20','YYYY/MM/DD'),5500,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6734,'BRN00001','202204070002','PROD00010',to_date('2022/04/20','YYYY/MM/DD'),1980,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6735,'BRN00002','202203150006','PROD00141',to_date('2022/04/20','YYYY/MM/DD'),54000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6736,'BRN00001','202204070002','PROD00106',to_date('2022/04/20','YYYY/MM/DD'),2720000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6737,'BRN00003','202203140002','PROD00122',to_date('2022/04/20','YYYY/MM/DD'),1720,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6738,'BRN00002','202203150003','PROD00080',to_date('2022/04/20','YYYY/MM/DD'),150000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6739,'BRN00002','202203280002','PROD00112',to_date('2022/04/20','YYYY/MM/DD'),390000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6740,'BRN00003','202203160001','PROD00063',to_date('2022/04/20','YYYY/MM/DD'),116000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6741,'BRN00002','202203150004','PROD00132',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6742,'BRN00001','202203280002','PROD00034',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6743,'BRN00003','202203150006','PROD00141',to_date('2022/04/20','YYYY/MM/DD'),32400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6744,'BRN00002','202203150004','PROD00120',to_date('2022/04/20','YYYY/MM/DD'),100000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6745,'BRN00003','202204120001','PROD00031',to_date('2022/04/20','YYYY/MM/DD'),149500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6746,'BRN00003','202203150006','PROD00140',to_date('2022/04/20','YYYY/MM/DD'),23600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6747,'BRN00001','202203170001','PROD00138',to_date('2022/04/20','YYYY/MM/DD'),111600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6748,'BRN00002','202203180001','PROD00080',to_date('2022/04/20','YYYY/MM/DD'),60000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6749,'BRN00003','202203180001','PROD00120',to_date('2022/04/20','YYYY/MM/DD'),100000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6750,'BRN00002','202204120001','PROD00018',to_date('2022/04/20','YYYY/MM/DD'),4400000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6751,'BRN00003','202203170001','PROD00044',to_date('2022/04/20','YYYY/MM/DD'),378000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6752,'BRN00003','202203150005','PROD00061',to_date('2022/04/20','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6753,'BRN00001','202203150005','PROD00025',to_date('2022/04/20','YYYY/MM/DD'),19920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6754,'BRN00002','202203180001','PROD00011',to_date('2022/04/20','YYYY/MM/DD'),4000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6755,'BRN00002','202203180004','PROD00115',to_date('2022/04/20','YYYY/MM/DD'),3750,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6756,'BRN00003','202203280001','PROD00055',to_date('2022/04/20','YYYY/MM/DD'),437000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6757,'BRN00001','202203140001','PROD00045',to_date('2022/04/20','YYYY/MM/DD'),23000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6758,'BRN00002','202203150006','PROD00035',to_date('2022/04/20','YYYY/MM/DD'),105400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6759,'BRN00003','202203170001','PROD00110',to_date('2022/04/20','YYYY/MM/DD'),156000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6760,'BRN00002','202203280001','PROD00133',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6761,'BRN00001','202203150004','PROD00039',to_date('2022/04/20','YYYY/MM/DD'),49000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6762,'BRN00003','202203180002','PROD00056',to_date('2022/04/20','YYYY/MM/DD'),53700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6763,'BRN00001','202203150004','PROD00039',to_date('2022/04/20','YYYY/MM/DD'),98000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6764,'BRN00003','202203150004','PROD00011',to_date('2022/04/20','YYYY/MM/DD'),4000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6765,'BRN00002','202203280001','PROD00060',to_date('2022/04/20','YYYY/MM/DD'),2500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6766,'BRN00003','202203180002','PROD00103',to_date('2022/04/20','YYYY/MM/DD'),143600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6767,'BRN00002','202204120001','PROD00081',to_date('2022/04/20','YYYY/MM/DD'),56000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6768,'BRN00003','202203150001','PROD00034',to_date('2022/04/20','YYYY/MM/DD'),11000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6769,'BRN00002','202204120001','PROD00141',to_date('2022/04/20','YYYY/MM/DD'),43200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6770,'BRN00003','202203160001','PROD00003',to_date('2022/04/20','YYYY/MM/DD'),4600,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6771,'BRN00003','202203140002','PROD00079',to_date('2022/04/20','YYYY/MM/DD'),27000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6772,'BRN00002','202203150005','PROD00011',to_date('2022/04/20','YYYY/MM/DD'),2000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6773,'BRN00002','202204070002','PROD00059',to_date('2022/04/20','YYYY/MM/DD'),1100000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6774,'BRN00001','202203160001','PROD00003',to_date('2022/04/20','YYYY/MM/DD'),1840,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6775,'BRN00002','202203180002','PROD00018',to_date('2022/04/20','YYYY/MM/DD'),4400000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6776,'BRN00003','202204070001','PROD00021',to_date('2022/04/20','YYYY/MM/DD'),1190,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6777,'BRN00003','202203150003','PROD00029',to_date('2022/04/20','YYYY/MM/DD'),13440,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6778,'BRN00002','202203150004','PROD00008',to_date('2022/04/20','YYYY/MM/DD'),970,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6779,'BRN00001','202203280001','PROD00048',to_date('2022/04/20','YYYY/MM/DD'),81000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6780,'BRN00001','202203140001','PROD00084',to_date('2022/04/20','YYYY/MM/DD'),780000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6781,'BRN00003','202203180003','PROD00004',to_date('2022/04/20','YYYY/MM/DD'),930,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6782,'BRN00002','202203150001','PROD00084',to_date('2022/04/20','YYYY/MM/DD'),2340000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6783,'BRN00002','202203150006','PROD00116',to_date('2022/04/20','YYYY/MM/DD'),22400,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6784,'BRN00003','202203140002','PROD00096',to_date('2022/04/20','YYYY/MM/DD'),103600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6785,'BRN00002','202204120001','PROD00015',to_date('2022/04/20','YYYY/MM/DD'),12000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6786,'BRN00003','202203150005','PROD00074',to_date('2022/04/20','YYYY/MM/DD'),24000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6787,'BRN00001','202203160001','PROD00077',to_date('2022/04/20','YYYY/MM/DD'),150000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6788,'BRN00003','202203150006','PROD00089',to_date('2022/04/20','YYYY/MM/DD'),4980000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6789,'BRN00003','202203170001','PROD00126',to_date('2022/04/20','YYYY/MM/DD'),5500,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6790,'BRN00002','202203150005','PROD00026',to_date('2022/04/20','YYYY/MM/DD'),20000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6791,'BRN00001','202203150006','PROD00002',to_date('2022/04/20','YYYY/MM/DD'),1820,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6792,'BRN00002','202203150003','PROD00032',to_date('2022/04/20','YYYY/MM/DD'),70000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6793,'BRN00001','202203280002','PROD00103',to_date('2022/04/20','YYYY/MM/DD'),107700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6794,'BRN00003','202203180003','PROD00137',to_date('2022/04/20','YYYY/MM/DD'),27600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6795,'BRN00001','202203150005','PROD00066',to_date('2022/04/20','YYYY/MM/DD'),3200,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6796,'BRN00001','202203280002','PROD00070',to_date('2022/04/20','YYYY/MM/DD'),4350000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6797,'BRN00001','202203180003','PROD00089',to_date('2022/04/20','YYYY/MM/DD'),12450000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6798,'BRN00001','202203150001','PROD00107',to_date('2022/04/20','YYYY/MM/DD'),192000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6799,'BRN00001','202203150005','PROD00030',to_date('2022/04/20','YYYY/MM/DD'),32160,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6800,'BRN00001','202203280001','PROD00143',to_date('2022/04/20','YYYY/MM/DD'),28000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6801,'BRN00002','202203170001','PROD00082',to_date('2022/04/20','YYYY/MM/DD'),280000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6802,'BRN00003','202203150004','PROD00095',to_date('2022/04/20','YYYY/MM/DD'),44700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6803,'BRN00001','202203150004','PROD00005',to_date('2022/04/20','YYYY/MM/DD'),3760,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6804,'BRN00001','202203160001','PROD00011',to_date('2022/04/20','YYYY/MM/DD'),1000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6805,'BRN00003','202203150001','PROD00032',to_date('2022/04/20','YYYY/MM/DD'),56000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6806,'BRN00003','202203150001','PROD00130',to_date('2022/04/20','YYYY/MM/DD'),15600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6807,'BRN00003','202203180001','PROD00043',to_date('2022/04/20','YYYY/MM/DD'),11600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6808,'BRN00001','202203140001','PROD00083',to_date('2022/04/20','YYYY/MM/DD'),600000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6809,'BRN00002','202203280001','PROD00134',to_date('2022/04/20','YYYY/MM/DD'),64000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6810,'BRN00003','202203180003','PROD00072',to_date('2022/04/20','YYYY/MM/DD'),1934000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6811,'BRN00003','202203150001','PROD00100',to_date('2022/04/20','YYYY/MM/DD'),33900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6812,'BRN00003','202203180003','PROD00017',to_date('2022/04/20','YYYY/MM/DD'),1980000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6813,'BRN00002','202203180002','PROD00123',to_date('2022/04/20','YYYY/MM/DD'),14000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6814,'BRN00001','202203160001','PROD00118',to_date('2022/04/20','YYYY/MM/DD'),11200,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6815,'BRN00002','202203180004','PROD00081',to_date('2022/04/20','YYYY/MM/DD'),14000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6816,'BRN00001','202203150005','PROD00126',to_date('2022/04/20','YYYY/MM/DD'),16500,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6817,'BRN00002','202203140001','PROD00098',to_date('2022/04/20','YYYY/MM/DD'),104700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6818,'BRN00003','202203180001','PROD00079',to_date('2022/04/20','YYYY/MM/DD'),18000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6819,'BRN00002','202203180004','PROD00116',to_date('2022/04/20','YYYY/MM/DD'),22400,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6820,'BRN00001','202203180002','PROD00030',to_date('2022/04/20','YYYY/MM/DD'),8040,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6821,'BRN00001','202203180002','PROD00062',to_date('2022/04/20','YYYY/MM/DD'),400000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6822,'BRN00002','202203150006','PROD00114',to_date('2022/04/20','YYYY/MM/DD'),2100,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6823,'BRN00001','202203180003','PROD00046',to_date('2022/04/20','YYYY/MM/DD'),160000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6824,'BRN00001','202204070001','PROD00132',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6825,'BRN00001','202203180002','PROD00047',to_date('2022/04/20','YYYY/MM/DD'),111600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6826,'BRN00001','202203140001','PROD00074',to_date('2022/04/20','YYYY/MM/DD'),12000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6827,'BRN00002','202203140002','PROD00135',to_date('2022/04/20','YYYY/MM/DD'),23400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6828,'BRN00001','202203280002','PROD00143',to_date('2022/04/20','YYYY/MM/DD'),42000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6829,'BRN00003','202204070001','PROD00119',to_date('2022/04/20','YYYY/MM/DD'),2400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6830,'BRN00001','202203170001','PROD00126',to_date('2022/04/20','YYYY/MM/DD'),27500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6831,'BRN00001','202203150005','PROD00040',to_date('2022/04/20','YYYY/MM/DD'),9900000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6832,'BRN00002','202204070001','PROD00065',to_date('2022/04/20','YYYY/MM/DD'),4800,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6833,'BRN00003','202203150006','PROD00108',to_date('2022/04/20','YYYY/MM/DD'),26000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6834,'BRN00002','202203160001','PROD00040',to_date('2022/04/20','YYYY/MM/DD'),9900000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6835,'BRN00003','202203180003','PROD00057',to_date('2022/04/20','YYYY/MM/DD'),2810,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6836,'BRN00001','202203140002','PROD00003',to_date('2022/04/20','YYYY/MM/DD'),920,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6837,'BRN00001','202203280001','PROD00072',to_date('2022/04/20','YYYY/MM/DD'),1547200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6838,'BRN00002','202203180003','PROD00141',to_date('2022/04/20','YYYY/MM/DD'),54000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6839,'BRN00002','202203280002','PROD00087',to_date('2022/04/20','YYYY/MM/DD'),5000000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6840,'BRN00001','202203150005','PROD00090',to_date('2022/04/20','YYYY/MM/DD'),18750000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6841,'BRN00003','202204070001','PROD00090',to_date('2022/04/20','YYYY/MM/DD'),11250000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6842,'BRN00003','202203150001','PROD00077',to_date('2022/04/20','YYYY/MM/DD'),120000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6843,'BRN00003','202203150004','PROD00006',to_date('2022/04/20','YYYY/MM/DD'),3800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1456,'BRN00001','202204070001','PROD00064',to_date('2022/04/02','YYYY/MM/DD'),4000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1458,'BRN00001','202203180001','PROD00065',to_date('2022/04/04','YYYY/MM/DD'),1600,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1459,'BRN00001','202203280002','PROD00051',to_date('2022/04/02','YYYY/MM/DD'),6990,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1461,'BRN00001','202203180001','PROD00009',to_date('2022/04/02','YYYY/MM/DD'),3920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1464,'BRN00002','202203180001','PROD00019',to_date('2022/04/02','YYYY/MM/DD'),2598000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1467,'BRN00003','202203280002','PROD00026',to_date('2022/04/03','YYYY/MM/DD'),100000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1470,'BRN00001','202203150003','PROD00015',to_date('2022/04/03','YYYY/MM/DD'),15000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1472,'BRN00001','202203150003','PROD00061',to_date('2022/04/03','YYYY/MM/DD'),6000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1474,'BRN00001','202204070001','PROD00038',to_date('2022/04/03','YYYY/MM/DD'),96000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1475,'BRN00003','202203140001','PROD00058',to_date('2022/04/03','YYYY/MM/DD'),45000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1477,'BRN00001','202203280001','PROD00016',to_date('2022/04/03','YYYY/MM/DD'),1500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1480,'BRN00001','202203150004','PROD00035',to_date('2022/04/03','YYYY/MM/DD'),158100,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1482,'BRN00002','202203180003','PROD00066',to_date('2022/04/04','YYYY/MM/DD'),9600,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1484,'BRN00001','202203280002','PROD00024',to_date('2022/04/06','YYYY/MM/DD'),8320,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1486,'BRN00001','202203150005','PROD00071',to_date('2022/04/05','YYYY/MM/DD'),792000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1488,'BRN00003','202203180003','PROD00008',to_date('2022/04/05','YYYY/MM/DD'),1940,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1489,'BRN00002','202203170001','PROD00061',to_date('2022/04/05','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1493,'BRN00002','202203160001','PROD00012',to_date('2022/04/05','YYYY/MM/DD'),3030,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1495,'BRN00002','202203160001','PROD00022',to_date('2022/04/05','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1497,'BRN00003','202203170001','PROD00056',to_date('2022/04/05','YYYY/MM/DD'),35800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1499,'BRN00002','202203170001','PROD00067',to_date('2022/04/05','YYYY/MM/DD'),24800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1501,'BRN00001','202203180003','PROD00031',to_date('2022/04/05','YYYY/MM/DD'),89700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1503,'BRN00002','202203150005','PROD00008',to_date('2022/04/05','YYYY/MM/DD'),2910,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1505,'BRN00003','202204070001','PROD00051',to_date('2022/04/05','YYYY/MM/DD'),34950,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1508,'BRN00003','202204120001','PROD00041',to_date('2022/04/05','YYYY/MM/DD'),4200,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1510,'BRN00002','202203160001','PROD00020',to_date('2022/04/05','YYYY/MM/DD'),8000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1512,'BRN00001','202204070002','PROD00041',to_date('2022/04/05','YYYY/MM/DD'),16800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1514,'BRN00003','202203180004','PROD00035',to_date('2022/04/06','YYYY/MM/DD'),263500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6844,'BRN00001',null,'PROD00031',to_date('2022/04/20','YYYY/MM/DD'),29900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6848,'BRN00001',null,'PROD00031',to_date('2022/04/21','YYYY/MM/DD'),29900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1387,'BRN00002','202203180003','PROD00070',to_date('2022/04/01','YYYY/MM/DD'),7250000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1389,'BRN00001','202203140001','PROD00064',to_date('2022/04/02','YYYY/MM/DD'),6000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1392,'BRN00003','202203150001','PROD00067',to_date('2022/04/01','YYYY/MM/DD'),31000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1394,'BRN00001','202203140001','PROD00041',to_date('2022/04/01','YYYY/MM/DD'),4200,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1397,'BRN00001','202204070001','PROD00016',to_date('2022/04/01','YYYY/MM/DD'),1200000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1398,'BRN00003','202203180001','PROD00053',to_date('2022/04/01','YYYY/MM/DD'),39800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1400,'BRN00003','202203180003','PROD00035',to_date('2022/04/01','YYYY/MM/DD'),52700,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1402,'BRN00003','202203150001','PROD00033',to_date('2022/04/01','YYYY/MM/DD'),59000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1404,'BRN00001','202203150006','PROD00016',to_date('2022/04/01','YYYY/MM/DD'),600000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1407,'BRN00001','202203140001','PROD00019',to_date('2022/04/01','YYYY/MM/DD'),6495000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1409,'BRN00001','202203160001','PROD00054',to_date('2022/04/01','YYYY/MM/DD'),26000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1410,'BRN00001','202203180001','PROD00042',to_date('2022/04/01','YYYY/MM/DD'),403500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1411,'BRN00002','202203150003','PROD00011',to_date('2022/04/01','YYYY/MM/DD'),3000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1414,'BRN00001','202203280001','PROD00038',to_date('2022/04/01','YYYY/MM/DD'),64000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1417,'BRN00001','202203180002','PROD00033',to_date('2022/04/01','YYYY/MM/DD'),59000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1419,'BRN00001','202203140001','PROD00064',to_date('2022/04/01','YYYY/MM/DD'),4000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1421,'BRN00001','202203160001','PROD00023',to_date('2022/04/01','YYYY/MM/DD'),30800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1423,'BRN00002','202204070001','PROD00055',to_date('2022/04/01','YYYY/MM/DD'),174800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1425,'BRN00002','202203160001','PROD00035',to_date('2022/04/01','YYYY/MM/DD'),210800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1427,'BRN00001','202204120001','PROD00024',to_date('2022/04/03','YYYY/MM/DD'),8320,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1429,'BRN00003','202203180001','PROD00018',to_date('2022/04/03','YYYY/MM/DD'),1100000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1432,'BRN00003','202203180001','PROD00025',to_date('2022/04/03','YYYY/MM/DD'),9960,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1433,'BRN00002','202203280002','PROD00005',to_date('2022/04/03','YYYY/MM/DD'),940,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1435,'BRN00003','202203170001','PROD00055',to_date('2022/04/03','YYYY/MM/DD'),437000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1436,'BRN00002','202203150006','PROD00071',to_date('2022/04/03','YYYY/MM/DD'),198000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1438,'BRN00002','202203140001','PROD00043',to_date('2022/04/03','YYYY/MM/DD'),29000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1440,'BRN00002','202203180004','PROD00010',to_date('2022/04/03','YYYY/MM/DD'),990,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1442,'BRN00003','202203280001','PROD00033',to_date('2022/04/03','YYYY/MM/DD'),118000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1444,'BRN00001','202204120001','PROD00021',to_date('2022/04/03','YYYY/MM/DD'),5950,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1447,'BRN00003','202203180004','PROD00038',to_date('2022/04/03','YYYY/MM/DD'),32000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1449,'BRN00002','202204070002','PROD00008',to_date('2022/04/03','YYYY/MM/DD'),970,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1450,'BRN00002','202203180002','PROD00018',to_date('2022/04/03','YYYY/MM/DD'),5500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1451,'BRN00001','202203140001','PROD00039',to_date('2022/04/03','YYYY/MM/DD'),49000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1453,'BRN00001','202203280002','PROD00072',to_date('2022/04/03','YYYY/MM/DD'),1547200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1455,'BRN00002','202203150006','PROD00033',to_date('2022/04/03','YYYY/MM/DD'),59000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1457,'BRN00002','202203150006','PROD00072',to_date('2022/04/04','YYYY/MM/DD'),1934000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1460,'BRN00003','202204070001','PROD00019',to_date('2022/04/04','YYYY/MM/DD'),1299000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1462,'BRN00002','202203140002','PROD00065',to_date('2022/04/04','YYYY/MM/DD'),6400,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1463,'BRN00002','202203150001','PROD00047',to_date('2022/04/04','YYYY/MM/DD'),83700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1465,'BRN00001','202203280002','PROD00012',to_date('2022/04/04','YYYY/MM/DD'),3030,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1466,'BRN00002','202203180001','PROD00031',to_date('2022/04/04','YYYY/MM/DD'),149500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1468,'BRN00002','202204070001','PROD00009',to_date('2022/04/04','YYYY/MM/DD'),4900,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1469,'BRN00003','202204070002','PROD00008',to_date('2022/04/04','YYYY/MM/DD'),1940,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1471,'BRN00001','202203150003','PROD00053',to_date('2022/04/04','YYYY/MM/DD'),79600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1473,'BRN00003','202203140001','PROD00052',to_date('2022/04/04','YYYY/MM/DD'),12900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1476,'BRN00002','202203150005','PROD00051',to_date('2022/04/04','YYYY/MM/DD'),34950,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1478,'BRN00003','202203180001','PROD00064',to_date('2022/04/04','YYYY/MM/DD'),6000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1479,'BRN00001','202203140002','PROD00023',to_date('2022/04/04','YYYY/MM/DD'),123200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1481,'BRN00003','202203160001','PROD00043',to_date('2022/04/04','YYYY/MM/DD'),23200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1483,'BRN00003','202204070002','PROD00043',to_date('2022/04/05','YYYY/MM/DD'),5800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1485,'BRN00001','202204120001','PROD00035',to_date('2022/04/05','YYYY/MM/DD'),105400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1487,'BRN00003','202203150005','PROD00044',to_date('2022/04/05','YYYY/MM/DD'),945000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1490,'BRN00001','202203150004','PROD00035',to_date('2022/04/05','YYYY/MM/DD'),105400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1491,'BRN00003','202203140001','PROD00048',to_date('2022/04/05','YYYY/MM/DD'),54000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1492,'BRN00001','202203280001','PROD00011',to_date('2022/04/06','YYYY/MM/DD'),2000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1494,'BRN00002','202203180004','PROD00026',to_date('2022/04/06','YYYY/MM/DD'),60000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1496,'BRN00001','202203150004','PROD00043',to_date('2022/04/06','YYYY/MM/DD'),17400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1498,'BRN00001','202204120001','PROD00024',to_date('2022/04/06','YYYY/MM/DD'),8320,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1500,'BRN00002','202203160001','PROD00013',to_date('2022/04/06','YYYY/MM/DD'),2400000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1502,'BRN00002','202203180002','PROD00032',to_date('2022/04/06','YYYY/MM/DD'),56000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1504,'BRN00001','202204070001','PROD00069',to_date('2022/04/06','YYYY/MM/DD'),2697000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1506,'BRN00003','202203150006','PROD00031',to_date('2022/04/06','YYYY/MM/DD'),29900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1507,'BRN00003','202203140001','PROD00006',to_date('2022/04/06','YYYY/MM/DD'),3800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1509,'BRN00001','202203280002','PROD00033',to_date('2022/04/06','YYYY/MM/DD'),295000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1511,'BRN00003','202203150004','PROD00018',to_date('2022/04/06','YYYY/MM/DD'),2200000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1513,'BRN00001','202203150006','PROD00020',to_date('2022/04/05','YYYY/MM/DD'),6000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1515,'BRN00003','202203150006','PROD00063',to_date('2022/04/06','YYYY/MM/DD'),116000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1388,'BRN00001','202203140002','PROD00010',to_date('2022/04/01','YYYY/MM/DD'),3960,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1390,'BRN00001','202203150005','PROD00035',to_date('2022/04/01','YYYY/MM/DD'),263500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1391,'BRN00002','202203140002','PROD00068',to_date('2022/04/02','YYYY/MM/DD'),299500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1393,'BRN00002','202203150003','PROD00023',to_date('2022/04/02','YYYY/MM/DD'),123200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1395,'BRN00002','202203180004','PROD00024',to_date('2022/04/02','YYYY/MM/DD'),4160,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1396,'BRN00003','202203150001','PROD00062',to_date('2022/04/02','YYYY/MM/DD'),400000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1399,'BRN00001','202204070001','PROD00014',to_date('2022/04/02','YYYY/MM/DD'),480000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1401,'BRN00002','202203140001','PROD00035',to_date('2022/04/02','YYYY/MM/DD'),210800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1403,'BRN00003','202203150001','PROD00048',to_date('2022/04/02','YYYY/MM/DD'),27000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1405,'BRN00003','202203280002','PROD00037',to_date('2022/04/02','YYYY/MM/DD'),351540,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1406,'BRN00002','202203150001','PROD00023',to_date('2022/04/02','YYYY/MM/DD'),154000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1408,'BRN00003','202203140002','PROD00061',to_date('2022/04/02','YYYY/MM/DD'),24000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1412,'BRN00001','202203180001','PROD00004',to_date('2022/04/02','YYYY/MM/DD'),2790,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1413,'BRN00003','202203140002','PROD00062',to_date('2022/04/02','YYYY/MM/DD'),400000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1415,'BRN00003','202203280002','PROD00012',to_date('2022/04/02','YYYY/MM/DD'),1010,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1416,'BRN00001','202203280002','PROD00029',to_date('2022/04/02','YYYY/MM/DD'),17920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1418,'BRN00003','202203180002','PROD00031',to_date('2022/04/02','YYYY/MM/DD'),89700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1420,'BRN00002','202204120001','PROD00016',to_date('2022/04/02','YYYY/MM/DD'),600000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1422,'BRN00003','202203140001','PROD00001',to_date('2022/04/02','YYYY/MM/DD'),900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1424,'BRN00002','202204070001','PROD00007',to_date('2022/04/01','YYYY/MM/DD'),1920,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1426,'BRN00003','202203150004','PROD00068',to_date('2022/04/04','YYYY/MM/DD'),119800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1428,'BRN00002','202203170001','PROD00058',to_date('2022/04/04','YYYY/MM/DD'),60000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1430,'BRN00001','202204070002','PROD00052',to_date('2022/04/04','YYYY/MM/DD'),38700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1431,'BRN00001','202203150001','PROD00021',to_date('2022/04/04','YYYY/MM/DD'),2380,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1434,'BRN00003','202203180001','PROD00009',to_date('2022/04/04','YYYY/MM/DD'),980,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1437,'BRN00002','202203160001','PROD00030',to_date('2022/04/04','YYYY/MM/DD'),8040,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1439,'BRN00001','202203180004','PROD00019',to_date('2022/04/04','YYYY/MM/DD'),3897000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1441,'BRN00002','202203280002','PROD00065',to_date('2022/04/04','YYYY/MM/DD'),3200,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1443,'BRN00002','202203140002','PROD00024',to_date('2022/04/04','YYYY/MM/DD'),2080,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1445,'BRN00002','202203150003','PROD00053',to_date('2022/04/04','YYYY/MM/DD'),59700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1446,'BRN00001','202203180003','PROD00072',to_date('2022/04/04','YYYY/MM/DD'),773600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1448,'BRN00002','202203280002','PROD00014',to_date('2022/04/04','YYYY/MM/DD'),240000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1452,'BRN00001','202203150006','PROD00057',to_date('2022/04/04','YYYY/MM/DD'),5620,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (1454,'BRN00002','202204070002','PROD00040',to_date('2022/04/02','YYYY/MM/DD'),9900000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6850,'BRN00001',null,'PROD00082',to_date('2022/04/21','YYYY/MM/DD'),70000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6851,'BRN00001',null,'PROD00071',to_date('2022/04/21','YYYY/MM/DD'),198000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6852,'BRN00001','202203180004','PROD00071',to_date('2022/04/21','YYYY/MM/DD'),198000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6853,'BRN00001','202203180004','PROD00082',to_date('2022/04/21','YYYY/MM/DD'),70000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6854,'BRN00001','202203180004','PROD00096',to_date('2022/04/21','YYYY/MM/DD'),25900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6855,'BRN00001','202203180004','PROD00096',to_date('2022/04/21','YYYY/MM/DD'),25900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6849,'BRN00001',null,'PROD00096',to_date('2022/04/21','YYYY/MM/DD'),25900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6129,'BRN00001','202203150005','PROD00064',to_date('2022/04/08','YYYY/MM/DD'),8000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6130,'BRN00003','202203150004','PROD00009',to_date('2022/04/08','YYYY/MM/DD'),980,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6131,'BRN00002','202203180002','PROD00056',to_date('2022/04/08','YYYY/MM/DD'),17900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6132,'BRN00002','202203150003','PROD00052',to_date('2022/04/08','YYYY/MM/DD'),51600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6133,'BRN00001','202203150003','PROD00063',to_date('2022/04/08','YYYY/MM/DD'),29000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6134,'BRN00002','202203160001','PROD00007',to_date('2022/04/08','YYYY/MM/DD'),3840,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6135,'BRN00003','202203150005','PROD00048',to_date('2022/04/08','YYYY/MM/DD'),108000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6136,'BRN00002','202203180001','PROD00021',to_date('2022/04/08','YYYY/MM/DD'),1190,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6137,'BRN00003','202203150005','PROD00067',to_date('2022/04/08','YYYY/MM/DD'),12400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6138,'BRN00003','202203180004','PROD00028',to_date('2022/04/08','YYYY/MM/DD'),41000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6139,'BRN00002','202203160001','PROD00057',to_date('2022/04/08','YYYY/MM/DD'),2810,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6140,'BRN00003','202203280001','PROD00042',to_date('2022/04/08','YYYY/MM/DD'),322800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6141,'BRN00003','202204070001','PROD00023',to_date('2022/04/08','YYYY/MM/DD'),61600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6142,'BRN00001','202203180002','PROD00044',to_date('2022/04/08','YYYY/MM/DD'),945000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6143,'BRN00003','202203280001','PROD00054',to_date('2022/04/08','YYYY/MM/DD'),39000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6144,'BRN00002','202203280002','PROD00027',to_date('2022/04/08','YYYY/MM/DD'),10480,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6145,'BRN00002','202203180004','PROD00024',to_date('2022/04/08','YYYY/MM/DD'),6240,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6146,'BRN00003','202203150005','PROD00061',to_date('2022/04/08','YYYY/MM/DD'),6000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6147,'BRN00003','202204070001','PROD00040',to_date('2022/04/08','YYYY/MM/DD'),7920000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6148,'BRN00001','202203150005','PROD00054',to_date('2022/04/08','YYYY/MM/DD'),52000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6149,'BRN00002','202203150006','PROD00052',to_date('2022/04/08','YYYY/MM/DD'),25800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6150,'BRN00002','202203150001','PROD00013',to_date('2022/04/08','YYYY/MM/DD'),1200000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6151,'BRN00002','202203150005','PROD00039',to_date('2022/04/08','YYYY/MM/DD'),147000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6152,'BRN00003','202203280001','PROD00040',to_date('2022/04/08','YYYY/MM/DD'),9900000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6153,'BRN00001','202203150005','PROD00014',to_date('2022/04/08','YYYY/MM/DD'),960000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6154,'BRN00002','202203180004','PROD00031',to_date('2022/04/08','YYYY/MM/DD'),119600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6155,'BRN00003','202204120001','PROD00002',to_date('2022/04/08','YYYY/MM/DD'),3640,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6156,'BRN00001','202203180002','PROD00055',to_date('2022/04/08','YYYY/MM/DD'),349600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6157,'BRN00003','202203180001','PROD00071',to_date('2022/04/08','YYYY/MM/DD'),990000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6158,'BRN00003','202203160001','PROD00001',to_date('2022/04/08','YYYY/MM/DD'),3600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6159,'BRN00003','202203160001','PROD00007',to_date('2022/04/08','YYYY/MM/DD'),3840,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6160,'BRN00001','202203170001','PROD00035',to_date('2022/04/08','YYYY/MM/DD'),158100,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6161,'BRN00001','202203180003','PROD00032',to_date('2022/04/09','YYYY/MM/DD'),14000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6162,'BRN00002','202203280002','PROD00008',to_date('2022/04/09','YYYY/MM/DD'),2910,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6163,'BRN00003','202203180003','PROD00036',to_date('2022/04/09','YYYY/MM/DD'),14700000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6164,'BRN00001','202203180003','PROD00028',to_date('2022/04/09','YYYY/MM/DD'),61500,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6165,'BRN00001','202204070002','PROD00039',to_date('2022/04/09','YYYY/MM/DD'),98000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6166,'BRN00001','202203150004','PROD00011',to_date('2022/04/09','YYYY/MM/DD'),1000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6167,'BRN00002','202203180001','PROD00001',to_date('2022/04/09','YYYY/MM/DD'),2700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6168,'BRN00001','202204070001','PROD00053',to_date('2022/04/09','YYYY/MM/DD'),19900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6169,'BRN00002','202203150003','PROD00012',to_date('2022/04/09','YYYY/MM/DD'),2020,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6170,'BRN00001','202203180002','PROD00020',to_date('2022/04/09','YYYY/MM/DD'),10000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6171,'BRN00003','202203150003','PROD00008',to_date('2022/04/09','YYYY/MM/DD'),1940,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6172,'BRN00003','202203140002','PROD00036',to_date('2022/04/09','YYYY/MM/DD'),9800000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6173,'BRN00001','202203170001','PROD00030',to_date('2022/04/09','YYYY/MM/DD'),40200,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6174,'BRN00002','202204120001','PROD00063',to_date('2022/04/09','YYYY/MM/DD'),145000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6175,'BRN00003','202203170001','PROD00032',to_date('2022/04/09','YYYY/MM/DD'),42000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6176,'BRN00003','202204070002','PROD00061',to_date('2022/04/09','YYYY/MM/DD'),24000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6177,'BRN00001','202203150003','PROD00014',to_date('2022/04/09','YYYY/MM/DD'),480000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6178,'BRN00002','202203150004','PROD00043',to_date('2022/04/09','YYYY/MM/DD'),11600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6179,'BRN00003','202204070002','PROD00049',to_date('2022/04/09','YYYY/MM/DD'),11460,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6180,'BRN00003','202203180003','PROD00059',to_date('2022/04/09','YYYY/MM/DD'),4400000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6181,'BRN00003','202203280001','PROD00061',to_date('2022/04/09','YYYY/MM/DD'),30000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6182,'BRN00003','202203170001','PROD00012',to_date('2022/04/09','YYYY/MM/DD'),2020,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6183,'BRN00001','202204120001','PROD00009',to_date('2022/04/09','YYYY/MM/DD'),2940,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6184,'BRN00002','202203150006','PROD00067',to_date('2022/04/09','YYYY/MM/DD'),12400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6185,'BRN00001','202203180003','PROD00018',to_date('2022/04/09','YYYY/MM/DD'),3300000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6186,'BRN00001','202203180004','PROD00052',to_date('2022/04/09','YYYY/MM/DD'),25800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6187,'BRN00001','202203150003','PROD00064',to_date('2022/04/09','YYYY/MM/DD'),8000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6188,'BRN00002','202203180003','PROD00016',to_date('2022/04/09','YYYY/MM/DD'),300000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6189,'BRN00002','202203280001','PROD00023',to_date('2022/04/09','YYYY/MM/DD'),154000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6190,'BRN00001','202203180003','PROD00018',to_date('2022/04/09','YYYY/MM/DD'),5500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6191,'BRN00002','202203180002','PROD00007',to_date('2022/04/09','YYYY/MM/DD'),3840,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6192,'BRN00003','202203180004','PROD00057',to_date('2022/04/09','YYYY/MM/DD'),8430,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6193,'BRN00002','202204070002','PROD00051',to_date('2022/04/09','YYYY/MM/DD'),34950,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6194,'BRN00003','202203150006','PROD00010',to_date('2022/04/09','YYYY/MM/DD'),3960,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6195,'BRN00003','202203180004','PROD00027',to_date('2022/04/09','YYYY/MM/DD'),41920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6196,'BRN00001','202203280002','PROD00036',to_date('2022/04/09','YYYY/MM/DD'),4900000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6197,'BRN00002','202203180002','PROD00047',to_date('2022/04/09','YYYY/MM/DD'),139500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6198,'BRN00002','202203180001','PROD00018',to_date('2022/04/09','YYYY/MM/DD'),2200000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6199,'BRN00003','202203180002','PROD00032',to_date('2022/04/09','YYYY/MM/DD'),56000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6200,'BRN00002','202203140002','PROD00072',to_date('2022/04/09','YYYY/MM/DD'),1934000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6201,'BRN00003','202204070002','PROD00012',to_date('2022/04/09','YYYY/MM/DD'),2020,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6202,'BRN00001','202203280001','PROD00045',to_date('2022/04/09','YYYY/MM/DD'),92000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6203,'BRN00001','202203280002','PROD00047',to_date('2022/04/09','YYYY/MM/DD'),55800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6860,'BRN00001','202203180004','PROD00071',to_date('2022/04/22','YYYY/MM/DD'),198000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6861,'BRN00001','202203180004','PROD00096',to_date('2022/04/22','YYYY/MM/DD'),25900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6128,'BRN00003','202203150006','PROD00034',to_date('2022/04/08','YYYY/MM/DD'),55000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6856,'BRN00001','202203180004','PROD00082',to_date('2022/04/21','YYYY/MM/DD'),70000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6857,'BRN00001','202203180004','PROD00096',to_date('2022/04/21','YYYY/MM/DD'),25900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6845,'BRN00001','202203180004','PROD00026',to_date('2022/04/20','YYYY/MM/DD'),60000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6846,'BRN00001','202203180004','PROD00023',to_date('2022/04/20','YYYY/MM/DD'),92400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6847,'BRN00001','202203180004','PROD00024',to_date('2022/04/20','YYYY/MM/DD'),6240,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6389,'BRN00003','202203150004','PROD00048',to_date('2022/04/20','YYYY/MM/DD'),27000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6390,'BRN00001','202203280001','PROD00032',to_date('2022/04/20','YYYY/MM/DD'),28000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6391,'BRN00001','202203180004','PROD00007',to_date('2022/04/20','YYYY/MM/DD'),2880,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6392,'BRN00003','202203280002','PROD00030',to_date('2022/04/20','YYYY/MM/DD'),32160,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6393,'BRN00003','202203180003','PROD00082',to_date('2022/04/20','YYYY/MM/DD'),350000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6394,'BRN00002','202203180004','PROD00137',to_date('2022/04/20','YYYY/MM/DD'),55200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6395,'BRN00003','202203150003','PROD00041',to_date('2022/04/20','YYYY/MM/DD'),16800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6396,'BRN00003','202203150003','PROD00127',to_date('2022/04/20','YYYY/MM/DD'),2500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6397,'BRN00001','202203180002','PROD00137',to_date('2022/04/20','YYYY/MM/DD'),41400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6398,'BRN00002','202203170001','PROD00062',to_date('2022/04/20','YYYY/MM/DD'),300000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6399,'BRN00001','202203160001','PROD00069',to_date('2022/04/20','YYYY/MM/DD'),3596000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6400,'BRN00001','202203180002','PROD00135',to_date('2022/04/20','YYYY/MM/DD'),46800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6401,'BRN00003','202203150004','PROD00085',to_date('2022/04/20','YYYY/MM/DD'),4920000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6402,'BRN00001','202203150006','PROD00133',to_date('2022/04/20','YYYY/MM/DD'),55000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6403,'BRN00002','202203140002','PROD00035',to_date('2022/04/20','YYYY/MM/DD'),210800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6404,'BRN00003','202203180002','PROD00134',to_date('2022/04/20','YYYY/MM/DD'),25600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6405,'BRN00001','202204070001','PROD00028',to_date('2022/04/20','YYYY/MM/DD'),20500,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6406,'BRN00003','202203180003','PROD00108',to_date('2022/04/20','YYYY/MM/DD'),13000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6407,'BRN00002','202203140002','PROD00103',to_date('2022/04/20','YYYY/MM/DD'),107700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6408,'BRN00001','202203150005','PROD00136',to_date('2022/04/20','YYYY/MM/DD'),54000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6409,'BRN00001','202203150005','PROD00124',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6410,'BRN00001','202203140001','PROD00132',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6411,'BRN00001','202203180003','PROD00084',to_date('2022/04/20','YYYY/MM/DD'),1560000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6412,'BRN00002','202203150004','PROD00126',to_date('2022/04/20','YYYY/MM/DD'),11000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6413,'BRN00001','202203180003','PROD00021',to_date('2022/04/20','YYYY/MM/DD'),4760,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6414,'BRN00001','202203180003','PROD00086',to_date('2022/04/20','YYYY/MM/DD'),1960000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6415,'BRN00002','202203180004','PROD00065',to_date('2022/04/20','YYYY/MM/DD'),8000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6416,'BRN00002','202203180001','PROD00081',to_date('2022/04/20','YYYY/MM/DD'),14000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6417,'BRN00002','202204070002','PROD00082',to_date('2022/04/20','YYYY/MM/DD'),70000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6418,'BRN00003','202203140001','PROD00041',to_date('2022/04/20','YYYY/MM/DD'),12600,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6419,'BRN00002','202203180004','PROD00101',to_date('2022/04/20','YYYY/MM/DD'),12500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6420,'BRN00001','202204070001','PROD00070',to_date('2022/04/20','YYYY/MM/DD'),4350000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6421,'BRN00003','202203140002','PROD00076',to_date('2022/04/20','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6422,'BRN00002','202203150001','PROD00072',to_date('2022/04/20','YYYY/MM/DD'),1934000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6423,'BRN00001','202204120001','PROD00138',to_date('2022/04/20','YYYY/MM/DD'),111600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6424,'BRN00001','202203150003','PROD00085',to_date('2022/04/20','YYYY/MM/DD'),3690000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6425,'BRN00001','202203160001','PROD00046',to_date('2022/04/20','YYYY/MM/DD'),32000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6426,'BRN00002','202203150001','PROD00065',to_date('2022/04/20','YYYY/MM/DD'),6400,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6427,'BRN00002','202204120001','PROD00071',to_date('2022/04/20','YYYY/MM/DD'),396000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6428,'BRN00001','202204070001','PROD00126',to_date('2022/04/20','YYYY/MM/DD'),5500,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6429,'BRN00002','202203150003','PROD00056',to_date('2022/04/20','YYYY/MM/DD'),35800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6430,'BRN00003','202203140001','PROD00106',to_date('2022/04/20','YYYY/MM/DD'),3400000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6431,'BRN00002','202203150005','PROD00136',to_date('2022/04/20','YYYY/MM/DD'),43200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6432,'BRN00001','202203150001','PROD00089',to_date('2022/04/20','YYYY/MM/DD'),2490000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6433,'BRN00002','202203180001','PROD00077',to_date('2022/04/20','YYYY/MM/DD'),90000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6434,'BRN00001','202203150004','PROD00086',to_date('2022/04/20','YYYY/MM/DD'),2450000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6435,'BRN00001','202203140001','PROD00051',to_date('2022/04/20','YYYY/MM/DD'),27960,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6436,'BRN00003','202203180001','PROD00080',to_date('2022/04/20','YYYY/MM/DD'),30000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6437,'BRN00002','202204070002','PROD00118',to_date('2022/04/20','YYYY/MM/DD'),22400,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6438,'BRN00002','202203140001','PROD00071',to_date('2022/04/20','YYYY/MM/DD'),396000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6439,'BRN00003','202203150001','PROD00061',to_date('2022/04/20','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6440,'BRN00001','202203280001','PROD00024',to_date('2022/04/20','YYYY/MM/DD'),6240,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6441,'BRN00003','202203180002','PROD00106',to_date('2022/04/20','YYYY/MM/DD'),1360000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6442,'BRN00001','202203150003','PROD00070',to_date('2022/04/20','YYYY/MM/DD'),2900000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6443,'BRN00001','202203150005','PROD00005',to_date('2022/04/20','YYYY/MM/DD'),2820,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6444,'BRN00002','202203170001','PROD00077',to_date('2022/04/20','YYYY/MM/DD'),120000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6445,'BRN00002','202203140001','PROD00038',to_date('2022/04/20','YYYY/MM/DD'),160000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6446,'BRN00001','202204120001','PROD00091',to_date('2022/04/20','YYYY/MM/DD'),17952000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6447,'BRN00001','202203150001','PROD00023',to_date('2022/04/20','YYYY/MM/DD'),123200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6448,'BRN00003','202203150006','PROD00047',to_date('2022/04/20','YYYY/MM/DD'),55800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6449,'BRN00001','202203180002','PROD00019',to_date('2022/04/20','YYYY/MM/DD'),6495000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6450,'BRN00002','202203140002','PROD00133',to_date('2022/04/20','YYYY/MM/DD'),22000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6451,'BRN00001','202204070002','PROD00005',to_date('2022/04/20','YYYY/MM/DD'),940,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6452,'BRN00003','202203180004','PROD00002',to_date('2022/04/20','YYYY/MM/DD'),4550,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6453,'BRN00003','202204070001','PROD00074',to_date('2022/04/20','YYYY/MM/DD'),24000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6454,'BRN00003','202203140001','PROD00038',to_date('2022/04/20','YYYY/MM/DD'),32000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6455,'BRN00003','202204120001','PROD00098',to_date('2022/04/20','YYYY/MM/DD'),174500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6456,'BRN00003','202203180004','PROD00093',to_date('2022/04/20','YYYY/MM/DD'),5898000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6457,'BRN00002','202204070001','PROD00128',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6458,'BRN00001','202203150005','PROD00073',to_date('2022/04/20','YYYY/MM/DD'),11500,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6459,'BRN00002','202203180001','PROD00101',to_date('2022/04/20','YYYY/MM/DD'),7500,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6460,'BRN00001','202203180002','PROD00091',to_date('2022/04/20','YYYY/MM/DD'),8976000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6461,'BRN00003','202203180003','PROD00135',to_date('2022/04/20','YYYY/MM/DD'),23400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6462,'BRN00002','202204120001','PROD00046',to_date('2022/04/20','YYYY/MM/DD'),160000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6463,'BRN00003','202203180003','PROD00034',to_date('2022/04/20','YYYY/MM/DD'),11000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6464,'BRN00001','202203280002','PROD00066',to_date('2022/04/20','YYYY/MM/DD'),12800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6465,'BRN00003','202204120001','PROD00057',to_date('2022/04/20','YYYY/MM/DD'),11240,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6466,'BRN00002','202203150005','PROD00003',to_date('2022/04/20','YYYY/MM/DD'),2760,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6467,'BRN00002','202203180003','PROD00056',to_date('2022/04/20','YYYY/MM/DD'),53700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6468,'BRN00001','202203180002','PROD00037',to_date('2022/04/20','YYYY/MM/DD'),703080,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6469,'BRN00001','202204120001','PROD00114',to_date('2022/04/20','YYYY/MM/DD'),700,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6470,'BRN00003','202203280001','PROD00098',to_date('2022/04/20','YYYY/MM/DD'),139600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6471,'BRN00001','202203150001','PROD00010',to_date('2022/04/20','YYYY/MM/DD'),4950,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6472,'BRN00003','202203150005','PROD00116',to_date('2022/04/20','YYYY/MM/DD'),22400,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6473,'BRN00002','202203180003','PROD00101',to_date('2022/04/20','YYYY/MM/DD'),12500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6474,'BRN00001','202203150004','PROD00138',to_date('2022/04/20','YYYY/MM/DD'),111600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6475,'BRN00003','202203180002','PROD00066',to_date('2022/04/20','YYYY/MM/DD'),3200,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6476,'BRN00001','202203170001','PROD00027',to_date('2022/04/20','YYYY/MM/DD'),31440,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6477,'BRN00002','202203150005','PROD00115',to_date('2022/04/20','YYYY/MM/DD'),5000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6478,'BRN00003','202203160001','PROD00043',to_date('2022/04/20','YYYY/MM/DD'),23200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6479,'BRN00001','202203150004','PROD00045',to_date('2022/04/20','YYYY/MM/DD'),23000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6480,'BRN00002','202203170001','PROD00037',to_date('2022/04/20','YYYY/MM/DD'),1757700,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6481,'BRN00001','202203150006','PROD00023',to_date('2022/04/20','YYYY/MM/DD'),154000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6482,'BRN00001','202204070002','PROD00105',to_date('2022/04/20','YYYY/MM/DD'),1790000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6483,'BRN00001','202203180003','PROD00078',to_date('2022/04/20','YYYY/MM/DD'),80000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6484,'BRN00001','202203280001','PROD00114',to_date('2022/04/20','YYYY/MM/DD'),700,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6485,'BRN00002','202203160001','PROD00027',to_date('2022/04/20','YYYY/MM/DD'),10480,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6486,'BRN00002','202203140001','PROD00072',to_date('2022/04/20','YYYY/MM/DD'),386800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6487,'BRN00001','202203150006','PROD00022',to_date('2022/04/20','YYYY/MM/DD'),30000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6488,'BRN00003','202204070001','PROD00134',to_date('2022/04/20','YYYY/MM/DD'),12800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6489,'BRN00003','202203280002','PROD00093',to_date('2022/04/20','YYYY/MM/DD'),9830000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6490,'BRN00001','202203180003','PROD00014',to_date('2022/04/20','YYYY/MM/DD'),1200000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6491,'BRN00001','202203280002','PROD00091',to_date('2022/04/20','YYYY/MM/DD'),17952000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6492,'BRN00002','202204070001','PROD00094',to_date('2022/04/20','YYYY/MM/DD'),2389000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6493,'BRN00002','202203150005','PROD00092',to_date('2022/04/20','YYYY/MM/DD'),12576000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6494,'BRN00001','202203140001','PROD00113',to_date('2022/04/20','YYYY/MM/DD'),9000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6495,'BRN00003','202204070001','PROD00123',to_date('2022/04/20','YYYY/MM/DD'),70000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6521,'BRN00003','202203280001','PROD00102',to_date('2022/04/20','YYYY/MM/DD'),40000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6522,'BRN00002','202203180001','PROD00033',to_date('2022/04/20','YYYY/MM/DD'),236000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6523,'BRN00003','202203180002','PROD00140',to_date('2022/04/20','YYYY/MM/DD'),59000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6524,'BRN00003','202204070001','PROD00093',to_date('2022/04/20','YYYY/MM/DD'),1966000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6525,'BRN00003','202204070002','PROD00043',to_date('2022/04/20','YYYY/MM/DD'),29000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6526,'BRN00003','202204120001','PROD00141',to_date('2022/04/20','YYYY/MM/DD'),43200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6527,'BRN00003','202203280002','PROD00113',to_date('2022/04/20','YYYY/MM/DD'),3000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6528,'BRN00003','202203180003','PROD00035',to_date('2022/04/20','YYYY/MM/DD'),263500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6529,'BRN00002','202203280002','PROD00076',to_date('2022/04/20','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6530,'BRN00002','202203150005','PROD00001',to_date('2022/04/20','YYYY/MM/DD'),3600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6531,'BRN00003','202204120001','PROD00046',to_date('2022/04/20','YYYY/MM/DD'),64000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6532,'BRN00002','202203280001','PROD00074',to_date('2022/04/20','YYYY/MM/DD'),36000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6533,'BRN00002','202203180002','PROD00026',to_date('2022/04/20','YYYY/MM/DD'),60000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6534,'BRN00001','202203150004','PROD00102',to_date('2022/04/20','YYYY/MM/DD'),20000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6535,'BRN00003','202203180002','PROD00127',to_date('2022/04/20','YYYY/MM/DD'),500,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6536,'BRN00001','202203280002','PROD00125',to_date('2022/04/20','YYYY/MM/DD'),11000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6537,'BRN00002','202203280002','PROD00078',to_date('2022/04/20','YYYY/MM/DD'),100000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6538,'BRN00003','202203150003','PROD00013',to_date('2022/04/20','YYYY/MM/DD'),2400000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6539,'BRN00003','202203150005','PROD00064',to_date('2022/04/20','YYYY/MM/DD'),2000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6540,'BRN00001','202203180004','PROD00034',to_date('2022/04/20','YYYY/MM/DD'),33000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6541,'BRN00001','202203150001','PROD00035',to_date('2022/04/20','YYYY/MM/DD'),105400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6542,'BRN00003','202203150001','PROD00064',to_date('2022/04/20','YYYY/MM/DD'),2000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6543,'BRN00002','202203150006','PROD00028',to_date('2022/04/20','YYYY/MM/DD'),41000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6544,'BRN00001','202203150004','PROD00076',to_date('2022/04/20','YYYY/MM/DD'),30000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6545,'BRN00002','202203180003','PROD00096',to_date('2022/04/20','YYYY/MM/DD'),129500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6546,'BRN00001','202203180002','PROD00129',to_date('2022/04/20','YYYY/MM/DD'),23400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6547,'BRN00001','202203180002','PROD00090',to_date('2022/04/20','YYYY/MM/DD'),18750000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6548,'BRN00001','202203280001','PROD00006',to_date('2022/04/20','YYYY/MM/DD'),950,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6549,'BRN00001','202203140001','PROD00090',to_date('2022/04/20','YYYY/MM/DD'),7500000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6550,'BRN00002','202203180004','PROD00034',to_date('2022/04/20','YYYY/MM/DD'),44000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6551,'BRN00003','202203150001','PROD00127',to_date('2022/04/20','YYYY/MM/DD'),1500,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6552,'BRN00001','202203150001','PROD00021',to_date('2022/04/20','YYYY/MM/DD'),1190,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6553,'BRN00002','202203150001','PROD00023',to_date('2022/04/20','YYYY/MM/DD'),30800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6554,'BRN00002','202203140002','PROD00030',to_date('2022/04/20','YYYY/MM/DD'),24120,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6555,'BRN00002','202203280001','PROD00061',to_date('2022/04/20','YYYY/MM/DD'),6000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6556,'BRN00002','202203180001','PROD00135',to_date('2022/04/20','YYYY/MM/DD'),11700,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6557,'BRN00002','202203150004','PROD00080',to_date('2022/04/20','YYYY/MM/DD'),150000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6558,'BRN00003','202203150004','PROD00027',to_date('2022/04/20','YYYY/MM/DD'),52400,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6559,'BRN00002','202203280001','PROD00102',to_date('2022/04/20','YYYY/MM/DD'),40000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6560,'BRN00003','202203280001','PROD00079',to_date('2022/04/20','YYYY/MM/DD'),9000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6561,'BRN00002','202204070001','PROD00106',to_date('2022/04/20','YYYY/MM/DD'),3400000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6562,'BRN00003','202203140001','PROD00054',to_date('2022/04/20','YYYY/MM/DD'),65000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6563,'BRN00001','202203180002','PROD00060',to_date('2022/04/20','YYYY/MM/DD'),500000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6564,'BRN00002','202203160001','PROD00072',to_date('2022/04/20','YYYY/MM/DD'),1547200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6565,'BRN00001','202203140002','PROD00114',to_date('2022/04/20','YYYY/MM/DD'),3500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6566,'BRN00002','202204120001','PROD00043',to_date('2022/04/20','YYYY/MM/DD'),5800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6567,'BRN00003','202204070002','PROD00117',to_date('2022/04/20','YYYY/MM/DD'),800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6568,'BRN00001','202203280001','PROD00108',to_date('2022/04/20','YYYY/MM/DD'),52000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6569,'BRN00001','202203180004','PROD00097',to_date('2022/04/20','YYYY/MM/DD'),34200,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6570,'BRN00001','202203180003','PROD00032',to_date('2022/04/20','YYYY/MM/DD'),42000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6571,'BRN00003','202203150003','PROD00135',to_date('2022/04/20','YYYY/MM/DD'),35100,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6572,'BRN00001','202204120001','PROD00081',to_date('2022/04/20','YYYY/MM/DD'),70000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6573,'BRN00003','202203150006','PROD00019',to_date('2022/04/20','YYYY/MM/DD'),1299000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6574,'BRN00001','202203150006','PROD00084',to_date('2022/04/20','YYYY/MM/DD'),2340000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6575,'BRN00001','202203180004','PROD00007',to_date('2022/04/20','YYYY/MM/DD'),2880,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6576,'BRN00001','202203180001','PROD00032',to_date('2022/04/20','YYYY/MM/DD'),28000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6577,'BRN00001','202203150001','PROD00007',to_date('2022/04/20','YYYY/MM/DD'),1920,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6578,'BRN00001','202203170001','PROD00049',to_date('2022/04/20','YYYY/MM/DD'),28650,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6579,'BRN00001','202203180003','PROD00044',to_date('2022/04/20','YYYY/MM/DD'),378000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6580,'BRN00003','202203150005','PROD00107',to_date('2022/04/20','YYYY/MM/DD'),96000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6581,'BRN00001','202203150004','PROD00003',to_date('2022/04/20','YYYY/MM/DD'),1840,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6582,'BRN00002','202204070002','PROD00067',to_date('2022/04/20','YYYY/MM/DD'),6200,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6583,'BRN00003','202203140001','PROD00074',to_date('2022/04/20','YYYY/MM/DD'),12000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6584,'BRN00002','202203150004','PROD00060',to_date('2022/04/20','YYYY/MM/DD'),500000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6585,'BRN00001','202203280002','PROD00121',to_date('2022/04/20','YYYY/MM/DD'),12500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6586,'BRN00001','202204070001','PROD00076',to_date('2022/04/20','YYYY/MM/DD'),24000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6587,'BRN00003','202203140001','PROD00037',to_date('2022/04/20','YYYY/MM/DD'),1757700,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6588,'BRN00003','202203180002','PROD00086',to_date('2022/04/20','YYYY/MM/DD'),490000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6589,'BRN00003','202203280001','PROD00031',to_date('2022/04/20','YYYY/MM/DD'),29900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6590,'BRN00002','202203150005','PROD00025',to_date('2022/04/20','YYYY/MM/DD'),24900,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6591,'BRN00003','202203170001','PROD00044',to_date('2022/04/20','YYYY/MM/DD'),945000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6592,'BRN00001','202203160001','PROD00029',to_date('2022/04/20','YYYY/MM/DD'),17920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6593,'BRN00002','202203180001','PROD00124',to_date('2022/04/20','YYYY/MM/DD'),22000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6594,'BRN00001','202203180004','PROD00066',to_date('2022/04/20','YYYY/MM/DD'),9600,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6595,'BRN00002','202204070001','PROD00055',to_date('2022/04/20','YYYY/MM/DD'),87400,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6596,'BRN00001','202203180002','PROD00105',to_date('2022/04/20','YYYY/MM/DD'),1074000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6597,'BRN00003','202204070001','PROD00048',to_date('2022/04/20','YYYY/MM/DD'),81000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6598,'BRN00003','202203280001','PROD00048',to_date('2022/04/20','YYYY/MM/DD'),108000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6599,'BRN00003','202203280002','PROD00005',to_date('2022/04/20','YYYY/MM/DD'),4700,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6600,'BRN00001','202203150003','PROD00023',to_date('2022/04/20','YYYY/MM/DD'),61600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6601,'BRN00002','202204070001','PROD00119',to_date('2022/04/20','YYYY/MM/DD'),2400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6602,'BRN00001','202203180002','PROD00014',to_date('2022/04/20','YYYY/MM/DD'),480000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6603,'BRN00001','202204120001','PROD00092',to_date('2022/04/20','YYYY/MM/DD'),6288000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6604,'BRN00002','202203180002','PROD00124',to_date('2022/04/20','YYYY/MM/DD'),11000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6605,'BRN00002','202203280002','PROD00001',to_date('2022/04/20','YYYY/MM/DD'),4500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6606,'BRN00001','202203280002','PROD00138',to_date('2022/04/20','YYYY/MM/DD'),83700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6206,'BRN00002','202203150004','PROD00071',to_date('2022/04/09','YYYY/MM/DD'),990000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6207,'BRN00003','202203150006','PROD00031',to_date('2022/04/09','YYYY/MM/DD'),119600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6208,'BRN00003','202204070002','PROD00062',to_date('2022/04/09','YYYY/MM/DD'),100000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6209,'BRN00001','202203280001','PROD00012',to_date('2022/04/09','YYYY/MM/DD'),2020,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6210,'BRN00002','202203150006','PROD00071',to_date('2022/04/09','YYYY/MM/DD'),396000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6211,'BRN00003','202203150003','PROD00016',to_date('2022/04/09','YYYY/MM/DD'),600000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6212,'BRN00003','202203180004','PROD00052',to_date('2022/04/09','YYYY/MM/DD'),25800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6213,'BRN00001','202203180004','PROD00070',to_date('2022/04/09','YYYY/MM/DD'),4350000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6214,'BRN00003','202203150001','PROD00065',to_date('2022/04/09','YYYY/MM/DD'),6400,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6215,'BRN00001','202203180004','PROD00062',to_date('2022/04/09','YYYY/MM/DD'),500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6216,'BRN00001','202203150005','PROD00038',to_date('2022/04/09','YYYY/MM/DD'),128000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6217,'BRN00003','202204070001','PROD00016',to_date('2022/04/09','YYYY/MM/DD'),900000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6218,'BRN00003','202203180001','PROD00043',to_date('2022/04/09','YYYY/MM/DD'),11600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6204,'BRN00002','202203180001','PROD00056',to_date('2022/04/09','YYYY/MM/DD'),53700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6205,'BRN00002','202203160001','PROD00026',to_date('2022/04/09','YYYY/MM/DD'),100000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6219,'BRN00003','202203140001','PROD00020',to_date('2022/04/09','YYYY/MM/DD'),4000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6220,'BRN00003','202203150001','PROD00005',to_date('2022/04/09','YYYY/MM/DD'),940,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6221,'BRN00003','202203180003','PROD00015',to_date('2022/04/09','YYYY/MM/DD'),3000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6222,'BRN00001','202204070002','PROD00016',to_date('2022/04/09','YYYY/MM/DD'),900000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6223,'BRN00001','202203180001','PROD00058',to_date('2022/04/09','YYYY/MM/DD'),60000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6224,'BRN00003','202203180002','PROD00048',to_date('2022/04/09','YYYY/MM/DD'),27000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6225,'BRN00001','202204070002','PROD00066',to_date('2022/04/09','YYYY/MM/DD'),9600,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6226,'BRN00002','202203160001','PROD00063',to_date('2022/04/09','YYYY/MM/DD'),87000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6227,'BRN00003','202203180004','PROD00010',to_date('2022/04/09','YYYY/MM/DD'),1980,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6228,'BRN00001','202203180001','PROD00017',to_date('2022/04/09','YYYY/MM/DD'),1980000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6229,'BRN00003','202203170001','PROD00011',to_date('2022/04/09','YYYY/MM/DD'),1000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6230,'BRN00002','202203280002','PROD00068',to_date('2022/04/10','YYYY/MM/DD'),239600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6231,'BRN00002','202203150003','PROD00028',to_date('2022/04/10','YYYY/MM/DD'),82000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6232,'BRN00003','202203180001','PROD00034',to_date('2022/04/10','YYYY/MM/DD'),33000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6233,'BRN00002','202203280002','PROD00036',to_date('2022/04/10','YYYY/MM/DD'),24500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6234,'BRN00001','202203160001','PROD00045',to_date('2022/04/10','YYYY/MM/DD'),92000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6235,'BRN00001','202203280002','PROD00060',to_date('2022/04/10','YYYY/MM/DD'),2500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6236,'BRN00001','202204070001','PROD00011',to_date('2022/04/10','YYYY/MM/DD'),1000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6237,'BRN00001','202204070002','PROD00057',to_date('2022/04/10','YYYY/MM/DD'),14050,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6238,'BRN00003','202203140001','PROD00044',to_date('2022/04/10','YYYY/MM/DD'),378000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6239,'BRN00003','202203140002','PROD00002',to_date('2022/04/10','YYYY/MM/DD'),2730,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6240,'BRN00003','202203150001','PROD00008',to_date('2022/04/10','YYYY/MM/DD'),2910,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6241,'BRN00002','202203180003','PROD00057',to_date('2022/04/10','YYYY/MM/DD'),11240,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6242,'BRN00003','202203150001','PROD00014',to_date('2022/04/10','YYYY/MM/DD'),480000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6243,'BRN00003','202204070001','PROD00026',to_date('2022/04/10','YYYY/MM/DD'),40000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6244,'BRN00002','202204070002','PROD00065',to_date('2022/04/10','YYYY/MM/DD'),8000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6245,'BRN00001','202203170001','PROD00005',to_date('2022/04/10','YYYY/MM/DD'),3760,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6246,'BRN00003','202203150003','PROD00025',to_date('2022/04/10','YYYY/MM/DD'),19920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6247,'BRN00003','202203160001','PROD00019',to_date('2022/04/10','YYYY/MM/DD'),1299000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6248,'BRN00002','202203140001','PROD00022',to_date('2022/04/10','YYYY/MM/DD'),6000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6249,'BRN00001','202204120001','PROD00045',to_date('2022/04/10','YYYY/MM/DD'),92000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6250,'BRN00003','202203150001','PROD00058',to_date('2022/04/10','YYYY/MM/DD'),45000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6251,'BRN00002','202203150006','PROD00008',to_date('2022/04/10','YYYY/MM/DD'),1940,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6252,'BRN00003','202203150003','PROD00047',to_date('2022/04/10','YYYY/MM/DD'),111600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6253,'BRN00003','202203150003','PROD00036',to_date('2022/04/10','YYYY/MM/DD'),24500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6254,'BRN00001','202204070001','PROD00060',to_date('2022/04/10','YYYY/MM/DD'),2000000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6255,'BRN00002','202203150001','PROD00005',to_date('2022/04/10','YYYY/MM/DD'),1880,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6256,'BRN00003','202203150004','PROD00010',to_date('2022/04/10','YYYY/MM/DD'),4950,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6257,'BRN00002','202203150001','PROD00038',to_date('2022/04/10','YYYY/MM/DD'),96000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6258,'BRN00002','202204070001','PROD00011',to_date('2022/04/10','YYYY/MM/DD'),4000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6259,'BRN00003','202203180002','PROD00008',to_date('2022/04/10','YYYY/MM/DD'),3880,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6260,'BRN00002','202203150006','PROD00020',to_date('2022/04/10','YYYY/MM/DD'),10000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6261,'BRN00002','202203140001','PROD00059',to_date('2022/04/10','YYYY/MM/DD'),5500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6262,'BRN00001','202203180004','PROD00031',to_date('2022/04/10','YYYY/MM/DD'),119600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6263,'BRN00003','202203180002','PROD00057',to_date('2022/04/10','YYYY/MM/DD'),5620,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6264,'BRN00003','202204070002','PROD00072',to_date('2022/04/10','YYYY/MM/DD'),773600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6265,'BRN00002','202204120001','PROD00010',to_date('2022/04/10','YYYY/MM/DD'),2970,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6266,'BRN00001','202203150001','PROD00038',to_date('2022/04/10','YYYY/MM/DD'),64000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6267,'BRN00003','202203180002','PROD00009',to_date('2022/04/10','YYYY/MM/DD'),1960,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6268,'BRN00001','202203180003','PROD00035',to_date('2022/04/10','YYYY/MM/DD'),210800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6269,'BRN00003','202203180001','PROD00070',to_date('2022/04/10','YYYY/MM/DD'),7250000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6270,'BRN00001','202203150001','PROD00035',to_date('2022/04/11','YYYY/MM/DD'),210800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6271,'BRN00001','202203150006','PROD00057',to_date('2022/04/11','YYYY/MM/DD'),14050,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6272,'BRN00002','202203180001','PROD00054',to_date('2022/04/11','YYYY/MM/DD'),65000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6273,'BRN00001','202204120001','PROD00058',to_date('2022/04/11','YYYY/MM/DD'),75000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6274,'BRN00003','202204070001','PROD00035',to_date('2022/04/11','YYYY/MM/DD'),210800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6275,'BRN00003','202203180002','PROD00037',to_date('2022/04/11','YYYY/MM/DD'),1054620,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6276,'BRN00001','202204120001','PROD00059',to_date('2022/04/11','YYYY/MM/DD'),1100000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6277,'BRN00003','202203280002','PROD00056',to_date('2022/04/11','YYYY/MM/DD'),17900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6278,'BRN00003','202203150005','PROD00047',to_date('2022/04/11','YYYY/MM/DD'),111600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6279,'BRN00003','202203150004','PROD00061',to_date('2022/04/11','YYYY/MM/DD'),30000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6280,'BRN00002','202203140001','PROD00022',to_date('2022/04/11','YYYY/MM/DD'),24000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6281,'BRN00003','202203180003','PROD00021',to_date('2022/04/11','YYYY/MM/DD'),3570,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6282,'BRN00002','202203180002','PROD00018',to_date('2022/04/11','YYYY/MM/DD'),1100000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6283,'BRN00002','202204070001','PROD00003',to_date('2022/04/11','YYYY/MM/DD'),2760,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6284,'BRN00003','202203160001','PROD00063',to_date('2022/04/11','YYYY/MM/DD'),87000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6285,'BRN00003','202203140002','PROD00032',to_date('2022/04/11','YYYY/MM/DD'),14000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6286,'BRN00001','202203180004','PROD00024',to_date('2022/04/11','YYYY/MM/DD'),8320,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6287,'BRN00002','202203160001','PROD00059',to_date('2022/04/11','YYYY/MM/DD'),2200000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6288,'BRN00002','202203140002','PROD00041',to_date('2022/04/11','YYYY/MM/DD'),16800,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6289,'BRN00002','202203180003','PROD00021',to_date('2022/04/11','YYYY/MM/DD'),4760,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6290,'BRN00003','202203150005','PROD00001',to_date('2022/04/11','YYYY/MM/DD'),4500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6291,'BRN00002','202203280001','PROD00005',to_date('2022/04/11','YYYY/MM/DD'),940,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6292,'BRN00002','202203280002','PROD00013',to_date('2022/04/11','YYYY/MM/DD'),4800000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6293,'BRN00003','202203150003','PROD00066',to_date('2022/04/11','YYYY/MM/DD'),6400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6294,'BRN00001','202204070002','PROD00023',to_date('2022/04/11','YYYY/MM/DD'),123200,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6295,'BRN00002','202203180004','PROD00046',to_date('2022/04/11','YYYY/MM/DD'),64000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6296,'BRN00003','202204070002','PROD00047',to_date('2022/04/11','YYYY/MM/DD'),111600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6297,'BRN00003','202203150006','PROD00072',to_date('2022/04/11','YYYY/MM/DD'),1934000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6298,'BRN00003','202203150003','PROD00035',to_date('2022/04/11','YYYY/MM/DD'),105400,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6299,'BRN00003','202203280001','PROD00043',to_date('2022/04/11','YYYY/MM/DD'),17400,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6300,'BRN00003','202204070002','PROD00068',to_date('2022/04/11','YYYY/MM/DD'),299500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6301,'BRN00001','202203140002','PROD00054',to_date('2022/04/11','YYYY/MM/DD'),52000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6302,'BRN00003','202203150005','PROD00041',to_date('2022/04/11','YYYY/MM/DD'),12600,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6303,'BRN00002','202203180001','PROD00019',to_date('2022/04/11','YYYY/MM/DD'),6495000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6304,'BRN00003','202203280001','PROD00069',to_date('2022/04/11','YYYY/MM/DD'),3596000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6305,'BRN00002','202203150004','PROD00030',to_date('2022/04/11','YYYY/MM/DD'),16080,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6306,'BRN00002','202203180003','PROD00015',to_date('2022/04/11','YYYY/MM/DD'),6000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6307,'BRN00002','202203150003','PROD00003',to_date('2022/04/11','YYYY/MM/DD'),2760,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6308,'BRN00001','202203150001','PROD00034',to_date('2022/04/11','YYYY/MM/DD'),22000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6309,'BRN00001','202203180001','PROD00013',to_date('2022/04/11','YYYY/MM/DD'),1200000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6310,'BRN00003','202203160001','PROD00052',to_date('2022/04/11','YYYY/MM/DD'),38700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6311,'BRN00003','202204070001','PROD00060',to_date('2022/04/11','YYYY/MM/DD'),500000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6312,'BRN00003','202203140002','PROD00022',to_date('2022/04/11','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6313,'BRN00003','202203160001','PROD00027',to_date('2022/04/11','YYYY/MM/DD'),52400,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6314,'BRN00002','202203140001','PROD00015',to_date('2022/04/11','YYYY/MM/DD'),12000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6315,'BRN00002','202203280001','PROD00072',to_date('2022/04/11','YYYY/MM/DD'),386800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6316,'BRN00001','202203150004','PROD00017',to_date('2022/04/11','YYYY/MM/DD'),990000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6317,'BRN00001','202203150003','PROD00016',to_date('2022/04/11','YYYY/MM/DD'),300000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6318,'BRN00003','202204120001','PROD00024',to_date('2022/04/11','YYYY/MM/DD'),8320,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6319,'BRN00002','202203140002','PROD00045',to_date('2022/04/11','YYYY/MM/DD'),69000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6320,'BRN00001','202203150005','PROD00030',to_date('2022/04/11','YYYY/MM/DD'),8040,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6321,'BRN00003','202203160001','PROD00057',to_date('2022/04/20','YYYY/MM/DD'),14050,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6322,'BRN00002','202203180004','PROD00040',to_date('2022/04/20','YYYY/MM/DD'),7920000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6323,'BRN00001','202203160001','PROD00022',to_date('2022/04/20','YYYY/MM/DD'),24000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6324,'BRN00002','202203160001','PROD00060',to_date('2022/04/20','YYYY/MM/DD'),2000000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6325,'BRN00001','202203180001','PROD00055',to_date('2022/04/20','YYYY/MM/DD'),349600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6326,'BRN00001','202203140001','PROD00015',to_date('2022/04/20','YYYY/MM/DD'),15000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6327,'BRN00003','202203140002','PROD00027',to_date('2022/04/20','YYYY/MM/DD'),31440,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6328,'BRN00002','202203140001','PROD00070',to_date('2022/04/20','YYYY/MM/DD'),1450000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6329,'BRN00001','202203150001','PROD00019',to_date('2022/04/20','YYYY/MM/DD'),2598000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6330,'BRN00001','202203280002','PROD00013',to_date('2022/04/20','YYYY/MM/DD'),2400000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6331,'BRN00001','202203140002','PROD00026',to_date('2022/04/20','YYYY/MM/DD'),40000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6332,'BRN00003','202203280001','PROD00007',to_date('2022/04/20','YYYY/MM/DD'),960,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6333,'BRN00003','202204070001','PROD00002',to_date('2022/04/20','YYYY/MM/DD'),4550,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6334,'BRN00001','202203150001','PROD00064',to_date('2022/04/20','YYYY/MM/DD'),8000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6050,'BRN00002','202203140001','PROD00003',to_date('2022/04/06','YYYY/MM/DD'),4600,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6051,'BRN00003','202203150003','PROD00019',to_date('2022/04/06','YYYY/MM/DD'),2598000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6052,'BRN00002','202203180003','PROD00070',to_date('2022/04/06','YYYY/MM/DD'),7250000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6053,'BRN00002','202203180002','PROD00052',to_date('2022/04/06','YYYY/MM/DD'),12900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6054,'BRN00003','202203280001','PROD00050',to_date('2022/04/06','YYYY/MM/DD'),39200,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6055,'BRN00001','202203140002','PROD00011',to_date('2022/04/06','YYYY/MM/DD'),1000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6056,'BRN00001','202203150004','PROD00020',to_date('2022/04/06','YYYY/MM/DD'),8000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6057,'BRN00002','202203150003','PROD00005',to_date('2022/04/06','YYYY/MM/DD'),1880,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6058,'BRN00003','202203150001','PROD00065',to_date('2022/04/07','YYYY/MM/DD'),1600,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6059,'BRN00003','202203150003','PROD00021',to_date('2022/04/07','YYYY/MM/DD'),1190,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6060,'BRN00002','202204070001','PROD00019',to_date('2022/04/07','YYYY/MM/DD'),6495000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6061,'BRN00001','202203150003','PROD00021',to_date('2022/04/07','YYYY/MM/DD'),4760,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6062,'BRN00003','202203180003','PROD00057',to_date('2022/04/07','YYYY/MM/DD'),8430,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6063,'BRN00002','202203280002','PROD00007',to_date('2022/04/07','YYYY/MM/DD'),1920,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6064,'BRN00001','202203140002','PROD00022',to_date('2022/04/07','YYYY/MM/DD'),18000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6065,'BRN00003','202203180001','PROD00026',to_date('2022/04/07','YYYY/MM/DD'),100000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6066,'BRN00003','202203180002','PROD00035',to_date('2022/04/07','YYYY/MM/DD'),158100,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6067,'BRN00001','202203180004','PROD00039',to_date('2022/04/07','YYYY/MM/DD'),147000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6068,'BRN00003','202203280002','PROD00019',to_date('2022/04/07','YYYY/MM/DD'),2598000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6069,'BRN00002','202203150004','PROD00031',to_date('2022/04/07','YYYY/MM/DD'),59800,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6070,'BRN00001','202204070001','PROD00032',to_date('2022/04/07','YYYY/MM/DD'),14000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6071,'BRN00003','202203140001','PROD00013',to_date('2022/04/07','YYYY/MM/DD'),3600000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6072,'BRN00001','202203180002','PROD00001',to_date('2022/04/07','YYYY/MM/DD'),2700,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6073,'BRN00002','202203170001','PROD00025',to_date('2022/04/07','YYYY/MM/DD'),19920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6074,'BRN00001','202203180002','PROD00062',to_date('2022/04/07','YYYY/MM/DD'),300000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6075,'BRN00002','202203280002','PROD00070',to_date('2022/04/07','YYYY/MM/DD'),2900000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6076,'BRN00001','202203150001','PROD00047',to_date('2022/04/07','YYYY/MM/DD'),111600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6077,'BRN00002','202203150005','PROD00047',to_date('2022/04/07','YYYY/MM/DD'),27900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6078,'BRN00003','202203150003','PROD00038',to_date('2022/04/07','YYYY/MM/DD'),64000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6079,'BRN00003','202203180001','PROD00045',to_date('2022/04/07','YYYY/MM/DD'),69000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6080,'BRN00001','202203280001','PROD00016',to_date('2022/04/07','YYYY/MM/DD'),1200000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6081,'BRN00003','202203180004','PROD00024',to_date('2022/04/07','YYYY/MM/DD'),10400,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6082,'BRN00002','202203170001','PROD00048',to_date('2022/04/07','YYYY/MM/DD'),135000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6083,'BRN00003','202203150001','PROD00026',to_date('2022/04/07','YYYY/MM/DD'),40000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6084,'BRN00001','202203180002','PROD00059',to_date('2022/04/07','YYYY/MM/DD'),1100000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6085,'BRN00002','202203180002','PROD00046',to_date('2022/04/07','YYYY/MM/DD'),160000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6086,'BRN00003','202203180001','PROD00030',to_date('2022/04/07','YYYY/MM/DD'),16080,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6087,'BRN00001','202203150004','PROD00034',to_date('2022/04/07','YYYY/MM/DD'),55000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6088,'BRN00001','202203280002','PROD00016',to_date('2022/04/07','YYYY/MM/DD'),300000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6089,'BRN00003','202203180001','PROD00052',to_date('2022/04/07','YYYY/MM/DD'),12900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6090,'BRN00001','202203280002','PROD00054',to_date('2022/04/07','YYYY/MM/DD'),39000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6091,'BRN00001','202203180003','PROD00010',to_date('2022/04/07','YYYY/MM/DD'),2970,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6092,'BRN00001','202203280002','PROD00021',to_date('2022/04/07','YYYY/MM/DD'),4760,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6093,'BRN00002','202203280001','PROD00072',to_date('2022/04/07','YYYY/MM/DD'),773600,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6094,'BRN00003','202204070002','PROD00014',to_date('2022/04/07','YYYY/MM/DD'),480000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6095,'BRN00001','202203150005','PROD00028',to_date('2022/04/07','YYYY/MM/DD'),102500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6096,'BRN00003','202203180002','PROD00038',to_date('2022/04/07','YYYY/MM/DD'),160000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6097,'BRN00001','202203180004','PROD00047',to_date('2022/04/07','YYYY/MM/DD'),139500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6098,'BRN00001','202203150005','PROD00057',to_date('2022/04/07','YYYY/MM/DD'),14050,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6099,'BRN00002','202203160001','PROD00058',to_date('2022/04/07','YYYY/MM/DD'),60000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6100,'BRN00002','202203180001','PROD00063',to_date('2022/04/07','YYYY/MM/DD'),58000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6101,'BRN00003','202203140001','PROD00023',to_date('2022/04/08','YYYY/MM/DD'),30800,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6102,'BRN00001','202203180004','PROD00039',to_date('2022/04/08','YYYY/MM/DD'),98000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6103,'BRN00002','202203160001','PROD00009',to_date('2022/04/08','YYYY/MM/DD'),2940,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6104,'BRN00001','202203280002','PROD00071',to_date('2022/04/08','YYYY/MM/DD'),198000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6105,'BRN00003','202203140001','PROD00071',to_date('2022/04/08','YYYY/MM/DD'),792000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6106,'BRN00003','202203150005','PROD00022',to_date('2022/04/08','YYYY/MM/DD'),12000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6107,'BRN00001','202203180002','PROD00044',to_date('2022/04/08','YYYY/MM/DD'),189000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6108,'BRN00001','202203150003','PROD00037',to_date('2022/04/08','YYYY/MM/DD'),1406160,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6109,'BRN00003','202203150006','PROD00056',to_date('2022/04/08','YYYY/MM/DD'),17900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6110,'BRN00002','202203150006','PROD00062',to_date('2022/04/08','YYYY/MM/DD'),200000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6111,'BRN00003','202203180004','PROD00044',to_date('2022/04/08','YYYY/MM/DD'),567000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6112,'BRN00002','202203170001','PROD00024',to_date('2022/04/08','YYYY/MM/DD'),8320,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6113,'BRN00001','202203140001','PROD00018',to_date('2022/04/08','YYYY/MM/DD'),5500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6114,'BRN00001','202203180003','PROD00036',to_date('2022/04/08','YYYY/MM/DD'),9800000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6115,'BRN00001','202203180004','PROD00039',to_date('2022/04/08','YYYY/MM/DD'),49000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6116,'BRN00003','202203170001','PROD00054',to_date('2022/04/08','YYYY/MM/DD'),26000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6117,'BRN00003','202203150003','PROD00058',to_date('2022/04/08','YYYY/MM/DD'),15000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6118,'BRN00002','202203160001','PROD00004',to_date('2022/04/08','YYYY/MM/DD'),4650,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6119,'BRN00001','202204070002','PROD00028',to_date('2022/04/08','YYYY/MM/DD'),41000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6120,'BRN00001','202203280002','PROD00003',to_date('2022/04/08','YYYY/MM/DD'),920,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6121,'BRN00002','202204070002','PROD00046',to_date('2022/04/08','YYYY/MM/DD'),128000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6122,'BRN00003','202203150006','PROD00006',to_date('2022/04/08','YYYY/MM/DD'),2850,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6123,'BRN00003','202203150003','PROD00038',to_date('2022/04/08','YYYY/MM/DD'),128000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6124,'BRN00001','202203150006','PROD00061',to_date('2022/04/08','YYYY/MM/DD'),30000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6125,'BRN00003','202203150003','PROD00046',to_date('2022/04/08','YYYY/MM/DD'),32000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6126,'BRN00001','202204070001','PROD00068',to_date('2022/04/08','YYYY/MM/DD'),239600,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6127,'BRN00001','202203180003','PROD00002',to_date('2022/04/08','YYYY/MM/DD'),910,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6337,'BRN00002','202203140002','PROD00010',to_date('2022/04/20','YYYY/MM/DD'),4950,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6338,'BRN00002','202203160001','PROD00069',to_date('2022/04/20','YYYY/MM/DD'),3596000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6339,'BRN00002','202203180004','PROD00068',to_date('2022/04/20','YYYY/MM/DD'),299500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6340,'BRN00001','202204120001','PROD00054',to_date('2022/04/20','YYYY/MM/DD'),52000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6341,'BRN00001','202203180002','PROD00016',to_date('2022/04/20','YYYY/MM/DD'),900000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6342,'BRN00002','202203170001','PROD00029',to_date('2022/04/20','YYYY/MM/DD'),17920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6343,'BRN00002','202203180004','PROD00062',to_date('2022/04/20','YYYY/MM/DD'),300000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6344,'BRN00002','202203180001','PROD00066',to_date('2022/04/20','YYYY/MM/DD'),9600,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6345,'BRN00002','202203170001','PROD00047',to_date('2022/04/20','YYYY/MM/DD'),139500,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6346,'BRN00003','202203280002','PROD00070',to_date('2022/04/20','YYYY/MM/DD'),1450000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6347,'BRN00002','202204070001','PROD00008',to_date('2022/04/20','YYYY/MM/DD'),4850,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6348,'BRN00001','202203170001','PROD00032',to_date('2022/04/20','YYYY/MM/DD'),70000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6349,'BRN00003','202203170001','PROD00029',to_date('2022/04/20','YYYY/MM/DD'),17920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6350,'BRN00001','202203180004','PROD00030',to_date('2022/04/20','YYYY/MM/DD'),8040,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6351,'BRN00003','202203160001','PROD00004',to_date('2022/04/20','YYYY/MM/DD'),1860,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6352,'BRN00003','202203180004','PROD00051',to_date('2022/04/20','YYYY/MM/DD'),34950,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6353,'BRN00001','202204070002','PROD00027',to_date('2022/04/20','YYYY/MM/DD'),41920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6354,'BRN00001','202203180003','PROD00066',to_date('2022/04/20','YYYY/MM/DD'),16000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6355,'BRN00001','202203280002','PROD00071',to_date('2022/04/20','YYYY/MM/DD'),990000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6356,'BRN00002','202203150003','PROD00009',to_date('2022/04/20','YYYY/MM/DD'),1960,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6357,'BRN00003','202204070001','PROD00044',to_date('2022/04/20','YYYY/MM/DD'),567000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6358,'BRN00002','202203280002','PROD00057',to_date('2022/04/20','YYYY/MM/DD'),14050,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6359,'BRN00002','202203160001','PROD00025',to_date('2022/04/20','YYYY/MM/DD'),14940,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6360,'BRN00002','202203140002','PROD00063',to_date('2022/04/20','YYYY/MM/DD'),87000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6361,'BRN00002','202203180001','PROD00062',to_date('2022/04/20','YYYY/MM/DD'),500000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6362,'BRN00001','202203150005','PROD00017',to_date('2022/04/20','YYYY/MM/DD'),4950000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6363,'BRN00002','202204070002','PROD00033',to_date('2022/04/20','YYYY/MM/DD'),118000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6364,'BRN00003','202204070001','PROD00007',to_date('2022/04/20','YYYY/MM/DD'),2880,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6365,'BRN00001','202203140002','PROD00016',to_date('2022/04/20','YYYY/MM/DD'),600000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6366,'BRN00002','202203180003','PROD00009',to_date('2022/04/20','YYYY/MM/DD'),3920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6367,'BRN00003','202204070002','PROD00012',to_date('2022/04/20','YYYY/MM/DD'),3030,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6368,'BRN00003','202203170001','PROD00029',to_date('2022/04/20','YYYY/MM/DD'),17920,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6369,'BRN00001','202203180001','PROD00018',to_date('2022/04/20','YYYY/MM/DD'),4400000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6370,'BRN00002','202203150001','PROD00026',to_date('2022/04/20','YYYY/MM/DD'),80000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6371,'BRN00001','202203180002','PROD00054',to_date('2022/04/20','YYYY/MM/DD'),13000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6372,'BRN00001','202204070002','PROD00037',to_date('2022/04/20','YYYY/MM/DD'),351540,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6373,'BRN00002','202203160001','PROD00010',to_date('2022/04/20','YYYY/MM/DD'),1980,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6374,'BRN00002','202203180001','PROD00010',to_date('2022/04/20','YYYY/MM/DD'),3960,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6375,'BRN00002','202203140002','PROD00060',to_date('2022/04/20','YYYY/MM/DD'),500000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6376,'BRN00002','202203170001','PROD00049',to_date('2022/04/20','YYYY/MM/DD'),5730,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6377,'BRN00002','202204120001','PROD00053',to_date('2022/04/20','YYYY/MM/DD'),19900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6378,'BRN00003','202204120001','PROD00055',to_date('2022/04/20','YYYY/MM/DD'),87400,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6379,'BRN00002','202203150004','PROD00024',to_date('2022/04/20','YYYY/MM/DD'),6240,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6380,'BRN00002','202203280002','PROD00048',to_date('2022/04/20','YYYY/MM/DD'),135000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6381,'BRN00002','202203180002','PROD00024',to_date('2022/04/20','YYYY/MM/DD'),4160,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6382,'BRN00002','202203180002','PROD00051',to_date('2022/04/20','YYYY/MM/DD'),6990,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6383,'BRN00001','202203150006','PROD00033',to_date('2022/04/20','YYYY/MM/DD'),59000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6384,'BRN00002','202203150001','PROD00032',to_date('2022/04/20','YYYY/MM/DD'),42000,3);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6385,'BRN00002','202204120001','PROD00032',to_date('2022/04/20','YYYY/MM/DD'),56000,4);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6386,'BRN00002','202204070001','PROD00064',to_date('2022/04/20','YYYY/MM/DD'),10000,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6387,'BRN00002','202203180002','PROD00002',to_date('2022/04/20','YYYY/MM/DD'),1820,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6388,'BRN00001','202204120001','PROD00037',to_date('2022/04/20','YYYY/MM/DD'),1757700,5);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6858,'BRN00001','202203180004','PROD00071',to_date('2022/04/21','YYYY/MM/DD'),198000,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6859,'BRN00001','202203180004','PROD00096',to_date('2022/04/21','YYYY/MM/DD'),25900,1);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6335,'BRN00002','202203180002','PROD00069',to_date('2022/04/20','YYYY/MM/DD'),1798000,2);
Insert into CUST_NTSL (CUST_NTSL_ID,BRNCOFC_ID,CUST_ID,PROD_INFO_ID,CUST_NTSL_DT,CUST_NTSL_AMT,CUST_NTSL_QTY) values (6336,'BRN00002','202204070001','PROD00028',to_date('2022/04/20','YYYY/MM/DD'),61500,3);
REM INSERTING into EATRZ
SET DEFINE OFF;
Insert into EATRZ (EATRZ_ID,EATRZ_FRM_ID,EATRZ_SE,EATRZ_APRVR,EATRZ_DMND_YMD,EATRZ_DDLN_DT,EATRZ_APRV_YN,EATRZ_DT,EATRZ_SEND_ID) values ('ET2022032100001','EF2022032100001','P','EMP00001',to_date('2022/03/21','YYYY/MM/DD'),to_date('2022/04/12','YYYY/MM/DD'),'Y',to_date('2022/03/21','YYYY/MM/DD'),'EMP00006');
REM INSERTING into EATRZ_FRM
SET DEFINE OFF;
Insert into EATRZ_FRM (EATRZ_FRM_ID,EATRZ_FRM_CN,EATRZ_FRM_DT,EMP_ID,EATRZ_FRM_SE_ID) values ('EF2022032100001','어쩌구저쩌구쌸라쌸라',to_date('2022/03/21','YYYY/MM/DD'),'EMP00011','EATRZ001');
REM INSERTING into EATRZ_FRM_SE
SET DEFINE OFF;
Insert into EATRZ_FRM_SE (EATRZ_FRM_SE_ID,EATRZ_FRM_SE_NM) values ('EATRZ002','휴가신청서');
Insert into EATRZ_FRM_SE (EATRZ_FRM_SE_ID,EATRZ_FRM_SE_NM) values ('EATRZ001','연차신청서');
REM INSERTING into EMP
SET DEFINE OFF;
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00014','배주현',to_date('2021/09/06','YYYY/MM/DD'),to_date('1999/02/08','YYYY/MM/DD'),'zx4496@naver.com','1234','/resources/upload/2022/03/30/405c1c45-0f32-43e0-8f51-1e03334c05bb-아이린 증사.jpg','192.168.123.108','3333-00-354899','정규직',null,'A115','010-3967-4976','1','BRN00003',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00015','박지은',to_date('2021/11/01','YYYY/MM/DD'),to_date('1999/01/22','YYYY/MM/DD'),'kki@naber.com','4321','/resources/upload/2022/03/18/bee03d19-3e55-462c-8065-5a81c5b769e6-감자증ㅅ.png','192.168.123.108','3333-00-354892','정규직',null,'A203','010-1244-3332','1','BRN00003',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00012','정나나',to_date('2022/03/17','YYYY/MM/DD'),to_date('2022/03/19','YYYY/MM/DD'),'ZX4496@NAVER.COM','1234','/resources/upload/2022/03/15/0a3aa381-ef3f-4276-a053-7cc2469b1364-Seul컴_태연_INVU_11.jpg','6541-684','3514545','퇴사',null,'A203','010-2156-1454','1','BRN00003',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00013','이지은',to_date('2022/03/18','YYYY/MM/DD'),to_date('2022/03/18','YYYY/MM/DD'),'ty@daum.net','12','/resources/upload/2022/03/30/2f0ef6a8-543e-4993-a927-75eaf49fc990-아이유 증사.jpg','12','3514545','정규직',null,'A203','010-122-123','1','BRN00003',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00017','한소희',to_date('2022/03/27','YYYY/MM/DD'),to_date('2022/03/27','YYYY/MM/DD'),'kki@naber.com','1234','/resources/upload/2022/03/30/fbfaca29-6fe9-4467-9241-5861c4797e49-한소희 증사.jpg','123.321.123.321','3333-00-354892','정규직',null,'A201','010-4444-4444','1','BRN00002',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00003','유지민',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'ZX4496@NAVER.COM','gamja','/resources/upload/2022/03/30/9bee5232-eb1c-4057-8948-b4fdd9f32f25-카리나 증사.jpg','123.665.444','2356854-565132','정규직',null,'A105','010-1234-12342','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00004','이주빈',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'ZX4496@NAVER.COM','gamja','/resources/upload/2022/03/30/adf22374-7f04-47df-9860-47a60b8c5505-이주빈 증사.jpg','123.665.444','2356854-565132','정규직',null,'A103','010-1234-1231','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00005','인사돌',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'ZX4496@NAVER.COM','gamja','/resources/upload/2022/03/30/d4a2f5c1-76f8-481a-81a7-39dcb7ae03af-차은우 증사.jpg','123.665.444','2356854-565132','정규직',null,'A102','010-1234-1234','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00006','조르동',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'ZX4496@NAVER.COM','gamja','/resources/upload/2022/03/30/d4a2f5c1-76f8-481a-81a7-39dcb7ae03af-차은우 증사.jpg','123.665.444','2356854-565132','퇴사',null,'A201','010-1234-1234','1','BRN00001',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00007','차은우',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'ZX4496@NAVER.COM','gamja','/resources/upload/2022/03/30/d4a2f5c1-76f8-481a-81a7-39dcb7ae03af-차은우 증사.jpg','123.665.444','2356854-565132','정규직',null,'A202','010-1234-1234','1','BRN00001',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00008','김갑자',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'ZX4496@NAVER.COM','gamja','/resources/upload/2022/03/30/d4a2f5c1-76f8-481a-81a7-39dcb7ae03af-차은우 증사.jpg','123.665.444','2356854-565132','퇴사',null,'A203','010-1234-1234','1','BRN00001',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00009','김재욱',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'ZX4496@NAVER.COM','gamja','/resources/upload/2022/03/30/7a466026-55dc-4a6f-9350-423cd9218425-김재욱 증사.jpg','123.665.444','2356854-565132','정규직',null,'A107','010-1234-1234','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00010','강슬기',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'ZX4496@NAVER.COM','gamja','/resources/upload/2022/03/30/1bfe4542-ae00-4658-86ac-5258a3cfd820-슬기 증사.jpg','123.665.444','2356854-565132','정규직',null,'A108','010-1234-1234','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00001','김설현',to_date('2019/08/19','YYYY/MM/DD'),to_date('2019/08/19','YYYY/MM/DD'),'11211@NAVER.COM2','1111','/resources/upload/2022/03/30/f55a35d1-0185-4f3c-906f-f77f7b7c6079-설현 증사.jpg','6541-684','3514545','정규직',null,'A118','010-3333-0010','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00016','이제훈',to_date('2015/12/28','YYYY/MM/DD'),to_date('1985/02/27','YYYY/MM/DD'),'kki@naber.com','1234','/resources/upload/2022/03/30/cb78b8bb-5480-4cc8-8e6a-e24206186617-이제훈 증사.jpg','192.168.123.108','3333-00-354899','정규직',null,'A201','010-2202-2020','1','BRN00003',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00002','고윤정',to_date('2018/08/08','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'1111@NAVER.COM','2222','/resources/upload/2022/03/30/1126b6db-f398-42a8-b64c-17856030d3d9-고윤정.jpg','123.665.444','2356854-565132','정규직',null,'A104','010-1111-1111','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00020','박박박',to_date('2022/03/14','YYYY/MM/DD'),to_date('1999/11/11','YYYY/MM/DD'),'1111@NAVER.COM','1234','/resources/upload/2022/03/14/9a2a1ff9-b3d4-4c8a-a386-2deb5e34f96e-옹기.jpg','123.321.123.321','99023942903-32','정규직',null,'A118','010-4444-4444','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00018','김진석',to_date('2022/03/14','YYYY/MM/DD'),to_date('1991/10/05','YYYY/MM/DD'),'pooyttl@naver.com','1234','/resources/upload/2022/03/27/28eab8af-77c0-4f40-b6ba-96ae11b3b689-ㅍㅅ.jpg','123.321.123.321','3333-00-354892','정규직',null,'A201','010-4444-4444','1','BRN00001',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00021','재외국',to_date('2018/12/31','YYYY/MM/DD'),to_date('1986/02/04','YYYY/MM/DD'),'jjuulkm79@NAVER.COM','1234','/resources/upload/2022/04/08/c59b860d-892e-4a7d-9020-d5939ce9f1d4-증1.JPG','192.168.142.6','35145452222','정규직',null,'A109','010-1111-1111','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00022','왜재국',to_date('2022/04/08','YYYY/MM/DD'),to_date('2020/01/28','YYYY/MM/DD'),'1223@NAVER.COM','1234','/resources/upload/2022/04/08/d43d9aa6-b532-4374-811f-777d23c0e550-증2.JPG','192.168.142.6','35145452222','정규직',null,'A110','010-6543-8454','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00023','김갑수',to_date('2021/10/11','YYYY/MM/DD'),to_date('2021/04/04','YYYY/MM/DD'),'1223@NAVER.COM','1234','/resources/upload/2022/04/08/43ca3075-122a-4ed6-aca0-4a48c4d6969f-증3.JPG','192.168.142.6','35145452222','정규직',null,'A111','010-8626-5315','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00024','정진아',to_date('2022/04/08','YYYY/MM/DD'),to_date('1968/02/28','YYYY/MM/DD'),'ZX4496@NAVER.COM','1234','/resources/upload/2022/04/08/8e4de869-f065-45b7-862a-e868dc775766-증6.JPG','192.168.142.6','35145452222','정규직',null,'A112','010-1111-1111','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00025','강똘이',to_date('2017/07/05','YYYY/MM/DD'),to_date('1980/06/10','YYYY/MM/DD'),'jjuulkm79@NAVER.COM','1234','/resources/upload/2022/04/08/5686a2e6-e67f-40cc-bbdf-5720eda0d6b3-증5.JPG','192.168.142.6','35145452223','정규직',null,'A113','010-3333-3333','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00011','박날씨',to_date('2022/03/14','YYYY/MM/DD'),to_date('2022/03/14','YYYY/MM/DD'),'zx1234@naver.com','2222','/resources/upload/2022/03/14/9a2a1ff9-b3d4-4c8a-a386-2deb5e34f96e-옹기.jpg','123.321.123.321','99023942903-32','퇴사',null,'A106','010-4444-4444','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00026','김설아',to_date('2021/10/09','YYYY/MM/DD'),to_date('1981/05/04','YYYY/MM/DD'),'2ul22179@NAVER.COM','1234','/resources/upload/2022/04/08/030db281-deaf-4876-a3a5-782c5b94a869-증7.JPG','192.168.142.6.2','35145452244','정규직',null,'A114','010-1234-1231','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00027','김진',to_date('1988/06/08','YYYY/MM/DD'),to_date('1987/07/09','YYYY/MM/DD'),'332s09@NAVER.COM','1234','/resources/upload/2022/04/08/b84c1cca-ace5-4538-bed9-9c577052654c-증9.JPG','192.168.142.6.3','351454527777','정규직',null,'A116','010-1662-12345','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00028','강호동',to_date('2022/04/08','YYYY/MM/DD'),to_date('1989/03/31','YYYY/MM/DD'),'1232221@nav.com','1234','/resources/upload/2022/04/08/1dcac542-a644-4c5c-bca6-b03e56a7bd2d-증10.JPG','192.168.142.6.8','35145452773','정규직',null,'A117','010-3333-3333','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00029','이철희',to_date('2019/07/11','YYYY/MM/DD'),to_date('1970/04/02','YYYY/MM/DD'),'jjuus29@NAVER.COM','1234','/resources/upload/2022/04/08/e3bedd48-6f56-48f5-87d0-9dab350785c4-증11.JPG','192.168.142.6.8','351454527777','정규직',null,'A118','010-3002-3333','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00030','사쿠라',to_date('2022/04/08','YYYY/MM/DD'),to_date('1996/07/10','YYYY/MM/DD'),'1ssda23@naver.com','1234','/resources/upload/2022/04/08/7b507bc8-2ee6-4ab5-90ce-862d9ece7efc-증15.JPG','192.168.142.6.3','35145452245','정규직',null,'A121','010-1234-12342','1','BRN00000',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00031','장혜원',to_date('2009/06/16','YYYY/MM/DD'),to_date('1987/07/16','YYYY/MM/DD'),'ZX4496@NAVER.COM','1234','/resources/upload/2022/04/08/90a98eaa-e2fc-4e0b-a681-8f33c8580559-증13.JPG','192.168.142.6','35145452222','정규직',null,'A204','010-1111-9954','1','BRN00001',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00032','김민지',to_date('2021/11/02','YYYY/MM/DD'),to_date('2000/08/18','YYYY/MM/DD'),'87ssda@NAVER.COM','2134','/resources/upload/2022/04/08/ce359c89-7911-4ad6-a3fc-1f0038ca3278-증16.JPG','192.168.142.6.3','35145452225','정규직',null,'A205','010-1212-1234','1','BRN00001',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00033','최쿠라',to_date('2022/04/08','YYYY/MM/DD'),to_date('1988/09/12','YYYY/MM/DD'),'1111@NAVER.COM','1234','/resources/upload/2022/04/08/1fa0ed4c-2407-4531-9e54-7d750454921a-증14.JPG','192.168.142.6','35145452222','정규직',null,'A206','010-6875-5542','1','BRN00001',0);
Insert into EMP (EMP_ID,EMP_NM,EMP_JNCMP_YMD,EMP_BRDT,EMP_MAIL,EMP_PSWD,EMP_IMG,EMP_IP,EMP_ACTNO,EMP_SE,CTRTEMP_SE,CMNCD_CD,EMP_TEL,ENABLED,BRNCOFC_ID,COUNTALARM) values ('EMP00034','박연아',to_date('1987/05/04','YYYY/MM/DD'),to_date('1990/06/05','YYYY/MM/DD'),'jjuus09@NAVER.COM','1234','/resources/upload/2022/04/08/9a3d6111-7823-44e2-8a6e-d7f2b401f94b-증7.JPG','192.168.142.6.3','35145452222','정규직',null,'A207','010-3967-4977','1','BRN00001',0);
REM INSERTING into EVNT
SET DEFINE OFF;
REM INSERTING into EVNT_GDS
SET DEFINE OFF;
REM INSERTING into GROUPMAP
SET DEFINE OFF;
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('본사','본사','base','본사','본사','본사담당','본사번호');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('대전점','대전점','base','대전점','대전점','대전점담당','대전점번호');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('대전영업팀','영업팀','대전점','홍길동','팀장','대전영업팀','홍길동번호');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('base','TCO','#','TCO','TCO','TCO','TCO');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('인사팀','인사팀','본사','정소라','과장','인사팀','010-3333-7777');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('인천영업팀','영업팀','인천점','칙촉맨','영업팀장','인천영업팀','010-5555-5555');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('영업1팀','영업1팀','본사','이사원','사원','영업1팀','011-7777-5855');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('영업2팀','영업2팀','본사','곽대리','대리','영업2팀','011-8888-7777');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('인천점','인천점','base','인천점','인천점','인천점담당','011-8888-7777');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('인천인사팀','인사팀','인천점','주사원','사원','인천인사팀','011-8888-7777');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('신선PM','신선PM','영업1팀','박신선','팀장','신선PM','011-7777-5855');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('일상가공PM','일상가공PM','영업1팀','김가공','팀장','일상가공PM','011-7777-5855');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('가전문화PM','가전문화PM','영업2팀','이문화','팀장','가전문화PM','011-7777-5855');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('패션잡화PM','패션잡화PM','영업2팀','고패션','팀장','패션잡화PM','011-7777-5855');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('인천영업1팀','영업1팀','인천영업팀','김팀장','팀장','인천영업1팀','010-8888-7777');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('인천영업2팀','영업2팀','인천영업팀','김과장','과장','인천영업2팀','010-1111-1111');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('대전영업1팀','영업1팀','대전영업팀','김영훈','과장','대전영업1팀','010-7777-7777');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('대전영업2팀','영업2팀','대전영업팀','김진석','대리','대전영업2팀','010-5555-5555');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('대전인사팀','인사팀','대전점','이주홍','과장','대전인사팀','010-6666-8777');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('대전영업1팀','영업1팀','영업1팀','이순신','대리','대전영업1팀','핸드폰사줘');
Insert into GROUPMAP (CHILD_ID,GROUP_NM,PARENT_ID,PERSON_NM,RANK,DEPT_NM,PERSON_TEL) values ('인천영업1팀','영업1팀','영업1팀','장나라','사원','인천영업2팀','010-5555-5555');
REM INSERTING into MAINCALENDAR
SET DEFINE OFF;
Insert into MAINCALENDAR (MAIN_CALNO,MAIN_CALTITLE,MAIN_CALCON,MAIN_START,MAIN_END,MAIN_CALUSER,MAIN_COLOR) values (2,'TCO 창사 8주년','모든 매장의 팀장급 이상분들은 본사로 와주시길 바랍니다.',to_date('2022/04/15','YYYY/MM/DD'),to_date('2022/04/15','YYYY/MM/DD'),'EMP00001','빨강');
Insert into MAINCALENDAR (MAIN_CALNO,MAIN_CALTITLE,MAIN_CALCON,MAIN_START,MAIN_END,MAIN_CALUSER,MAIN_COLOR) values (3,'인천점 1주년 행사','인천점 1주년 행사 진행 예정',to_date('2022/04/11','YYYY/MM/DD'),to_date('2022/04/11','YYYY/MM/DD'),'EMP00001','빨강');
Insert into MAINCALENDAR (MAIN_CALNO,MAIN_CALTITLE,MAIN_CALCON,MAIN_START,MAIN_END,MAIN_CALUSER,MAIN_COLOR) values (1,'인천점 행사','대전점 사은 행사진행',to_date('2022/04/04','YYYY/MM/DD'),to_date('2022/04/08','YYYY/MM/DD'),'EMP00001','빨강');
Insert into MAINCALENDAR (MAIN_CALNO,MAIN_CALTITLE,MAIN_CALCON,MAIN_START,MAIN_END,MAIN_CALUSER,MAIN_COLOR) values (4,'부산점 행사','부산점 오픈 행사 이벤트 진행',to_date('2022/04/19','YYYY/MM/DD'),to_date('2022/04/21','YYYY/MM/DD'),'EMP00001','빨강');
REM INSERTING into ORDR
SET DEFINE OFF;
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (9,'PROD00004',30,to_date('2022/04/09','YYYY/MM/DD'),'BRN00001','현황','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (9,'PROD00005',20,to_date('2022/04/09','YYYY/MM/DD'),'BRN00001','현황','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (7,'PROD00020',483,to_date('2022/04/07','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (7,'PROD00017',26,to_date('2022/04/07','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (24,'PROD00045',414,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N',null);
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (24,'PROD00032',414,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N',null);
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (25,'PROD00014',10,to_date('2022/04/21','YYYY/MM/DD'),null,'내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (25,'PROD00015',20,to_date('2022/04/21','YYYY/MM/DD'),null,'내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (25,'PROD00016',30,to_date('2022/04/21','YYYY/MM/DD'),null,'내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (27,'PROD00014',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (27,'PROD00015',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (27,'PROD00016',30,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (3,'PROD00002',100,to_date('2022/03/25','YYYY/MM/DD'),'BRN00003','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (3,'PROD00003',100,to_date('2022/03/25','YYYY/MM/DD'),'BRN00003','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (3,'PROD00004',100,to_date('2022/03/25','YYYY/MM/DD'),'BRN00003','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (3,'PROD00013',10,to_date('2022/03/25','YYYY/MM/DD'),'BRN00003','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (5,'PROD00002',450,to_date('2022/04/05','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (6,'PROD00007',30,to_date('2022/04/06','YYYY/MM/DD'),'BRN00001','현황','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (6,'PROD00008',30,to_date('2022/04/06','YYYY/MM/DD'),'BRN00001','현황','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (6,'PROD00009',10,to_date('2022/04/06','YYYY/MM/DD'),'BRN00001','현황','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (10,'PROD00050',30,to_date('2022/04/10','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (10,'PROD00051',30,to_date('2022/04/10','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (10,'PROD00052',50,to_date('2022/04/10','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (10,'PROD00053',30,to_date('2022/04/10','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (10,'PROD00054',50,to_date('2022/04/10','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (26,'PROD00015',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001','현황','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (26,'PROD00016',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001','현황','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (26,'PROD00017',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001','현황','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (28,'PROD00014',10,to_date('2022/04/22','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (28,'PROD00015',20,to_date('2022/04/22','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (28,'PROD00016',30,to_date('2022/04/22','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (29,'PROD00047',421,to_date('2022/04/22','YYYY/MM/DD'),'BRN00001','내역','N',null);
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (29,'PROD00044',214,to_date('2022/04/22','YYYY/MM/DD'),'BRN00001','내역','N',null);
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (20,'PROD00010',411,to_date('2022/04/16','YYYY/MM/DD'),'BRN00003','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (20,'PROD00041',410,to_date('2022/04/16','YYYY/MM/DD'),'BRN00003','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (20,'PROD00054',410,to_date('2022/04/16','YYYY/MM/DD'),'BRN00003','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (20,'PROD00036',410,to_date('2022/04/16','YYYY/MM/DD'),'BRN00003','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (20,'PROD00034',409,to_date('2022/04/16','YYYY/MM/DD'),'BRN00003','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (20,'PROD00026',409,to_date('2022/04/16','YYYY/MM/DD'),'BRN00003','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (20,'PROD00057',418,to_date('2022/04/16','YYYY/MM/DD'),'BRN00003','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00001',300,to_date('2022/03/01','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00002',150,to_date('2022/03/01','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00003',150,to_date('2022/03/01','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00004',200,to_date('2022/03/01','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00005',400,to_date('2022/03/01','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00006',350,to_date('2022/03/01','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00007',100,to_date('2022/03/01','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00008',50,to_date('2022/03/01','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (1,'PROD00009',100,to_date('2022/03/01','YYYY/MM/DD'),'BRN00002','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00001',300,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00002',150,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00003',150,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00004',200,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00005',400,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00006',350,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00007',100,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00008',50,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (2,'PROD00009',100,to_date('2022/03/03','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (8,'PROD00003',40,to_date('2022/04/08','YYYY/MM/DD'),'BRN00001','현황','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (8,'PROD00004',40,to_date('2022/04/08','YYYY/MM/DD'),'BRN00001','현황','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (8,'PROD00005',30,to_date('2022/04/08','YYYY/MM/DD'),'BRN00001','현황','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (11,'PROD00015',30,to_date('2022/04/10','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (11,'PROD00014',20,to_date('2022/04/10','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (11,'PROD00016',20,to_date('2022/04/10','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (13,'PROD00016',40,to_date('2022/04/11','YYYY/MM/DD'),'BRN00001','현황','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (13,'PROD00017',60,to_date('2022/04/11','YYYY/MM/DD'),'BRN00001','현황','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (14,'PROD00025',20,to_date('2022/04/12','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (14,'PROD00001',30,to_date('2022/04/12','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (14,'PROD00002',30,to_date('2022/04/12','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (15,'PROD00002',10,to_date('2022/04/12','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (15,'PROD00003',10,to_date('2022/04/12','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (15,'PROD00004',10,to_date('2022/04/12','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (16,'PROD00004',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (16,'PROD00005',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (16,'PROD00059',10,to_date('2022/04/13','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (16,'PROD00060',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (16,'PROD00061',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (16,'PROD00062',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00017',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00020',70,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00021',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00064',60,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00065',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00027',30,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00031',10,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00045',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00047',10,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00057',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00066',20,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (17,'PROD00067',10,to_date('2022/04/13','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (18,'PROD00041',10,to_date('2022/04/14','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (18,'PROD00042',10,to_date('2022/04/14','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (18,'PROD00043',20,to_date('2022/04/14','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (18,'PROD00044',10,to_date('2022/04/14','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (18,'PROD00030',10,to_date('2022/04/14','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (18,'PROD00028',30,to_date('2022/04/14','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (18,'PROD00129',10,to_date('2022/04/14','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (18,'PROD00130',10,to_date('2022/04/14','YYYY/MM/DD'),'BRN00002','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00002',417,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00027',417,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00061',417,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00043',414,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00035',414,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00047',414,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00044',413,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00048',413,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00038',412,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00037',408,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00012',407,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00072',407,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00030',406,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00005',406,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (19,'PROD00052',406,to_date('2022/04/15','YYYY/MM/DD'),'BRN00003','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (21,'PROD00014',10,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (21,'PROD00015',30,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (21,'PROD00016',20,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (22,'PROD00023',420,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N',null);
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (22,'PROD00066',416,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N',null);
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (22,'PROD00057',415,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N',null);
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (23,'PROD00020',30,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (23,'PROD00021',20,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (23,'PROD00022',10,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001','내역','N','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (12,'PROD00064',200,to_date('2022/04/11','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (12,'PROD00061',200,to_date('2022/04/11','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (12,'PROD00016',200,to_date('2022/04/11','YYYY/MM/DD'),'BRN00001','내역','Y','N');
Insert into ORDR (ORDR_ID,PROD_INFO_ID,ORDR_QTY,ORDR_DT,BRNCOFC_ID,ORDR_SE,ORDR_YN,ORDR_WHYN) values (12,'PROD00062',200,to_date('2022/04/11','YYYY/MM/DD'),'BRN00001','내역','Y','Y');
REM INSERTING into PRCHS
SET DEFINE OFF;
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01211',to_date('2022/04/15','YYYY/MM/DD'),28000000,'CNPT0039','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01212',to_date('2022/04/15','YYYY/MM/DD'),1614000000,'CNPT0019','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01213',to_date('2022/04/15','YYYY/MM/DD'),600000000,'CNPT0017','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01214',to_date('2022/04/14','YYYY/MM/DD'),2180000,'CNPT0018','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS00001',to_date('2022/03/08','YYYY/MM/DD'),21300,'CNPT0001','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS00002',to_date('2022/03/01','YYYY/MM/DD'),22200,'CNPT0002','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS00003',to_date('2022/02/08','YYYY/MM/DD'),23100,'CNPT0003','저장');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS00004',to_date('2021/02/08','YYYY/MM/DD'),24000,'CNPT0004','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01215',to_date('2022/04/12','YYYY/MM/DD'),4035000,'CNPT0019','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01216',to_date('2022/04/16','YYYY/MM/DD'),3635000,'CNPT0032','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01217',to_date('2022/01/07','YYYY/MM/DD'),677000,'CNPT0045','저장');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01210',to_date('2022/04/15','YYYY/MM/DD'),1056000000,'CNPT0032','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01218',to_date('2022/04/16','YYYY/MM/DD'),807000,'CNPT0019','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01219',to_date('2022/04/06','YYYY/MM/DD'),990000,'CNPT0004','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01220',to_date('2022/04/16','YYYY/MM/DD'),153000,'CNPT0003','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01225',to_date('2022/04/18','YYYY/MM/DD'),1400000,'CNPT0018','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01222',to_date('2022/04/15','YYYY/MM/DD'),19800000,'CNPT0020','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01223',to_date('2022/04/15','YYYY/MM/DD'),20000000,'CNPT0022','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01224',to_date('2022/04/16','YYYY/MM/DD'),2180000,'CNPT0018','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01240',to_date('2022/04/19','YYYY/MM/DD'),1150000,'CNPT0044','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01248',to_date('2022/04/21','YYYY/MM/DD'),56000,'CNPT0026','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01249',to_date('2022/04/21','YYYY/MM/DD'),28000,'CNPT0026','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01250',to_date('2022/04/21','YYYY/MM/DD'),1263600,'CNPT0004','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01251',to_date('2022/04/21','YYYY/MM/DD'),4550000,'CNPT0002','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01252',to_date('2022/04/21','YYYY/MM/DD'),28000,'CNPT0026','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01257',to_date('2022/04/22','YYYY/MM/DD'),100000,'CNPT0044','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01258',to_date('2022/04/22','YYYY/MM/DD'),3411000,'CNPT0032','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01259',to_date('2022/04/22','YYYY/MM/DD'),21000000,'CNPT0043','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01242',to_date('2022/04/20','YYYY/MM/DD'),21000000,'CNPT0031','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01236',to_date('2022/04/19','YYYY/MM/DD'),6000000,'CNPT0007','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01241',to_date('2022/04/20','YYYY/MM/DD'),100000,'CNPT0044','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01243',to_date('2022/04/20','YYYY/MM/DD'),700000,'CNPT0001','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01244',to_date('2022/04/20','YYYY/MM/DD'),63000000,'CNPT0003','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01256',to_date('2022/04/22','YYYY/MM/DD'),150000,'CNPT0032','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01228',to_date('2022/04/19','YYYY/MM/DD'),120000,'CNPT0002','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS00005',to_date('2022/04/08','YYYY/MM/DD'),17400000,'CNPT0005','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS00006',to_date('2022/04/09','YYYY/MM/DD'),408000,'CNPT0002','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01229',to_date('2022/04/19','YYYY/MM/DD'),150000,'CNPT0001','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01227',to_date('2022/04/19','YYYY/MM/DD'),100000,'CNPT0044','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01237',to_date('2022/04/19','YYYY/MM/DD'),15400,'CNPT0003','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01238',to_date('2022/04/19','YYYY/MM/DD'),40000,'CNPT0042','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01239',to_date('2022/04/19','YYYY/MM/DD'),2500000,'CNPT0030','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01245',to_date('2022/04/20','YYYY/MM/DD'),35000000,'CNPT0006','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01246',to_date('2022/04/20','YYYY/MM/DD'),52500000,'CNPT0040','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01247',to_date('2022/04/20','YYYY/MM/DD'),42000000,'CNPT0030','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01253',to_date('2022/04/21','YYYY/MM/DD'),15750000,'CNPT0004','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01254',to_date('2022/04/21','YYYY/MM/DD'),7000000,'CNPT0007','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01255',to_date('2022/04/21','YYYY/MM/DD'),10500000,'CNPT0041','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01260',to_date('2022/04/22','YYYY/MM/DD'),150000,'CNPT0032','저장');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01226',to_date('2022/04/19','YYYY/MM/DD'),53330000,'CNPT0011','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01230',to_date('2022/04/19','YYYY/MM/DD'),9000000,'CNPT0019','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01231',to_date('2022/04/19','YYYY/MM/DD'),30000000,'CNPT0017','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01232',to_date('2022/04/19','YYYY/MM/DD'),21000000,'CNPT0018','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01233',to_date('2022/04/19','YYYY/MM/DD'),1420000,'CNPT0010','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01234',to_date('2022/04/19','YYYY/MM/DD'),123500,'CNPT0039','매입');
Insert into PRCHS (PRCHS_ID,PRCHS_DT,PRCHS_AMT,CNPT_ID,PRCHS_SE) values ('PRCHS01235',to_date('2022/04/19','YYYY/MM/DD'),189000,'CNPT0038','매입');
REM INSERTING into PRCHS_GDS
SET DEFINE OFF;
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01210','PROD00035',20000,52700,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01214','PROD00044',10,189000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01210','PROD00039',100,20000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01211','PROD00032',2000,14000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01212','PROD00042',20000,80700,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01213','PROD00033',20000,30000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01214','PROD00043',50,5800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01215','PROD00042',50,80700,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01216','PROD00039',50,20000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01216','PROD00035',50,52700,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01217','PROD00056',50,13540,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01218','PROD00042',10,80700,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01219','PROD00020',500,1200,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01219','PROD00015',100,2300,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01219','PROD00011',200,800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01220','PROD00008',100,770,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01220','PROD00007',100,760,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01224','PROD00043',50,5800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01222','PROD00040',10,1980000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01223','PROD00036',10,2000000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01224','PROD00044',10,189000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01250','PROD00020',1053,1200,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01240','PROD00055',20,50000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01240','PROD00073',30,5000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01248','PROD00066',20,2800,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01249','PROD00066',10,2800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01251','PROD00118',3500,1300,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01252','PROD00066',10,2800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00001','PROD00001',10,700,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00001','PROD00002',10,710,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00001','PROD00003',10,720,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00002','PROD00004',10,730,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00002','PROD00005',10,740,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00002','PROD00006',10,750,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00003','PROD00007',10,760,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00003','PROD00008',10,770,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00003','PROD00009',10,780,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00004','PROD00010',10,790,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00004','PROD00011',10,800,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00004','PROD00012',10,810,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00006','PROD00025',100,4080,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01256','PROD00061',50,3000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01257','PROD00073',20,5000,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01258','PROD00061',1137,3000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01259','PROD00074',3500,6000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01241','PROD00073',20,5000,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01242','PROD00142',3500,6000,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01236','PROD00108',1000,6000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01225','PROD00081',20,70000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01243','PROD00114',3500,200,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01244','PROD00080',3500,18000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00005','PROD00013',10,820000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS00005','PROD00018',10,920000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01254','PROD00111',3500,2000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01228','PROD00116',100,1200,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01238','PROD00075',20,2000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01227','PROD00073',20,5000,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01229','PROD00115',500,300,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01237','PROD00008',20,770,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01239','PROD00123',500,5000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01245','PROD00078',3500,10000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01246','PROD00077',3500,15000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01247','PROD00120',3500,12000,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01253','PROD00079',3500,4500,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01255','PROD00076',3500,3000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01260','PROD00061',50,3000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00103',300,17800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00101',1000,1000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00102',1100,4500,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00100',450,22800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00099',500,6500,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00097',700,12000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00096',600,15800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00098',300,22500,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01226','PROD00095',500,7800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01230','PROD00082',300,30000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01231','PROD00083',300,100000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01232','PROD00081',300,70000,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01233','PROD00127',1000,100,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01233','PROD00126',100,1200,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01233','PROD00125',300,3800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01233','PROD00117',400,150,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01234','PROD00139',15,2500,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01234','PROD00140',15,3800,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01234','PROD00141',10,2900,'N');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01235','PROD00130',30,3300,'Y');
Insert into PRCHS_GDS (PRCHS_ID,PROD_INFO_ID,PRCHS_GDS_QTY,PRCHS_GDS_AMT,PRCHS_GDS_YN) values ('PRCHS01235','PROD00129',30,3000,'Y');
REM INSERTING into PROD_INFO
SET DEFINE OFF;
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00014','갤럭시워치4',200000,240000,'3','CHINA','C902','Y','CNPT0005');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00015','오뚜기케첩',2300,3000,'2','DAEJEON','C408','Y','CNPT0004');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00016','갤럭시워치4_클래식',250000,300000,'3','CHINA','C902','Y','CNPT0005');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00017','갤럭시S22',830000,990000,'5','CHINA','C904','Y','CNPT0005');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00018','갤럭시S22+',920000,1100000,'5','CHINA','C904','Y','CNPT0005');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00019','갤럭시S22_ULTRA',1130000,1299000,'5','CHINA','C904','Y','CNPT0005');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00020','오뚜기_크림스프',1200,2000,'3','DAEJEON','C408','Y','CNPT0004');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00021','오뚜기밥',890,1190,'3','DAEJEON','C408','Y','CNPT0004');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00022','비비고교자',4900,6000,'5','DAEJEON','C408','Y','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00023','비비고_썰은배추김치3KG',27000,30800,'5','DAEJEON','C406','Y','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00024','행복한콩_순두부_330G',1580,2080,'5','DAEJEON','C405','Y','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00025','비비고_노릇하게_구운_갈치구이_70G',4080,4980,'5','MOKPO','C411','Y','CNPT0002');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00001','농심신라면',700,900,'1','CHEON-AN','C407','Y','CNPT0001');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00002','농심오징어짬뽕',710,910,'1','DAEJEON','C407','Y','CNPT0001');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00003','농심안성탕면',720,920,'1','MOKPO','C407','Y','CNPT0001');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00004','삼양라면',730,930,'3','JEONJU','C407','Y','CNPT0002');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00005','불닭볶음면',740,940,'2','WHA-SUNG','C407','Y','CNPT0002');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00006','붉닭까르보',750,950,'2','BUSAN','C407','Y','CNPT0002');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00007','팔도비빔면',760,960,'3','GYUNG-SAN','C407','Y','CNPT0003');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00008','팔도네넴띤',770,970,'3','MIL-YANG','C407','Y','CNPT0003');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00009','왕뚜껑',780,980,'3','SOK-CHO','C407','Y','CNPT0003');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00010','진라면매운맛',790,990,'4','CHEON-AN','C407','Y','CNPT0004');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00011','진라면순한맛',800,1000,'4','DAEJEON','C407','Y','CNPT0004');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00012','열라면',810,1010,'4','MOKPO','C407','Y','CNPT0004');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00026','리턴업_발효플러스60G',15000,20000,'5','DAEJEON','C401','Y','CNPT0002');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00059','원숭이털_소파',800000,1100000,'3','일본','C201','Y','CNPT0036');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00060','원숭이털_이불',300000,500000,'3','일본','C202','Y','CNPT0037');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00061','한율 진정맑은 클렌징폼120G',3000,6000,'3','한국','C305','Y','CNPT0032');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00062','뗑_이돌_파운데이션_30ML_',50000,100000,'3','프랑스','C307','Y','CNPT0034');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00063','이니스 세럼 80ML',20000,29000,'3','한국','C301','Y','CNPT0035');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00064','카레여왕_망고',1000,2000,'3','한국','C411','Y','CNPT0046');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00065','서울우유_멸균우유_1L',800,1600,'3','한국','C410','Y','CNPT0045');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00073','한돈_벌집_삼겹살',5000,11500,'1','GANGNEUNG','C403','Y','CNPT0044');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00074','하림_치킨너겟2',6000,12000,'2','SEOUL','C411','Y','CNPT0043');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00075','닭터의자연_가슴살',2000,5000,'3','GIMCHEON','C403','Y','CNPT0042');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00076','샐러드_랩_3종',3000,6000,'1','GWANGJU','C411','Y','CNPT0041');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00077','해선생_구룡포_반건조오징어_국내산_4-5미',15000,30000,'20','DONGHEA','C408','Y','CNPT0040');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00078','비비고_사골곰탕500GX18개',10000,20000,'30','DEACHEON','C408','Y','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00079','오뚜기_고소한골드마요네즈_3.2KG',4500,9000,'30','INCHEON','C408','Y','CNPT0004');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00080','팔도_꼬간초_비빔면_145G_40개',18000,30000,'20','BUCHEON','C407','Y','CNPT0003');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00027','비비고_왕교자_1.05KG',8480,10480,'3','MOKPO','C411','Y','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00036','척추_의료가전_마스터',2000000,4900000,'3','MOKPO','C201','Y','CNPT0022');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00031','베이지_원_턱_캐주얼_팬츠',15000,29900,'2','MOKPO','C101','Y','CNPT0017');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00033','플랫폼_플립플랍',30000,59000,'2','MOKPO','C102','Y','CNPT0017');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00039','한율_극진_스킨',20000,49000,'2','서울','C301','Y','CNPT0032');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00045','바로먹는_구룡포_붉은대게_630G',19000,23000,'3','포항','C404','Y','CNPT0040');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00046','스윗밸런스 샐러드_6종_세트',23000,32000,'2','경기도성남','C401','Y','CNPT0041');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00047','스윗밸런스_작심삼일_샐러드_6종_세트',20000,27900,'1','경기도성남','C401','Y','CNPT0041');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00048','살맛나요_생물_고흥_산지직송_냉장새우1KG',19000,27000,'1','고흥','C404','Y','CNPT0040');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00049','프렌치_버터롤_520G',3000,5730,'1','천안','C408','Y','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00050','정통_짬뽕_순두부찌개_세트700G',3000,7840,'1','목포','C405','Y','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00051','파이브_베리_냉동__500G',4000,6990,'1','경기도성남','C411','Y','CNPT0041');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00052','마니커_닭가슴살_냉동_2KG',8900,12900,'1','경기도포천','C403','Y','CNPT0042');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00053','하림_통가슴살_치킨너겟_냉동_2KG',9900,19900,'1','전라북도익산','C403','Y','CNPT0043');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00054','오뚜기_냉동_피자415G',8000,13000,'1','천안','C408','Y','CNPT0004');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00055','산수골_한돈_5KG기획상품',50000,87400,'1','충북진천','C403','Y','CNPT0044');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00056','서울우유_체다_슬라이스_치즈_100매입',13540,17900,'1','경기도성남','C403','Y','CNPT0045');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00057','청정원_토마토_스파게티_소스_600G',1740,2810,'1','경기도연천','C408','Y','CNPT0046');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00058','해선생_구룡포반건조_오징어_5미_냉동',8900,15000,'1','포항','C404','Y','CNPT0040');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00066','닥터버들_토탈케어',2800,3200,'3','진천','C705','Y','CNPT0026');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00067','아름다운_주방세제',4900,6200,'5','포항','C701','Y','CNPT0025');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00068','살림백서_3단_트레이',52000,59900,'3','목포','C704','Y','CNPT0024');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00069','5.1.2_채널_사운드바_Q800B',800000,899000,'5','울산','C810','Y','CNPT0005');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00070','LG_DIOS_베이직_오브제_컬렉션',1300000,1450000,'5','CHINA','C803','Y','CNPT0008');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00071','갤럭시_버즈_라이브',158000,198000,'3','CHINA','C901','Y','CNPT0013');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00072','LG_울트라기어_게이밍모니터',349000,386800,'3','울산','C903','Y','CNPT0014');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00081','슬림핏_디젤_청바지_30인치',70000,14000,'1','경기도성남','C101','Y','CNPT0018');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00083','빈폴_구스_다운패딩_100',100000,200000,'1','천안','C101','Y','CNPT0017');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00086','원터치_패밀리_텐트_6인용',380000,490000,'1','연천','C1101','Y','CNPT0021');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00087','골프채_아이언_세트',1000000,1250000,'1','인천','C1103','Y','CNPT0020');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00029','스팸클래식200G',4080,4480,'2','DAEJEON','C408','Y','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00032','우리가_빛의_속도로_갈_수_없다면',12000,14000,'5','서울','C1501','Y','CNPT0039');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00013','삼성티비',820000,1200000,'3','CHINA','C801','Y','CNPT0005');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00034','불스원샷_스탠다드_휘발유_500ML',9000,11000,'3','독일','C1303','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00035','설화수_자음_2종_세트',50700,52700,'3','진주','C301','Y','CNPT0032');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00037','에이스침대_CA_원매트리스_SS',330000,351540,'5','CHINA','C202','Y','CNPT0037');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00038','마이펫닥터_강아지_시그니처_슬리밍컨트롤_사료',27000,32000,'3','아르헨티나','C514','Y','CNPT0029');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00040','레바_REVA_여성_풀세트_+_캐디백세트',1700000,1980000,'5','인천','C1103','Y','CNPT0020');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00041','헤이븐_챠콜마스크(KF94)_50매',3000,4200,'2','DAEJEON','C1202','Y','CNPT0023');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00042','컨버스_척테일러_1970S',76800,80700,'3','수원','C102','Y','CNPT0019');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00043','트리플에이_무지티_반팔티_무지_반팔티셔츠_1301',4300,5800,'2','CHINA','C101','Y','CNPT0018');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00044','실크_랜드마크_스카프',158000,189000,'3','영국','C107','Y','CNPT0018');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00082','브라운_코지_니트가디건',30000,70000,'1','경기도성남','C101','Y','CNPT0019');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00084','삼성올인원PC_라이젠',580000,780000,'1','천안','C1002','Y','CNPT0015');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00085','LG노트북_그램17인치',880000,1230000,'1','천안','C1001','Y','CNPT0016');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00143','후디스_분유_500G',12000,14000,'3','영월','C504','Y','CNPT0030');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00144','하기스_자연에서_자란_분유_500G',12000,15000,'3','DAEJEON','C501','Y','CNPT0031');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00030','목우촌_주부9단_통그릴_비엔나_소시지',6040,8040,'3','국내산','C403','Y','CNPT0007');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00028','무농약_대추방울토마토_1KG',18500,20500,'3','영월','C402','x','CNPT0006');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00088','그린제약알콜솜',5420,7520,'5','중국','C1201','Y','CNPT0023');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00089','세라젬_파우제_안마의자_M2',1554000,2490000,'5','한국','C1204','Y','CNPT0022');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00090','세라젬_척추온열_의료가전_마스터_V4',2570000,3750000,'5','한국','C1206','Y','CNPT0022');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00091','세라젬_파우제_디코어_클라우드_전신안마의자',3578000,4488000,'5','한국','C1204','Y','CNPT0022');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00092','세라젬_파우제_디코어_씨러스_안마의자_DC-100KR',4850000,6288000,'5','한국','C1204','Y','CNPT0022');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00093','세라젬_진동_전신_마사지_침대_DS-W1818',857000,1966000,'5','한국','C1206','Y','CNPT0022');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00094','세라젬_마스터_V3_가격_마사지_전기_얼굴_침대',1554000,2389000,'5','한국','C1206','Y','CNPT0022');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00095','항균_활성탄_차량용_에어컨히터_필터_1개입',7800,14900,'10','인도네시아','C1304','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00096','불스원_불스원샷_4IN1_플래티넘_500ML',15800,25900,'10','인도네시아','C1303','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00097','불스원_불스원샷_하이브리드_500ML',12000,17100,'10','인도네시아','C1303','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00098','불스원_오토스캔_무선충전_차량용_핸드폰거치대',22500,34900,'15','중국','C1304','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00099','불스원_레인OK_빗물을_튕겨주는_발수와이퍼_세트',6500,12800,'5','인도네시아','C1303','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00100','불스원_올뉴_불스파워_엔진코팅제',22800,33900,'10','인도네시아','C1303','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00101','불스원_레인OK_에탄올_그린워셔_1.8L',1000,2500,'10','중국','C1303','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00102','불스원샷_스탠다드_휘발유_500ML',4500,10000,'10','중국','C1303','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00103','불스원_에어테라피_멀티액션_공기청정기',17800,35900,'10','중국','C1303','Y','CNPT0011');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00104','코베아_KT-1209_토치',3500,7800,'12','한국','C1101','Y','CNPT0012');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00105','코베아_4인용_텐트_트랙돔',150000,358000,'12','한국','C1101','Y','CNPT0012');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00106','코베아_2022_뉴_네스트W_KECO9TO-04_4인용',387000,680000,'10','한국','C1101','Y','CNPT0012');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00107','코베아_와우코트_원터치_텐트_KECK9TI-01',25000,48000,'10','한국','C1101','Y','CNPT0012');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00108','뽀로로와_친구들_프랑크소시지',6000,13000,'2','MOKPO','C408','Y','CNPT0007');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00109','코베아_3웨이_올인원_캠핑_가스_버너',120000,218000,'5','중국','C1101','Y','CNPT0012');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00110','코베아_WS_릴렉스_롱_체어_KECW9CA-03',45000,78000,'5','한국','C1101','Y','CNPT0012');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00111','뽀로로와_친구들_스트링치즈',2000,5000,'2','MOKPO','C410','Y','CNPT0007');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00112','코베아-_이지_코트2_야전침대_접이식_침대',45000,78000,'5','한국','C1101','Y','CNPT0012');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00113','코베아_구이바다_전골팬_L_3웨이_올인원L_팬',800,3000,'12','중국','C1101','Y','CNPT0012');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00114','농심_쌀국수',200,700,'1','MOKPO','C407','Y','CNPT0001');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00115','바나나킥',300,1250,'2','MOKPO','C408','Y','CNPT0001');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00116','불닭스리라차',1200,5600,'2','MOKPO','C408','Y','CNPT0002');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00117','아모스_딱풀_35G_',150,800,'10','한국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00118','불닭마요',1300,5600,'2','MOKPO','C408','Y','CNPT0002');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00119','아모스_만능목공풀_74G',250,800,'5','한국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00120','후디스_하이뮨_프로틴_밸런스_304G',12000,20000,'3','MOKPO','C410','Y','CNPT0030');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00121','반짝이풀_크롬쉘',500,2500,'5','한국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00122','아모스_수정테이프-갑_10개입',150,860,'5','한국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00123','하이뮨_프로틴_밸런스_190ML',5000,14000,'2','MOKPO','C410','Y','CNPT0030');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00124','아모스_24색_프리미엄_크레파스',2200,11000,'10','한국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00125','아모스_물풀_6개',3800,11000,'10','한국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00126','아모스_아이써클_연필깎이',1200,5500,'10','중국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00127','아모스_네임펜_중간_글씨용',100,500,'10','한국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00128','아모스_아이도우(햄버거_40GX4P)',3300,11000,'10','한국','C1403','Y','CNPT0010');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00129','달러구트_꿈_백화점_1권_',3000,7800,'5','베트남','C1501','Y','CNPT0038');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00130','달러구트_꿈_백화점_2권',3300,7800,'5','베트남','C1501','Y','CNPT0038');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00131','기억술사',4000,12000,'5','한국','C1501','Y','CNPT0038');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00132','이_죽일_놈의_바카라',3800,11000,'5','한국','C1501','Y','CNPT0038');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00133','우산의_비밀',3800,11000,'5','한국','C1501','Y','CNPT0038');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00134','놈의_기억',4000,12800,'5','한국','C1501','Y','CNPT0038');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00135','단어가_내려온다',3500,11700,'5','한국','C1505','Y','CNPT0039');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00136','빨간_아이,_봇',3500,10800,'5','한국','C1512','Y','CNPT0039');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00137','캣피싱',4800,13800,'5','한국','C1501','Y','CNPT0039');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00138','측정의_과학',10800,27900,'5','한국','C1508','Y','CNPT0039');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00139','깃털',2500,8900,'5','한국','C1501','Y','CNPT0039');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00140','초월하는_세계의_사랑',3800,11800,'5','한국','C1503','Y','CNPT0039');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00141','기파',2900,10800,'5','한국','C1505','Y','CNPT0039');
Insert into PROD_INFO (PROD_INFO_ID,PROD_INFO_NM,PROD_INFO_PRCHS_AMT,PROD_INFO_NTSL_AMT,PROD_INFO_LDT,PROD_INFO_PLOR,CMNCD_CD,PROD_INFO_YN,CNPT_ID) values ('PROD00142','2021_네이처메이드_기저귀_1단계_밴드형',6000,15000,'2','MOKPO','C401','Y','CNPT0031');
REM INSERTING into SCHDL
SET DEFINE OFF;
REM INSERTING into SLS
SET DEFINE OFF;
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0020','BRN00000',to_date('2020/03/11','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0021','BRN00000',to_date('2020/03/12','YYYY/MM/DD'),2866500,4000000,-1133500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0044','BRN00000',to_date('2020/04/22','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0046','BRN00000',to_date('2020/04/23','YYYY/MM/DD'),2866500,4000000,-1133500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0056','BRN00000',to_date('2020/04/24','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0060','BRN00000',to_date('2020/04/25','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0072','BRN00000',to_date('2020/04/26','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0073','BRN00000',to_date('2020/04/27','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0075','BRN00000',to_date('2020/04/28','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0076','BRN00000',to_date('2020/04/29','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0077','BRN00000',to_date('2020/04/30','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0078','BRN00000',to_date('2020/05/01','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0087','BRN00000',to_date('2020/05/02','YYYY/MM/DD'),1793640,3632000,-1838360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0104','BRN00000',to_date('2021/04/15','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0107','BRN00000',to_date('2021/04/16','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0108','BRN00000',to_date('2021/04/17','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0109','BRN00000',to_date('2021/04/18','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0110','BRN00000',to_date('2021/04/19','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0111','BRN00000',to_date('2021/04/20','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0112','BRN00000',to_date('2021/04/21','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0113','BRN00000',to_date('2021/04/22','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0114','BRN00000',to_date('2021/04/23','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0115','BRN00000',to_date('2021/04/24','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0116','BRN00000',to_date('2021/04/25','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0117','BRN00000',to_date('2021/04/26','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0118','BRN00000',to_date('2021/04/27','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0119','BRN00000',to_date('2021/04/28','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0120','BRN00000',to_date('2021/04/29','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0274','BRN00000',to_date('2021/04/30','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0291','BRN00000',to_date('2022/01/08','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0292','BRN00000',to_date('2022/01/09','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0293','BRN00000',to_date('2022/01/10','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0294','BRN00000',to_date('2022/01/11','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0295','BRN00000',to_date('2022/01/12','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0296','BRN00000',to_date('2022/01/13','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0297','BRN00000',to_date('2022/01/14','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0298','BRN00000',to_date('2022/01/15','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0299','BRN00000',to_date('2022/01/16','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0300','BRN00000',to_date('2022/01/17','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0301','BRN00000',to_date('2022/01/18','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0302','BRN00000',to_date('2022/01/19','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0303','BRN00000',to_date('2022/01/20','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0304','BRN00000',to_date('2022/01/21','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0305','BRN00000',to_date('2022/01/22','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0306','BRN00000',to_date('2022/01/23','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0307','BRN00000',to_date('2022/01/24','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0308','BRN00000',to_date('2022/01/25','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0309','BRN00000',to_date('2022/01/26','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0310','BRN00000',to_date('2022/01/27','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0311','BRN00000',to_date('2022/01/28','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0312','BRN00000',to_date('2022/01/29','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0313','BRN00000',to_date('2022/01/30','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0314','BRN00000',to_date('2022/01/31','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0315','BRN00000',to_date('2022/02/01','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0316','BRN00000',to_date('2022/02/02','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0317','BRN00000',to_date('2022/02/03','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0318','BRN00000',to_date('2022/02/04','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0319','BRN00000',to_date('2022/02/05','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0320','BRN00000',to_date('2022/02/06','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0321','BRN00000',to_date('2022/02/07','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0322','BRN00000',to_date('2022/02/08','YYYY/MM/DD'),1914830,3589540,1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0323','BRN00000',to_date('2022/02/09','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0324','BRN00000',to_date('2022/02/10','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0325','BRN00000',to_date('2022/02/11','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0326','BRN00000',to_date('2022/02/12','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0327','BRN00000',to_date('2022/02/13','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0406','BRN00002',to_date('2022/04/21','YYYY/MM/DD'),979850630,906000,978944630);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0407','BRN00001',to_date('2022/04/21','YYYY/MM/DD'),1088800130,0,1088800130);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0408','BRN00001',to_date('2022/04/21','YYYY/MM/DD'),257172390,0,257172390);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0030','BRN00000',to_date('2020/05/03','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0032','BRN00000',to_date('2020/05/04','YYYY/MM/DD'),2866500,4000000,-1133500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0055','BRN00000',to_date('2020/05/05','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0403','BRN00001',to_date('2022/04/20','YYYY/MM/DD'),1088800130,906000,1087894130);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0121','BRN00000',to_date('2021/05/01','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0122','BRN00000',to_date('2021/05/02','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0128','BRN00000',to_date('2021/05/03','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0129','BRN00000',to_date('2021/05/04','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0130','BRN00000',to_date('2021/05/05','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0131','BRN00000',to_date('2021/05/06','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0132','BRN00000',to_date('2021/05/07','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0025','BRN00000',to_date('2020/03/13','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0029','BRN00000',to_date('2020/05/06','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0133','BRN00000',to_date('2021/05/08','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0134','BRN00000',to_date('2021/05/09','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0135','BRN00000',to_date('2021/05/10','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0136','BRN00000',to_date('2021/05/11','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0137','BRN00000',to_date('2021/05/12','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0138','BRN00000',to_date('2021/05/13','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0139','BRN00000',to_date('2021/05/14','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0142','BRN00000',to_date('2021/05/15','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0143','BRN00000',to_date('2021/05/16','YYYY/MM/DD'),2866500,4000000,-1133500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0144','BRN00000',to_date('2021/05/17','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0145','BRN00000',to_date('2021/05/18','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0146','BRN00000',to_date('2021/05/19','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0147','BRN00000',to_date('2021/05/20','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0148','BRN00000',to_date('2021/05/21','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0149','BRN00000',to_date('2021/05/22','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0150','BRN00000',to_date('2021/05/23','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0151','BRN00000',to_date('2021/05/24','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0152','BRN00000',to_date('2021/05/25','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0153','BRN00000',to_date('2021/05/26','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0154','BRN00000',to_date('2021/05/27','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0155','BRN00000',to_date('2021/05/28','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0156','BRN00000',to_date('2021/05/29','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0157','BRN00000',to_date('2021/05/30','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0158','BRN00000',to_date('2021/05/31','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0159','BRN00000',to_date('2021/06/01','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0160','BRN00000',to_date('2021/10/24','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0161','BRN00000',to_date('2021/10/26','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0162','BRN00000',to_date('2021/10/30','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0169','BRN00000',to_date('2021/11/04','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0170','BRN00000',to_date('2021/12/21','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0171','BRN00000',to_date('2021/12/23','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0172','BRN00000',to_date('2021/12/24','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0173','BRN00000',to_date('2021/12/25','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0174','BRN00000',to_date('2021/12/26','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0175','BRN00000',to_date('2021/12/27','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0176','BRN00000',to_date('2021/12/28','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0177','BRN00000',to_date('2021/12/29','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0178','BRN00000',to_date('2021/12/30','YYYY/MM/DD'),1914830,3589540,1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0334','BRN00000',to_date('2022/02/22','YYYY/MM/DD'),1715300,906000,809300);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0335','BRN00000',to_date('2022/02/21','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0336','BRN00000',to_date('2022/02/20','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0339','BRN00000',to_date('2022/02/19','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0340','BRN00000',to_date('2022/02/18','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0341','BRN00000',to_date('2022/02/17','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0342','BRN00000',to_date('2022/02/16','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0355','BRN00000',to_date('2022/03/11','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0404','BRN00001',to_date('2022/04/20','YYYY/MM/DD'),1088800130,906000,1087894130);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0405','BRN00002',to_date('2022/04/20','YYYY/MM/DD'),979850630,906000,978944630);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0410','BRN00001',to_date('2022/04/22','YYYY/MM/DD'),1089763530,0,1089763530);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0023','BRN00000',to_date('2020/03/14','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0024','BRN00000',to_date('2020/03/15','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0033','BRN00000',to_date('2020/05/07','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0034','BRN00000',to_date('2020/05/08','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0008','BRN00000',to_date('2020/03/16','YYYY/MM/DD'),16830,906000,-889170);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0035','BRN00000',to_date('2020/05/09','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0036','BRN00000',to_date('2020/05/10','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0019','BRN00000',to_date('2020/03/17','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0022','BRN00000',to_date('2020/03/18','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0037','BRN00000',to_date('2020/05/11','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0038','BRN00000',to_date('2020/05/12','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0039','BRN00000',to_date('2020/05/13','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0040','BRN00000',to_date('2020/05/14','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0041','BRN00000',to_date('2020/05/15','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0042','BRN00000',to_date('2020/05/24','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0047','BRN00000',to_date('2020/05/25','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0048','BRN00000',to_date('2020/05/26','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0049','BRN00000',to_date('2020/05/27','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0050','BRN00000',to_date('2020/05/28','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0051','BRN00000',to_date('2020/05/29','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0052','BRN00000',to_date('2020/05/30','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0053','BRN00000',to_date('2020/05/31','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0054','BRN00000',to_date('2020/06/01','YYYY/MM/DD'),2866500,4000000,-1133500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0079','BRN00000',to_date('2020/06/02','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0080','BRN00000',to_date('2020/06/03','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0081','BRN00000',to_date('2020/06/04','YYYY/MM/DD'),1793640,3632000,-1838360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0082','BRN00000',to_date('2020/06/05','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0083','BRN00000',to_date('2020/06/06','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0106','BRN00000',to_date('2020/06/07','YYYY/MM/DD'),1715300,906000,809300);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0123','BRN00000',to_date('2021/12/31','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0275','BRN00000',to_date('2022/01/01','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0278','BRN00000',to_date('2022/01/02','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0279','BRN00000',to_date('2022/01/03','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0280','BRN00000',to_date('2022/01/04','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0281','BRN00000',to_date('2021/09/01','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0282','BRN00000',to_date('2021/08/21','YYYY/MM/DD'),1914830,3589540,1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0284','BRN00000',to_date('2021/08/22','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0330','BRN00000',to_date('2022/03/02','YYYY/MM/DD'),1914830,3589540,1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0331','BRN00000',to_date('2022/03/01','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0332','BRN00000',to_date('2022/02/28','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0333','BRN00000',to_date('2022/02/27','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0356','BRN00000',to_date('2022/03/27','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0357','BRN00000',to_date('2022/03/26','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0358','BRN00000',to_date('2022/03/25','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0359','BRN00001',to_date('2022/03/24','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0360','BRN00001',to_date('2022/03/23','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0361','BRN00000',to_date('2022/03/22','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0362','BRN00000',to_date('2022/03/21','YYYY/MM/DD'),432500,105000,327500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0363','BRN00000',to_date('2022/03/13','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0364','BRN00000',to_date('2022/03/14','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0365','BRN00000',to_date('2022/03/15','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0366','BRN00002',to_date('2022/03/16','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0367','BRN00000',to_date('2022/03/17','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0368','BRN00000',to_date('2022/03/18','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0369','BRN00000',to_date('2022/03/19','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0370','BRN00000',to_date('2022/03/20','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0371','BRN00000',to_date('2022/03/12','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0374','BRN00000',to_date('2022/03/28','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0390','BRN00002',to_date('2022/04/13','YYYY/MM/DD'),450000,372420,77580);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0392','BRN00001',to_date('2022/04/12','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0010','BRN00000',to_date('2020/03/19','YYYY/MM/DD'),276470,906000,-629530);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0011','BRN00000',to_date('2020/03/20','YYYY/MM/DD'),276470,3624000,-3347530);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0012','BRN00000',to_date('2020/03/21','YYYY/MM/DD'),354810,3624000,-3269190);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0013','BRN00000',to_date('2020/03/22','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0014','BRN00000',to_date('2020/03/23','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0007','BRN00001',to_date('2020/03/24','YYYY/MM/DD'),1600000,null,null);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0015','BRN00000',to_date('2020/03/25','YYYY/MM/DD'),78340,906000,-827660);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0016','BRN00000',to_date('2020/03/02','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0045','BRN00000',to_date('2020/06/08','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0026','BRN00000',to_date('2021/04/13','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0043','BRN00000',to_date('2020/05/16','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0070','BRN00000',to_date('2020/05/17','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0071','BRN00000',to_date('2020/05/18','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0074','BRN00000',to_date('2020/05/19','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0085','BRN00000',to_date('2020/05/20','YYYY/MM/DD'),1793640,3632000,-1838360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0086','BRN00000',to_date('2020/05/21','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0105','BRN00000',to_date('2020/05/23','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0126','BRN00000',to_date('2021/08/23','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0124','BRN00000',to_date('2021/08/24','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0125','BRN00000',to_date('2021/08/25','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0127','BRN00000',to_date('2021/08/03','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0140','BRN00000',to_date('2021/08/29','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0141','BRN00000',to_date('2022/01/05','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0163','BRN00000',to_date('2021/09/04','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0164','BRN00000',to_date('2021/09/05','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0165','BRN00000',to_date('2021/09/09','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0166','BRN00000',to_date('2021/09/12','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0167','BRN00000',to_date('2021/09/15','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0168','BRN00000',to_date('2021/09/19','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0179','BRN00000',to_date('2021/10/27','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0180','BRN00000',to_date('2021/10/31','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0181','BRN00000',to_date('2021/10/23','YYYY/MM/DD'),1914830,3589540,1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0182','BRN00000',to_date('2021/10/29','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0183','BRN00000',to_date('2021/11/02','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0184','BRN00000',to_date('2021/11/03','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0185','BRN00000',to_date('2021/12/22','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0186','BRN00000',to_date('2021/08/28','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0187','BRN00000',to_date('2021/08/30','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0188','BRN00000',to_date('2021/09/02','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0189','BRN00000',to_date('2021/09/07','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0190','BRN00000',to_date('2021/09/08','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0191','BRN00000',to_date('2021/09/13','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0192','BRN00000',to_date('2021/09/16','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0193','BRN00000',to_date('2021/09/18','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0194','BRN00000',to_date('2021/10/22','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0195','BRN00000',to_date('2021/11/01','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0196','BRN00000',to_date('2021/08/27','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0197','BRN00000',to_date('2021/08/31','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0198','BRN00000',to_date('2021/09/03','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0199','BRN00000',to_date('2021/09/06','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0200','BRN00000',to_date('2021/09/10','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0201','BRN00000',to_date('2021/09/11','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0202','BRN00000',to_date('2021/09/14','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0203','BRN00000',to_date('2021/09/17','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0204','BRN00000',to_date('2021/10/25','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0205','BRN00000',to_date('2021/10/28','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0206','BRN00000',to_date('2021/07/19','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0207','BRN00000',to_date('2021/07/20','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0208','BRN00000',to_date('2021/07/21','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0209','BRN00000',to_date('2021/07/22','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0210','BRN00000',to_date('2021/07/23','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0211','BRN00000',to_date('2021/07/24','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0212','BRN00000',to_date('2021/07/25','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0213','BRN00000',to_date('2021/07/26','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0214','BRN00000',to_date('2021/07/27','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0215','BRN00000',to_date('2021/07/28','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0216','BRN00000',to_date('2021/07/29','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0217','BRN00000',to_date('2021/07/30','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0218','BRN00000',to_date('2021/07/31','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0219','BRN00000',to_date('2021/08/01','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0220','BRN00000',to_date('2021/06/27','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0221','BRN00000',to_date('2021/06/28','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0222','BRN00000',to_date('2021/06/29','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0223','BRN00000',to_date('2021/06/30','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0276','BRN00000',to_date('2021/07/01','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0277','BRN00000',to_date('2021/07/02','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0283','BRN00000',to_date('2021/07/03','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0285','BRN00000',to_date('2021/07/04','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0286','BRN00000',to_date('2021/07/05','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0328','BRN00000',to_date('2022/01/06','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0329','BRN00000',to_date('2022/01/07','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0343','BRN00000',to_date('2022/02/26','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0344','BRN00000',to_date('2022/02/25','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0345','BRN00000',to_date('2022/02/24','YYYY/MM/DD'),1914830,3589540,1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0346','BRN00000',to_date('2022/02/23','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0347','BRN00000',to_date('2022/02/14','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0348','BRN00000',to_date('2022/02/15','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0349','BRN00000',to_date('2022/03/10','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0350','BRN00000',to_date('2022/03/09','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0351','BRN00000',to_date('2022/03/08','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0352','BRN00000',to_date('2022/03/07','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0353','BRN00000',to_date('2022/03/06','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0354','BRN00002',to_date('2022/03/05','YYYY/MM/DD'),1797420,3648200,-1850780);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0376','BRN00001',to_date('2022/04/10','YYYY/MM/DD'),575600,865300,-289700);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0377','BRN00002',to_date('2022/04/11','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0378','BRN00003',to_date('2022/04/05','YYYY/MM/DD'),432500,105000,327500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0379','BRN00000',to_date('2022/04/06','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0380','BRN00001',to_date('2022/04/07','YYYY/MM/DD'),1360000,1683000,-323000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0381','BRN00002',to_date('2022/04/08','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0391','BRN00001',to_date('2022/04/09','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0393','BRN00001',to_date('2022/04/18','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0409','BRN00001',to_date('2022/04/21','YYYY/MM/DD'),1089539630,0,1089539630);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0394','BRN00002',to_date('2022/04/17','YYYY/MM/DD'),882000,540000,342000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0395','BRN00003',to_date('2022/04/16','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0396','BRN00001',to_date('2022/04/15','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0397','BRN00001',to_date('2022/04/20','YYYY/MM/DD'),1088800130,906000,1087894130);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0398','BRN00001',to_date('2022/04/20','YYYY/MM/DD'),1088800130,906000,1087894130);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0399','BRN00001',to_date('2022/04/20','YYYY/MM/DD'),1088800130,906000,1087894130);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0400','BRN00001',to_date('2022/04/20','YYYY/MM/DD'),1088800130,906000,1087894130);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0401','BRN00001',to_date('2022/04/20','YYYY/MM/DD'),1088800130,906000,1087894130);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0402','BRN00002',to_date('2022/04/20','YYYY/MM/DD'),979850630,906000,978944630);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS1019','BRN00001',to_date('2021/04/08','YYYY/MM/DD'),850000,350000,500000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS1018','BRN00001',to_date('2021/04/07','YYYY/MM/DD'),7500000,3050000,4450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS1020','BRN00001',to_date('2021/04/09','YYYY/MM/DD'),830000,350000,480000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS1021','BRN00001',to_date('2021/04/10','YYYY/MM/DD'),10000000,4900000,5100000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS1022','BRN00001',to_date('2021/04/11','YYYY/MM/DD'),8580000,6520000,2060000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS1023','BRN00001',to_date('2021/04/12','YYYY/MM/DD'),51154000,15200000,35954000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0001','BRN00000',to_date('2020/03/26','YYYY/MM/DD'),16830,906000,-889170);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0002','BRN00000',to_date('2020/03/03','YYYY/MM/DD'),16830,906000,-889170);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0003','BRN00000',to_date('2020/03/04','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0004','BRN00001',to_date('2020/03/05','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0005','BRN00002',to_date('2020/03/06','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0006','BRN00000',to_date('2020/03/07','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0009','BRN00000',to_date('2020/03/08','YYYY/MM/DD'),16830,906000,-889170);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0027','BRN00000',to_date('2020/03/27','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0017','BRN00000',to_date('2020/03/09','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0018','BRN00000',to_date('2020/03/10','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0028','BRN00000',to_date('2020/03/28','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0031','BRN00000',to_date('2020/03/29','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0057','BRN00000',to_date('2020/03/30','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0058','BRN00000',to_date('2020/03/31','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0059','BRN00000',to_date('2020/04/01','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0061','BRN00000',to_date('2020/04/02','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0062','BRN00000',to_date('2020/04/03','YYYY/MM/DD'),1793640,3624000,-1830360);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0063','BRN00000',to_date('2020/04/04','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0064','BRN00000',to_date('2020/04/05','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0065','BRN00000',to_date('2020/04/06','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0066','BRN00000',to_date('2020/04/07','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0067','BRN00000',to_date('2020/04/08','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0068','BRN00000',to_date('2020/04/09','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0069','BRN00000',to_date('2020/04/10','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0088','BRN00000',to_date('2020/04/11','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0089','BRN00000',to_date('2020/04/12','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0090','BRN00000',to_date('2020/04/13','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0091','BRN00000',to_date('2020/04/14','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0092','BRN00000',to_date('2020/04/15','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0093','BRN00000',to_date('2020/04/16','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0094','BRN00000',to_date('2020/04/17','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0095','BRN00000',to_date('2020/04/18','YYYY/MM/DD'),2866500,4000000,-1133500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0096','BRN00000',to_date('2020/04/19','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0097','BRN00000',to_date('2020/04/20','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0098','BRN00000',to_date('2020/04/21','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0099','BRN00000',to_date('2021/06/02','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0100','BRN00000',to_date('2020/05/22','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0101','BRN00000',to_date('2021/04/14','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0102','BRN00000',to_date('2021/06/03','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0103','BRN00000',to_date('2021/06/04','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0224','BRN00000',to_date('2021/07/06','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0225','BRN00000',to_date('2021/08/02','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0226','BRN00000',to_date('2021/08/26','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0227','BRN00000',to_date('2021/08/04','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0228','BRN00000',to_date('2021/08/05','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0229','BRN00000',to_date('2021/08/06','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0230','BRN00000',to_date('2021/08/07','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0231','BRN00000',to_date('2021/08/08','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0232','BRN00000',to_date('2021/08/09','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0233','BRN00000',to_date('2021/08/10','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0234','BRN00000',to_date('2021/08/11','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0235','BRN00000',to_date('2021/08/12','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0236','BRN00000',to_date('2021/08/13','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0237','BRN00000',to_date('2021/08/14','YYYY/MM/DD'),1914830,3589540,1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0238','BRN00000',to_date('2021/08/15','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0239','BRN00000',to_date('2021/08/16','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0240','BRN00000',to_date('2021/08/17','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0241','BRN00000',to_date('2021/08/18','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0242','BRN00000',to_date('2021/08/19','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0243','BRN00000',to_date('2021/08/20','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0244','BRN00000',to_date('2021/06/05','YYYY/MM/DD'),1200000,610400,589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0245','BRN00000',to_date('2021/06/26','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0246','BRN00000',to_date('2021/06/07','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0247','BRN00000',to_date('2021/06/08','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0248','BRN00000',to_date('2021/06/09','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0249','BRN00000',to_date('2021/06/10','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0250','BRN00000',to_date('2021/06/11','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0251','BRN00000',to_date('2021/06/12','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0252','BRN00000',to_date('2021/06/13','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0253','BRN00000',to_date('2021/06/14','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0254','BRN00000',to_date('2021/06/15','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0255','BRN00000',to_date('2021/06/16','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0256','BRN00000',to_date('2021/06/17','YYYY/MM/DD'),572300,631200,-58900);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0257','BRN00000',to_date('2021/06/18','YYYY/MM/DD'),2351000,2940600,-589600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0258','BRN00000',to_date('2021/06/19','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0259','BRN00000',to_date('2021/06/20','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0260','BRN00000',to_date('2021/06/21','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0261','BRN00000',to_date('2021/06/22','YYYY/MM/DD'),3462000,1830360,1631640);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0262','BRN00000',to_date('2021/06/23','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0263','BRN00000',to_date('2021/06/24','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0264','BRN00000',to_date('2021/06/25','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0265','BRN00000',to_date('2021/06/06','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0266','BRN00000',to_date('2021/07/07','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0267','BRN00000',to_date('2021/07/08','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0268','BRN00000',to_date('2021/07/09','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0269','BRN00000',to_date('2021/07/10','YYYY/MM/DD'),710300,483500,226800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0270','BRN00000',to_date('2021/07/11','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0271','BRN00000',to_date('2021/07/12','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0272','BRN00000',to_date('2021/07/13','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0273','BRN00000',to_date('2021/07/14','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0287','BRN00000',to_date('2021/07/15','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0288','BRN00000',to_date('2021/07/16','YYYY/MM/DD'),1205200,710400,494800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0289','BRN00000',to_date('2021/07/17','YYYY/MM/DD'),1914830,3589540,-1674710);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0290','BRN00000',to_date('2021/07/18','YYYY/MM/DD'),1793640,3648200,-1854560);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0337','BRN00000',to_date('2022/03/04','YYYY/MM/DD'),800000,350000,450000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0338','BRN00000',to_date('2022/03/03','YYYY/MM/DD'),3800000,2736500,1063500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0375','BRN00002',to_date('2022/04/14','YYYY/MM/DD'),1274500,0,1274500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0382','BRN00000',to_date('2022/03/29','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0383','BRN00002',to_date('2022/04/19','YYYY/MM/DD'),2365000,2445500,-80500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0384','BRN00003',to_date('2022/03/31','YYYY/MM/DD'),625800,128000,497800);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0385','BRN00000',to_date('2022/04/01','YYYY/MM/DD'),3915000,4128000,-213000);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0386','BRN00001',to_date('2022/04/02','YYYY/MM/DD'),2014700,3724200,-1790500);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0387','BRN00002',to_date('2022/04/03','YYYY/MM/DD'),213600,84000,129600);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0388','BRN00003',to_date('2022/04/04','YYYY/MM/DD'),99600,906000,-806400);
Insert into SLS (SLS_ID,BRNCOFC_ID,SLS_DT,SLS_AMT,PRC_AMT,NETINCOME) values ('SLS0389','BRN00003',to_date('2022/03/30','YYYY/MM/DD'),710300,483500,226800);
REM INSERTING into STRE
SET DEFINE OFF;
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','21','반찬','C405');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','21','김치','C406');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','1','스마트워치','C902');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','1','게이밍','C903');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','1','휴대폰','C904');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','1','카메라','C905');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','1','1인방송/촬영','C906');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','1','태블릿PC','C907');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','노트북','C1001');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','데스크탑','C1002');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','모니터','C1003');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','복합기/프린터','C1004');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','키보드/마우스','C1005');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','주변기기','C1006');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','저장장치','C1007');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','소프트웨어','C1008');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','캠핑','C1101');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','등산/아웃도어','C1102');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','골프','C1103');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','자전거','C1104');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','홈트레이닝','C1105');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','낚시','C1106');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','퍼스널모빌리티','C1107');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','배드민턴','C1108');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','볼링','C1111');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','스킨케어','C301');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','헤어케어','C302');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','바디케어','C303');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','향수','C304');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','클렌징','C305');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','뷰티소품','C306');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','베이스메이크업','C307');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','색조메이크업','C308');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','마스크/팩','C309');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','네일케어','C310');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','선케어','C311');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','남성화장품','C312');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','4','비건','C313');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','소설','C1501');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','시/에세이','C1502');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','경제/경영','C1503');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','자기계발','C1504');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','인문','C1505');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','역사','C1506');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','사회/정치','C1507');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','자연/과학','C1508');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','예술/대중문화','C1509');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','종교','C1510');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','유아','C1511');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','어린이','C1512');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','5','청소년','C1513');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','6','생활용품','C702');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','7','의류','C101');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','7','신발','C102');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','7','가방/지갑','C103');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','7','언더웨어/잠옷','C104');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','7','시계','C105');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','7','주얼리','C106');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','건강관리용품','C1201');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','마스크','C1202');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','손소독제','C1203');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','안마용품','C1204');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','건강측정용품','C1205');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','의료용품','C1206');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','발건강용품','C1207');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','재활운동용품','C1208');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','족욕/좌훈용품','C1209');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','실버용품','C1210');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','냉온/찜질용품','C1211');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','9','눈건강용품','C1212');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','TV','C801');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','청소기','C802');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','냉장고','C803');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','계절가전','C804');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','세탁기/건조기','C805');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','주방가전','C806');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','이미용가전','C807');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','욕실가전','C808');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','생활가전','C810');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','펫가전','C811');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','11','원예용품/식물','C1401');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','11','수집품','C1402');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','11','문구/사무용품','C1403');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','11','화방용품','C1404');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','12','청소용품','C705');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','12','구강위생용품','C706');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','12','보안용품','C707');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','13','세탁용품','C708');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','14','타이어/휠','C1301');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','14','공구','C1302');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','14','자동차기기','C1304');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','14','겨울용품','C1305');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','15','건강식품','C401');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','분유','C501');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','기저귀','C502');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','물티슈','C503');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','이유식/유아간식','C504');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','이유식용품','C505');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','수유용품','C506');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','유모차/왜건','C507');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','카시트','C508');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','아기띠/외출용품','C509');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','목욕/스킨케어','C510');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','위생/건강/세제','C511');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','매트/안전용품','C512');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','16','유아가구','C513');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','소파','C201');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','침대/매트리스','C202');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','드레스룸/행거','C203');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','거실장/테이블','C204');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','책상/책장','C205');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','식탁/주방가구','C207');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','선반/수납가구','C208');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','아동가구','C209');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','조명/스탠드','C210');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','18','고양이용품','C601');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','18','기타반려동물용품','C602');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','18','조류용품','C603');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','18','토끼용품','C605');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','18','고슴도치용품','C606');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','18','관상어용품','C607');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','19','수산물','C404');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','20','냉동/간편조리','C411');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','22','음료','C409');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','24','농산물','C402');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','25','가공식품','C408');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','건강식품','C401');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','농산물','C402');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','축산','C403');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','수산물','C404');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','반찬','C405');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','김치','C406');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','라면/면류','C407');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','가공식품','C408');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','유가공품','C410');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','냉동/간편조리','C411');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','TV','C801');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','3','공구','C1302');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','3','자동차용품','C1303');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','3','자동차기기','C1304');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','3','겨울용품','C1305');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','캠핑','C1101');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','등산/아웃도어','C1102');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','골프','C1103');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','자전거','C1104');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','낚시','C1106');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','퍼스널모빌리티','C1107');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','배드민턴','C1108');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','테니스','C1109');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','족구','C1110');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','볼링','C1111');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','축구','C1112');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','5','음향기기','C901');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','5','스마트워치','C902');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','5','게이밍','C903');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','5','휴대폰','C904');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','5','카메라','C905');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','5','1인방송/촬영','C906');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','5','태블릿PC','C907');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','노트북','C1001');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','데스크탑','C1002');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','모니터','C1003');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','복합기/프린터','C1004');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','키보드/마우스','C1005');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','저장장치','C1007');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','소프트웨어','C1008');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','부품','C1009');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','분유','C501');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','기저귀','C502');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','물티슈','C503');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','이유식용품','C505');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','수유용품','C506');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','유모차/왜건','C507');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','아기띠/외출용품','C509');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','목욕/스킨케어','C510');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','위생/건강/세제','C511');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','매트/안전용품','C512');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','유아가구','C513');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','8','생활용품','C702');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','9','주방용품','C701');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','스킨케어','C301');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','헤어케어','C302');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','바디케어','C303');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','향수','C304');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','뷰티소품','C306');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','베이스메이크업','C307');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','색조메이크업','C308');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','마스크/팩','C309');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','네일케어','C310');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','선케어','C311');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','남성화장품','C312');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','비건','C313');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','12','청소용품','C705');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','13','욕실용품','C703');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','건강관리용품','C1201');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','마스크','C1202');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','손소독제','C1203');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','안마용품','C1204');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','건강측정용품','C1205');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','의료용품','C1206');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','발건강용품','C1207');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','실버용품','C1210');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','냉온/찜질용품','C1211');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','눈건강용품','C1212');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','15','강아지용품','C514');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','15','고양이용품','C601');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','15','기타반려동물용품','C602');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','15','조류용품','C603');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','15','햄스터용품','C604');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','15','토끼용품','C605');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','15','고슴도치용품','C606');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','15','관상어용품','C607');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','청소기','C802');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','냉장고','C803');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','계절가전','C804');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','세탁기/건조기','C805');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','주방가전','C806');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','이미용가전','C807');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','욕실가전','C808');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','영상가전','C809');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','생활가전','C810');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','2','펫가전','C811');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','21','라면/면류','C407');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','18','강아지용품','C514');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','16','의류','C101');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','16','신발','C102');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','16','가방/지갑','C103');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','16','언더웨어/잠옷','C104');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','17','시계','C105');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','17','주얼리','C106');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','17','패션잡화/소품','C107');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','18','원예용품/식물','C1401');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','18','수집품','C1402');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','18','문구/사무용품','C1403');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','18','화방용품','C1404');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','소파','C201');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','침대/매트리스','C202');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','드레스룸/행거','C203');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','거실장/테이블','C204');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','책상/책장','C205');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','의자','C206');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','식탁/주방가구','C207');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','선반/수납가구','C208');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','아동가구','C209');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','19','조명/스탠드','C210');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','소설','C1501');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','시/에세이','C1502');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','경제/경영','C1503');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','자기계발','C1504');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','인문','C1505');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','역사','C1506');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','사회/정치','C1507');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','자연/과학','C1508');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','예술/대중문화','C1509');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','종교','C1510');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','유아','C1511');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','어린이','C1512');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','20','청소년','C1513');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','11','수납/정리용품','C704');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','11','구강위생용품','C706');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','11','보안용품','C707');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','11','세탁용품','C708');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','1','농산물','C402');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','2','축산','C403');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','3','수산물','C404');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','4','의류','C101');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','4','신발','C102');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','4','가방/지갑','C103');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','4','언더웨어/잠옷','C104');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','4','시계','C105');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','4','주얼리','C106');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','4','패션잡화/소품','C107');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','노트북','C1001');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','데스크탑','C1002');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','모니터','C1003');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','복합기/프린터','C1004');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','키보드/마우스','C1005');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','주변기기','C1006');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','저장장치','C1007');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','소프트웨어','C1008');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','5','부품','C1009');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','6','음향기기','C901');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','6','스마트워치','C902');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','6','게이밍','C903');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','6','휴대폰','C904');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','6','카메라','C905');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','6','1인방송/촬영','C906');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','6','태블릿PC','C907');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','TV','C801');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','청소기','C802');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','냉장고','C803');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','계절가전','C804');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','세탁기/건조기','C805');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','주방가전','C806');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','이미용가전','C807');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','욕실가전','C808');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','영상가전','C809');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','생활가전','C810');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','7','펫가전','C811');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','원예용품/식물','C1401');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','수집품','C1402');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','문구/사무용품','C1403');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','화방용품','C1404');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','강아지용품','C514');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','고양이용품','C601');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','기타반려동물용품','C602');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','조류용품','C603');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','햄스터용품','C604');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','토끼용품','C605');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','고슴도치용품','C606');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','8','관상어용품','C607');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','소파','C201');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','침대/매트리스','C202');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','드레스룸/행거','C203');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','거실장/테이블','C204');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','책상/책장','C205');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','의자','C206');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','식탁/주방가구','C207');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','선반/수납가구','C208');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','아동가구','C209');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','9','조명/스탠드','C210');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','소설','C1501');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','시/에세이','C1502');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','경제/경영','C1503');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','자기계발','C1504');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','인문','C1505');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','역사','C1506');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','사회/정치','C1507');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','자연/과학','C1508');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','예술/대중문화','C1509');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','종교','C1510');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','유아','C1511');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','어린이','C1512');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','10','청소년','C1513');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','건강관리용품','C1201');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','마스크','C1202');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','손소독제','C1203');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','안마용품','C1204');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','건강측정용품','C1205');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','의료용품','C1206');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','발건강용품','C1207');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','재활운동용품','C1208');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','족욕/좌훈용품','C1209');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','실버용품','C1210');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','냉온/찜질용품','C1211');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','12','눈건강용품','C1212');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','스킨케어','C301');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','헤어케어','C302');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','바디케어','C303');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','향수','C304');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','클렌징','C305');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','뷰티소품','C306');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','베이스메이크업','C307');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','색조메이크업','C308');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','마스크/팩','C309');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','네일케어','C310');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','선케어','C311');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','남성화장품','C312');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','13','비건','C313');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','캠핑','C1101');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','등산/아웃도어','C1102');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','골프','C1103');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','자전거','C1104');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','홈트레이닝','C1105');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','낚시','C1106');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','퍼스널모빌리티','C1107');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','배드민턴','C1108');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','테니스','C1109');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','족구','C1110');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','볼링','C1111');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','14','축구','C1112');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','15','가공식품','C408');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','15','냉동/간편조리','C411');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','16','주방용품','C701');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','16','생활용품','C702');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','16','욕실용품','C703');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','16','수납/정리용품','C704');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','16','청소용품','C705');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','16','구강위생용품','C706');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','16','보안용품','C707');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','16','세탁용품','C708');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','분유','C501');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','기저귀','C502');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','물티슈','C503');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','이유식/유아간식','C504');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','이유식용품','C505');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','수유용품','C506');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','유모차/왜건','C507');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','카시트','C508');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','아기띠/외출용품','C509');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','목욕/스킨케어','C510');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','위생/건강/세제','C511');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','매트/안전용품','C512');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','유아가구','C513');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','타이어/휠','C1301');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','공구','C1302');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','자동차용품','C1303');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','자동차기기','C1304');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','17','겨울용품','C1305');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','11','건강식품','C401');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','11','반찬','C405');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','11','김치','C406');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','11','라면/면류','C407');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','11','음료','C409');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00003','11','유가공품','C410');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','2','부품','C1009');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','13','수납/정리용품','C704');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','10','영상가전','C809');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','8','욕실용품','C703');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','22','유가공품','C410');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','1','음료','C409');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','1','음향기기','C901');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','17','의자','C206');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','이유식/유아간식','C504');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','14','자동차용품','C1303');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','재활운동용품','C1208');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','족구','C1110');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','14','족욕/좌훈용품','C1209');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','6','주방용품','C701');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','6','주변기기','C1006');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','축구','C1112');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','23','축산','C403');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','7','카시트','C508');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','10','클렌징','C305');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','3','타이어/휠','C1301');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','3','테니스','C1109');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','7','패션잡화/소품','C107');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00001','18','햄스터용품','C604');
Insert into STRE (BRNCOFC_ID,STRE_SE,STRE_GDS_CG,CMNCD_CD) values ('BRN00002','4','홈트레이닝','C1105');
REM INSERTING into STRE_STCK
SET DEFINE OFF;
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00038',44,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00040',43,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00041',44,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00042',50,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00043',46,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00044',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00028',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00030',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00014',187,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00015',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00016',186,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00017',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00018',183,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00019',43,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00020',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00021',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00022',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00023',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00024',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00025',45,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00026',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00059',192,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00060',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00061',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00062',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00063',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00064',185,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00065',48,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00001',44,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00002',47,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00003',44,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00004',49,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00005',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00006',49,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00007',42,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00008',50,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00009',47,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00010',40,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00011',41,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00012',46,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00027',43,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00031',42,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00033',45,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00036',47,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00039',39,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00045',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00046',44,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00047',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00048',43,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00049',45,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00050',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00051',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00052',45,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00053',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00054',179,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00055',192,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00056',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00057',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00058',41,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00066',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00067',50,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00068',46,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00069',46,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00070',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00071',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00072',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00013',45,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00029',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00032',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00034',186,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00035',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00037',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00038',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00040',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00041',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00042',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00043',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00044',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00028',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00030',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00014',192,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00015',183,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00016',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00017',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00018',186,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00019',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00020',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00021',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00022',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00023',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00024',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00025',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00026',185,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00059',192,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00060',189,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00061',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00062',187,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00063',187,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00064',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00065',180,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00001',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00002',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00003',186,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00004',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00005',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00006',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00007',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00008',189,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00009',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00010',186,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00011',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00012',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00027',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00031',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00033',189,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00036',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00039',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00045',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00046',184,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00047',189,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00048',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00049',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00050',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00051',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00052',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00053',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00054',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00055',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00056',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00057',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00058',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00066',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00067',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00068',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00069',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00070',192,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00071',189,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00072',182,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00013',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00029',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00032',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00034',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00035',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00037',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00038',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00040',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00041',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00042',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00043',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00044',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00028',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00030',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00014',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00015',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00016',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00017',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00018',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00019',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00020',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00021',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00022',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00023',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00024',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00025',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00026',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00059',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00060',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00061',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00062',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00063',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00064',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00065',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00001',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00002',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00003',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00004',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00005',189,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00006',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00007',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00008',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00009',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00010',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00011',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00012',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00027',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00031',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00033',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00036',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00039',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00045',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00046',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00047',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00048',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00049',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00050',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00051',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00052',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00053',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00054',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00055',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00056',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00057',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00058',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00066',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00067',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00068',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00069',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00070',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00071',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00072',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00029',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00013',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00032',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00034',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00035',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00037',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00073',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00073',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00073',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00074',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00074',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00074',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00075',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00075',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00075',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00076',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00076',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00076',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00077',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00077',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00077',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00078',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00078',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00078',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00079',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00079',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00079',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00080',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00080',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00080',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00081',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00081',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00081',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00082',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00082',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00082',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00083',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00083',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00083',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00084',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00084',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00084',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00085',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00085',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00085',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00086',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00086',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00086',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00087',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00087',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00087',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00088',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00088',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00088',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00089',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00089',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00089',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00090',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00090',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00090',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00091',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00091',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00091',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00092',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00092',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00092',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00093',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00093',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00093',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00094',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00094',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00094',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00095',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00095',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00095',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00096',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00096',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00096',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00097',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00097',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00097',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00098',186,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00098',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00098',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00099',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00099',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00099',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00100',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00100',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00100',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00101',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00101',187,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00101',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00102',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00102',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00102',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00103',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00103',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00103',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00104',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00104',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00104',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00105',186,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00105',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00105',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00106',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00106',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00106',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00107',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00107',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00107',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00108',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00108',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00108',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00109',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00109',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00109',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00110',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00110',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00110',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00111',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00111',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00111',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00112',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00112',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00112',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00113',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00113',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00113',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00114',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00114',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00114',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00115',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00115',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00115',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00116',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00116',192,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00116',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00117',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00117',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00117',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00118',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00118',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00118',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00119',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00119',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00119',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00120',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00120',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00120',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00121',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00121',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00121',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00122',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00122',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00122',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00123',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00123',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00123',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00124',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00124',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00124',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00125',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00125',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00125',194,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00126',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00126',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00126',190,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00127',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00127',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00127',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00128',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00128',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00128',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00129',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00129',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00129',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00130',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00130',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00130',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00131',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00131',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00131',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00132',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00132',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00132',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00133',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00133',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00133',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00134',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00134',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00134',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00135',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00135',197,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00135',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00136',199,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00136',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00136',191,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00137',198,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00137',192,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00137',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00138',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00138',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00138',175,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00139',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00139',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00139',196,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00140',188,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00140',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00140',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00141',193,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00141',186,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00141',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00142',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00142',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00142',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00143',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00143',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00143',195,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00002','PROD00144',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00003','PROD00144',200,100);
Insert into STRE_STCK (BRNCOFC_ID,PROD_INFO_ID,STRE_STCK_QTY,STRE_STCK_SFTY_QTY) values ('BRN00001','PROD00144',200,100);
REM INSERTING into STRG_SHMT
SET DEFINE OFF;
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (245,'BRN00000','PROD00002',10,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (246,'BRN00000','PROD00003',10,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (247,'BRN00000','PROD00004',10,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (250,'BRN00000','PROD00004',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (251,'BRN00000','PROD00005',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (252,'BRN00000','PROD00059',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (253,'BRN00000','PROD00060',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (254,'BRN00000','PROD00061',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (255,'BRN00000','PROD00062',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (259,'BRN00000','PROD00017',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (260,'BRN00000','PROD00020',70,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (261,'BRN00000','PROD00021',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (262,'BRN00000','PROD00064',60,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (263,'BRN00000','PROD00065',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (264,'BRN00000','PROD00027',30,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (265,'BRN00000','PROD00031',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (266,'BRN00000','PROD00045',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (267,'BRN00000','PROD00047',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (268,'BRN00000','PROD00057',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (269,'BRN00000','PROD00066',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (270,'BRN00000','PROD00067',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (271,'BRN00001','PROD00005',163,to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (272,'BRN00001','PROD00021',163,to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (273,'BRN00000','PROD00028',30,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (274,'BRN00000','PROD00030',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (275,'BRN00000','PROD00041',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (276,'BRN00000','PROD00042',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (277,'BRN00000','PROD00043',20,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (278,'BRN00000','PROD00044',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (279,'BRN00000','PROD00129',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (280,'BRN00000','PROD00130',10,to_date('2022/04/21','YYYY/MM/DD'),'BRN00002');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (281,'BRN00001','PROD00030',162,to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (282,'BRN00001','PROD00022',162,to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (283,'BRN00001','PROD00024',162,to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (32,'BRN00000','PROD00004',100,to_date('2022/03/25','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (33,'BRN00000','PROD00013',10,to_date('2022/03/25','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (20,'BRN00001','PROD00013',10,to_date('2022/03/25','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (257,'BRN00001','PROD00044',164,to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (37,'BRN00001','PROD00011',36,to_date('2022/04/05','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (256,'BRN00001','PROD00047',171,to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (258,'BRN00001','PROD00035',163,to_date('2022/04/21','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (284,'BRN00000','PROD00002',417,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (285,'BRN00000','PROD00005',406,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (286,'BRN00000','PROD00012',407,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (287,'BRN00000','PROD00061',417,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (288,'BRN00000','PROD00027',417,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (30,'BRN00000','PROD00002',100,to_date('2022/03/25','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (31,'BRN00000','PROD00003',100,to_date('2022/03/25','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (289,'BRN00000','PROD00047',414,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (290,'BRN00000','PROD00048',413,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (291,'BRN00000','PROD00052',406,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (292,'BRN00000','PROD00072',407,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (293,'BRN00000','PROD00035',414,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (294,'BRN00000','PROD00037',408,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (295,'BRN00000','PROD00038',412,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (296,'BRN00000','PROD00043',414,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (297,'BRN00000','PROD00044',413,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (298,'BRN00000','PROD00030',406,to_date('2022/04/22','YYYY/MM/DD'),'BRN00003');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (299,'BRN00001','PROD00070',161,to_date('2022/04/22','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (300,'BRN00001','PROD00028',161,to_date('2022/04/22','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (301,'BRN00001','PROD00020',161,to_date('2022/04/22','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (95,'BRN00002','PROD00016',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (96,'BRN00002','PROD00017',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (97,'BRN00002','PROD00018',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (98,'BRN00002','PROD00019',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (99,'BRN00002','PROD00020',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (100,'BRN00002','PROD00021',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (101,'BRN00002','PROD00022',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (102,'BRN00002','PROD00023',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (103,'BRN00002','PROD00024',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (93,'BRN00002','PROD00014',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (94,'BRN00002','PROD00015',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (104,'BRN00002','PROD00025',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (105,'BRN00002','PROD00001',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (106,'BRN00002','PROD00002',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (107,'BRN00002','PROD00003',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (108,'BRN00002','PROD00004',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (109,'BRN00002','PROD00005',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (110,'BRN00002','PROD00006',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (111,'BRN00002','PROD00007',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (112,'BRN00002','PROD00008',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (113,'BRN00002','PROD00009',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (114,'BRN00002','PROD00010',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (115,'BRN00002','PROD00011',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (116,'BRN00002','PROD00012',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (117,'BRN00002','PROD00026',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (118,'BRN00002','PROD00059',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (119,'BRN00002','PROD00060',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (120,'BRN00002','PROD00061',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (121,'BRN00002','PROD00062',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (122,'BRN00002','PROD00063',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (123,'BRN00002','PROD00064',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (124,'BRN00002','PROD00065',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (125,'BRN00002','PROD00027',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (126,'BRN00002','PROD00036',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (127,'BRN00002','PROD00031',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (128,'BRN00002','PROD00033',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (129,'BRN00002','PROD00039',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (130,'BRN00002','PROD00045',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (131,'BRN00002','PROD00046',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (132,'BRN00002','PROD00047',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (133,'BRN00002','PROD00048',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (134,'BRN00002','PROD00049',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (135,'BRN00002','PROD00050',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (136,'BRN00002','PROD00051',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (137,'BRN00002','PROD00052',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (138,'BRN00002','PROD00053',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (139,'BRN00002','PROD00054',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (140,'BRN00002','PROD00055',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (141,'BRN00002','PROD00056',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (142,'BRN00002','PROD00057',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (143,'BRN00002','PROD00058',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (144,'BRN00002','PROD00066',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (145,'BRN00002','PROD00067',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (146,'BRN00002','PROD00068',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (147,'BRN00002','PROD00069',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (148,'BRN00002','PROD00070',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (149,'BRN00002','PROD00071',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (150,'BRN00002','PROD00072',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (151,'BRN00002','PROD00029',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (152,'BRN00002','PROD00032',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (153,'BRN00002','PROD00013',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (154,'BRN00002','PROD00034',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (155,'BRN00002','PROD00035',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (156,'BRN00002','PROD00037',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (157,'BRN00002','PROD00038',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (158,'BRN00002','PROD00040',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (159,'BRN00002','PROD00041',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (160,'BRN00002','PROD00042',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (161,'BRN00002','PROD00043',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (162,'BRN00002','PROD00044',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (163,'BRN00002','PROD00030',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (164,'BRN00002','PROD00028',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (239,'BRN00001','PROD00001',30,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (240,'BRN00001','PROD00002',30,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (241,'BRN00001','PROD00025',20,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (242,'BRN00001','PROD00023',170,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (243,'BRN00001','PROD00066',166,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (244,'BRN00001','PROD00057',165,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (38,'BRN00002','PROD00001',300,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (39,'BRN00002','PROD00002',150,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (40,'BRN00002','PROD00003',150,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (41,'BRN00002','PROD00004',200,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (42,'BRN00002','PROD00005',400,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (43,'BRN00002','PROD00006',350,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (44,'BRN00002','PROD00007',100,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (45,'BRN00002','PROD00008',50,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (46,'BRN00002','PROD00009',100,to_date('2022/04/06','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (47,'BRN00001','PROD00002',450,to_date('2022/04/15','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (53,'BRN00001','PROD00003',40,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (54,'BRN00001','PROD00004',40,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (55,'BRN00001','PROD00005',30,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (56,'BRN00001','PROD00014',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (57,'BRN00001','PROD00015',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (58,'BRN00001','PROD00016',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (59,'BRN00001','PROD00017',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (60,'BRN00001','PROD00018',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (165,'BRN00003','PROD00057',168,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (166,'BRN00003','PROD00027',167,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (167,'BRN00003','PROD00061',167,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (168,'BRN00003','PROD00002',167,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (169,'BRN00003','PROD00035',164,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (170,'BRN00003','PROD00043',164,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (171,'BRN00003','PROD00047',164,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (172,'BRN00003','PROD00044',163,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (173,'BRN00003','PROD00048',163,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (174,'BRN00003','PROD00038',162,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (175,'BRN00003','PROD00010',161,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (176,'BRN00003','PROD00054',160,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (177,'BRN00003','PROD00041',160,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (178,'BRN00003','PROD00036',160,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (179,'BRN00003','PROD00034',159,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (180,'BRN00003','PROD00071',159,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (181,'BRN00003','PROD00026',159,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (182,'BRN00003','PROD00008',159,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (183,'BRN00003','PROD00001',159,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (184,'BRN00003','PROD00024',159,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (185,'BRN00003','PROD00040',159,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (186,'BRN00003','PROD00007',158,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (187,'BRN00003','PROD00029',158,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (188,'BRN00003','PROD00032',158,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (189,'BRN00003','PROD00037',158,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (190,'BRN00003','PROD00072',157,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (191,'BRN00003','PROD00012',157,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (192,'BRN00003','PROD00030',156,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (193,'BRN00003','PROD00070',156,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (194,'BRN00003','PROD00052',156,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (195,'BRN00003','PROD00005',156,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (196,'BRN00003','PROD00019',156,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (197,'BRN00003','PROD00068',155,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (198,'BRN00003','PROD00016',155,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (199,'BRN00003','PROD00051',155,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (200,'BRN00003','PROD00050',155,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (201,'BRN00003','PROD00049',155,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (202,'BRN00003','PROD00031',155,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (203,'BRN00003','PROD00065',155,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (204,'BRN00003','PROD00013',155,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (205,'BRN00003','PROD00069',154,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (206,'BRN00003','PROD00014',154,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (207,'BRN00003','PROD00021',154,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (208,'BRN00003','PROD00042',154,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (209,'BRN00003','PROD00022',154,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (210,'BRN00003','PROD00058',154,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (211,'BRN00003','PROD00059',154,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (212,'BRN00003','PROD00025',154,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (213,'BRN00003','PROD00066',153,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (214,'BRN00003','PROD00063',153,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (215,'BRN00003','PROD00009',153,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (216,'BRN00003','PROD00006',153,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (217,'BRN00003','PROD00045',153,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (218,'BRN00003','PROD00020',153,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (219,'BRN00003','PROD00023',153,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (220,'BRN00003','PROD00046',153,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (221,'BRN00003','PROD00028',152,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (222,'BRN00003','PROD00067',152,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (223,'BRN00003','PROD00056',152,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (224,'BRN00003','PROD00004',152,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (225,'BRN00003','PROD00064',152,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (226,'BRN00003','PROD00060',151,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (227,'BRN00003','PROD00011',151,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (228,'BRN00003','PROD00055',151,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (229,'BRN00003','PROD00015',151,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (230,'BRN00003','PROD00062',151,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (231,'BRN00003','PROD00033',150,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (232,'BRN00003','PROD00039',150,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (233,'BRN00003','PROD00018',150,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (234,'BRN00003','PROD00003',150,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (235,'BRN00003','PROD00053',150,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (236,'BRN00003','PROD00017',150,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (237,'BRN00000','PROD00016',40,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (238,'BRN00000','PROD00017',60,to_date('2022/04/20','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (248,'BRN00001','PROD00032',164,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (249,'BRN00001','PROD00045',164,to_date('2022/04/20','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (23,'BRN00000','PROD00003',150,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (24,'BRN00000','PROD00004',200,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (25,'BRN00000','PROD00005',400,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (26,'BRN00000','PROD00006',350,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (27,'BRN00000','PROD00007',100,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (28,'BRN00000','PROD00008',50,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (29,'BRN00000','PROD00009',100,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (50,'BRN00001','PROD00009',10,to_date('2022/04/15','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (48,'BRN00001','PROD00007',30,to_date('2022/04/15','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (21,'BRN00000','PROD00001',300,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (22,'BRN00000','PROD00002',150,to_date('2022/03/23','YYYY/MM/DD'),'BRN00001');
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (49,'BRN00001','PROD00008',30,to_date('2022/04/15','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (51,'BRN00001','PROD00017',26,to_date('2022/04/18','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (52,'BRN00001','PROD00020',483,to_date('2022/04/18','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (61,'BRN00001','PROD00026',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (62,'BRN00001','PROD00059',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (63,'BRN00001','PROD00060',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (64,'BRN00001','PROD00061',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (65,'BRN00001','PROD00062',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (66,'BRN00001','PROD00063',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (67,'BRN00001','PROD00064',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (68,'BRN00001','PROD00050',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (69,'BRN00001','PROD00051',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (70,'BRN00001','PROD00053',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (71,'BRN00001','PROD00054',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (72,'BRN00001','PROD00055',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (73,'BRN00001','PROD00056',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (74,'BRN00001','PROD00071',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (75,'BRN00001','PROD00072',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (76,'BRN00001','PROD00029',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (77,'BRN00001','PROD00034',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (78,'BRN00001','PROD00037',150,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (79,'BRN00003','PROD00014',20,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (80,'BRN00003','PROD00015',30,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (81,'BRN00003','PROD00016',20,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (82,'BRN00001','PROD00016',200,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (83,'BRN00001','PROD00061',200,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (84,'BRN00001','PROD00062',200,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (85,'BRN00001','PROD00064',200,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (86,'BRN00001','PROD00050',30,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (87,'BRN00001','PROD00051',30,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (88,'BRN00001','PROD00052',50,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (89,'BRN00001','PROD00053',30,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (90,'BRN00001','PROD00054',50,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (91,'BRN00001','PROD00004',30,to_date('2022/04/19','YYYY/MM/DD'),null);
Insert into STRG_SHMT (STRG_SHMT_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_SHMT_QTY,STRG_SHMT_DT,BRNCOFC_ID_WR) values (92,'BRN00001','PROD00005',20,to_date('2022/04/19','YYYY/MM/DD'),null);
REM INSERTING into STRG_STCK
SET DEFINE OFF;
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00014',1480,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00014',96,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00014',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00014',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00015',1470,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00015',99,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00015',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00015',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00016',1240,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00016',95,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00016',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00016',100,150,300,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00017',1394,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00017',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00017',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00017',100,150,300,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00018',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00018',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00018',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00018',100,150,300,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00019',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00019',94,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00019',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00019',250,150,300,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00020',947,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00020',97,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00020',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00020',89,150,300,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00021',1480,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00021',96,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00021',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00021',87,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00022',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00022',96,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00022',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00022',88,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00023',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00023',97,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00023',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00023',80,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00024',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00024',91,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00024',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00024',88,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00025',1480,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00025',96,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00025',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00025',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00026',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00026',91,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00026',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00026',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00059',1490,1000,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00059',96,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00059',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00059',100,150,300,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00060',1480,1000,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00060',99,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00060',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00060',100,150,300,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00061',863,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00061',83,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00061',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00061',300,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00062',1280,1000,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00062',99,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00062',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00062',300,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00063',1500,1000,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00063',97,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00063',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00063',100,150,300,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00064',1240,1000,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00064',98,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00064',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00064',100,150,300,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00065',1480,1000,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00065',95,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00065',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00065',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00073',1540,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00073',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00073',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00073',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00074',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00074',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00074',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00074',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00075',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00075',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00075',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00075',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00076',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00076',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00076',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00076',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00077',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00077',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00077',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00077',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00078',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00078',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00078',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00078',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00079',5000,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00079',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00079',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00079',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00080',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00080',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00080',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00080',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00138',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00138',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00138',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00139',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00139',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00139',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00139',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00140',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00140',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00140',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00140',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00141',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00141',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00141',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00141',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00142',5000,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00142',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00142',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00142',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00001',9980,500,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00002',9103,500,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00003',9960,500,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00004',9900,500,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00005',9524,500,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00006',10000,500,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00007',10070,500,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00008',9970,500,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00009',9990,500,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00010',10000,500,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00011',10000,500,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00012',9593,500,2000,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00001',91,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00002',83,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00003',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00004',98,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00005',94,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00006',97,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00007',92,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00008',91,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00009',97,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00010',89,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00011',99,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00012',93,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00001',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00002',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00003',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00004',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00005',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00006',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00007',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00008',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00009',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00010',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00011',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00012',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00001',550,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00002',650,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00003',400,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00004',290,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00005',87,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00006',600,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00007',350,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00008',300,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00009',350,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00010',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00011',214,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00012',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00027',1053,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00027',83,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00027',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00027',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00031',1490,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00031',95,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00031',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00031',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00033',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00033',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00033',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00033',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00036',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00036',90,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00036',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00036',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00039',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00039',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00039',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00039',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00045',1480,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00045',97,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00045',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00045',86,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00046',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00046',97,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00046',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00046',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00047',1076,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00047',86,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00047',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00047',79,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00048',1087,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00048',87,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00048',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00048',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00049',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00049',95,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00049',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00049',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00050',1470,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00050',95,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00050',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00050',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00051',1470,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00051',95,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00051',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00051',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00052',1044,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00052',94,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00052',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00052',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00053',1470,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00053',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00053',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00053',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00054',1450,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00054',90,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00054',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00054',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00055',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00055',99,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00055',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00055',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00056',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00056',98,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00056',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00056',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00057',1480,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00057',82,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00057',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00057',85,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00058',1500,1000,2000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00058',96,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00058',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00058',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00066',1500,2000,5000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00066',97,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00066',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00066',84,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00067',1490,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00067',98,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00067',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00067',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00068',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00068',95,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00068',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00068',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00069',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00069',96,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00069',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00069',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00070',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00070',94,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00070',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00070',89,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00071',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00071',91,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00071',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00071',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00072',1093,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00072',93,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00072',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00072',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00081',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00081',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00081',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00081',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00083',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00083',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00083',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00083',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00086',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00086',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00086',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00086',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00087',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00087',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00087',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00087',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00013',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00013',250,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00013',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00029',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00029',92,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00013',95,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00029',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00029',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00032',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00032',92,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00032',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00032',86,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00034',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00034',91,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00034',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00034',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00035',1086,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00035',86,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00035',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00035',87,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00037',1092,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00037',92,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00037',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00037',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00038',1088,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00038',88,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00038',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00038',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00040',1500,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00040',91,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00040',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00040',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00041',1490,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00041',90,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00041',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00041',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00042',1490,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00042',96,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00042',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00042',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00043',1066,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00043',86,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00043',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00043',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00044',1077,1000,2000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00044',87,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00044',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00044',86,150,300,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00082',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00082',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00082',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00082',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00084',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00084',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00084',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00084',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00085',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00085',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00085',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00085',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00143',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00143',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00143',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00143',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00144',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00144',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00144',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00144',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00028',1470,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00028',98,100,500,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00028',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00028',89,150,300,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00030',1084,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00030',94,100,500,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00030',100,100,500,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00030',88,150,300,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00088',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00088',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00088',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00088',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00089',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00089',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00089',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00089',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00090',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00090',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00090',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00090',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00091',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00091',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00091',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00091',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00092',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00092',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00092',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00092',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00093',1500,2000,5000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00093',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00093',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00093',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00094',1500,2000,5000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00094',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00094',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00094',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00095',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00095',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00095',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00095',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00096',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00096',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00096',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00096',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00097',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00097',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00097',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00097',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00098',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00098',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00098',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00098',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00099',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00099',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00099',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00099',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00100',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00100',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00100',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00100',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00101',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00101',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00101',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00101',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00102',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00102',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00102',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00102',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00103',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00103',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00103',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00103',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00104',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00104',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00104',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00104',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00105',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00105',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00105',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00105',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00106',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00106',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00106',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00106',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00107',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00107',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00107',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00107',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00108',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00108',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00108',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00108',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00109',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00109',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00109',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00109',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00110',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00110',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00110',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00110',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00111',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00111',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00111',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00111',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00112',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00112',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00112',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00112',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00113',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00113',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00113',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00113',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00114',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00114',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00114',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00114',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00115',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00115',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00115',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00115',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00116',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00116',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00116',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00116',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00117',1900,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00117',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00117',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00117',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00118',5000,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00118',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00118',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00118',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00119',1500,2000,5000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00119',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00119',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00119',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00120',5000,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00120',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00120',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00120',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00121',1500,2000,5000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00121',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00121',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00121',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00122',1500,2000,5000,'Y','N');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00122',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00122',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00122',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00123',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00123',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00123',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00123',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00124',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00124',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00124',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00124',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00125',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00125',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00125',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00125',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00126',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00126',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00126',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00126',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00127',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00127',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00127',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00127',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00128',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00128',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00128',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00128',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00129',1490,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00129',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00129',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00129',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00130',1490,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00130',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00130',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00130',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00131',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00131',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00131',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00131',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00132',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00132',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00132',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00132',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00133',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00133',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00133',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00133',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00134',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00134',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00134',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00134',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00135',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00135',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00135',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00135',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00136',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00136',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00136',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00136',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00137',1500,2000,5000,'Y','Y');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00003','PROD00137',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00002','PROD00137',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00001','PROD00137',250,150,300,'Y','O');
Insert into STRG_STCK (BRNCOFC_ID,PROD_INFO_ID,STRG_STCK_QTY,STRG_STCK_SFTY_QTY,STRG_STCK_DFLT_QTY,STRG_STCK_YN,STRG_STCK_ORDR_YN) values ('BRN00000','PROD00138',1500,2000,5000,'Y','Y');
REM INSERTING into STRG_WRHS
SET DEFINE OFF;
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (49,'BRN00000','PROD00011',10,to_date('2022/04/08','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (50,'BRN00000','PROD00012',10,to_date('2022/04/08','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (51,'BRN00000','PROD00012',10,to_date('2022/04/08','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (62,'BRN00000','PROD00120',3500,to_date('2022/04/21','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (63,'BRN00000','PROD00066',20,to_date('2022/04/21','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (65,'BRN00000','PROD00079',3500,to_date('2022/04/22','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (1,'BRN00000','PROD00001',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (2,'BRN00000','PROD00002',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (3,'BRN00000','PROD00003',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (4,'BRN00000','PROD00004',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (5,'BRN00000','PROD00005',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (6,'BRN00000','PROD00006',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (7,'BRN00000','PROD00007',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (8,'BRN00000','PROD00008',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (9,'BRN00000','PROD00009',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (10,'BRN00000','PROD00010',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (11,'BRN00000','PROD00011',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (12,'BRN00000','PROD00012',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (66,'BRN00000','PROD00073',20,to_date('2022/04/22','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (57,'BRN00000','PROD00129',30,to_date('2022/04/19','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (58,'BRN00000','PROD00130',30,to_date('2022/04/19','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (59,'BRN00000','PROD00073',20,to_date('2022/04/20','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (13,'BRN00001','PROD00001',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (14,'BRN00001','PROD00002',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (15,'BRN00001','PROD00003',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (16,'BRN00001','PROD00004',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (17,'BRN00001','PROD00005',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (18,'BRN00001','PROD00006',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (19,'BRN00001','PROD00007',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (20,'BRN00001','PROD00008',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (21,'BRN00001','PROD00009',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (22,'BRN00001','PROD00010',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (23,'BRN00001','PROD00011',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (24,'BRN00001','PROD00012',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (25,'BRN00002','PROD00001',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (26,'BRN00002','PROD00002',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (27,'BRN00002','PROD00003',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (28,'BRN00002','PROD00004',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (29,'BRN00002','PROD00005',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (30,'BRN00002','PROD00006',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (31,'BRN00002','PROD00007',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (32,'BRN00002','PROD00008',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (33,'BRN00002','PROD00009',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (34,'BRN00002','PROD00010',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (35,'BRN00002','PROD00011',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (36,'BRN00002','PROD00012',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (37,'BRN00003','PROD00001',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (38,'BRN00003','PROD00002',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (39,'BRN00003','PROD00003',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (40,'BRN00003','PROD00004',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (41,'BRN00003','PROD00005',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (42,'BRN00003','PROD00006',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (43,'BRN00003','PROD00007',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (44,'BRN00003','PROD00008',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (45,'BRN00003','PROD00009',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (46,'BRN00003','PROD00010',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (47,'BRN00003','PROD00011',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (48,'BRN00003','PROD00012',100,to_date('2022/03/11','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (52,'BRN00000','PROD00007',100,to_date('2022/04/18','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (53,'BRN00000','PROD00001',10,to_date('2022/04/19','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (54,'BRN00000','PROD00002',10,to_date('2022/04/19','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (55,'BRN00000','PROD00003',10,to_date('2022/04/19','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (56,'BRN00000','PROD00073',20,to_date('2022/04/19','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (60,'BRN00000','PROD00117',400,to_date('2022/04/20','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (61,'BRN00000','PROD00142',3500,to_date('2022/04/20','YYYY/MM/DD'));
Insert into STRG_WRHS (STRG_WRHS_ID,BRNCOFC_ID,PROD_INFO_ID,STRG_WRHS_QTY,STRG_WRHS_DT) values (64,'BRN00000','PROD00118',3500,to_date('2022/04/21','YYYY/MM/DD'));
REM INSERTING into TAX
SET DEFINE OFF;
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00014',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00015',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00013',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00003',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00004',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00007',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00009',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00010',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00001',null,null,null,null);
Insert into TAX (EMP_ID,TAX101,TAX201,TAX202,TAX301) values ('EMP00002',null,null,null,null);
REM INSERTING into TTABLE
SET DEFINE OFF;
REM INSERTING into WORKSTTS
SET DEFINE OFF;
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A503',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/15','YYYY/MM/DD'),'12:12:12','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/18','YYYY/MM/DD'),'10:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/28','YYYY/MM/DD'),'10:02:58','15:50:59','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/29','YYYY/MM/DD'),'09:19:42','17:15:13','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/01','YYYY/MM/DD'),'10:34:27',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/23','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/24','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/25','YYYY/MM/DD'),'10:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/25','YYYY/MM/DD'),'09:46:29','12:29:22','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/21','YYYY/MM/DD'),'08:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/21','YYYY/MM/DD'),'10:46:29','11:51:40','A503',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/21','YYYY/MM/DD'),'09:30:30','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/21','YYYY/MM/DD'),'08:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/21','YYYY/MM/DD'),'08:50:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/21','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/21','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/21','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/21','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/21','YYYY/MM/DD'),'08:20:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/21','YYYY/MM/DD'),'09:16:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/21','YYYY/MM/DD'),'10:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/21','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/22','YYYY/MM/DD'),'09:00:00','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/30','YYYY/MM/DD'),'09:12:15',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/22','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/21','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A503',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/01','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/03/15','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/03/15','YYYY/MM/DD'),'12:12:12','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/08','YYYY/MM/DD'),'13:52:13','14:31:24','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08',null,'A503',0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/09','YYYY/MM/DD'),'11:17:33',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/03/14','YYYY/MM/DD'),'11:11:11','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/16','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/17','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/03/18','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/03/29','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/03/31','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/09','YYYY/MM/DD'),'10:34:20',null,'A503',8,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/09','YYYY/MM/DD'),'10:34:20',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/09','YYYY/MM/DD'),'09:46:48',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/09','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/22','YYYY/MM/DD'),'09:12:45','09:14:31','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/03/30','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/04','YYYY/MM/DD'),'09:36:48',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/04','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/05','YYYY/MM/DD'),'09:15:59','11:41:04','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/05','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/06','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/07','YYYY/MM/DD'),'10:29:12','10:30:27','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/07','YYYY/MM/DD'),'10:29:12','10:39:10','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/07','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/08','YYYY/MM/DD'),'09:24:08','14:14:22','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/08','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/12','YYYY/MM/DD'),'09:32:01',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/03/28','YYYY/MM/DD'),'09:46:29','11:51:40','A504',8,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/18','YYYY/MM/DD'),'19:48:00',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/18','YYYY/MM/DD'),'09:15:34','11:30:09','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/11','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/12','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/13','YYYY/MM/DD'),'10:45:16','11:27:28','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/13','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/14','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/15','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/19','YYYY/MM/DD'),'14:17:56','14:20:38','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/20','YYYY/MM/DD'),'19:02:27','21:05:44','A503',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/18','YYYY/MM/DD'),'14:51:45','15:23:05','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/18','YYYY/MM/DD'),'09:15:34','17:20:39','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/18','YYYY/MM/DD'),'12:38:13',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/18','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/19','YYYY/MM/DD'),'08:39:56','14:22:10','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/19','YYYY/MM/DD'),'09:14:14',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/19','YYYY/MM/DD'),'15:04:22','15:04:54','A504',8,'오전09:00~오후18:00','업무종료');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/19','YYYY/MM/DD'),'09:14:14',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/19','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00007',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00008',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00010',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00012',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00013',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/20','YYYY/MM/DD'),'10:32:39',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00016',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00017',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00020',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00022',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00023',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00026',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00027',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00028',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/20','YYYY/MM/DD'),'11:37:21',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00031',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00032',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/20','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00001',to_date('2022/04/21','YYYY/MM/DD'),'15:42:28',null,'A503',0,'오전09:00~오후18:00','업무중');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00002',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00003',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00004',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00006',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00011',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00015',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00021',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00025',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00030',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00034',to_date('2022/04/21','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00005',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00009',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00014',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00018',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00024',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00029',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
Insert into WORKSTTS (EMP_ID,WORKSTTS_DT,WORKSTTS_BGNG_TM,WORKSTTS_END_TM,CMNCD_CD,WORKSTTS_TM,WORKSTTS_SC_TM,WORKSTTS_CK) values ('EMP00033',to_date('2022/04/22','YYYY/MM/DD'),null,null,null,0,'오전09:00~오후18:00','업무전');
REM INSERTING into V_TEST
SET DEFINE OFF;
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C402',1,20500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C902',4,960000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C408',3,3750);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',1,70000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1403',4,2000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1403',1,800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C102',2,161400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C408',1,2810);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',3,17190);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',3,34500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1503',2,23600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1201',4,30080);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',2,1820);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',2,1400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C902',3,720000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C102',1,59000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C410',4,56000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',4,3200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',1,2000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1204',4,17952000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1501',5,69000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C107',2,378000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',2,26000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C810',4,3596000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',2,4000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1403',5,4000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',5,65000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',4,23200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1403',3,33000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',1,87400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',2,2500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',5,65000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1202',5,21000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',1,930);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',3,2700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1303',1,17100);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C408',1,5600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C404',5,75000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',1,1100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1101',5,390000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',5,4550);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',3,34500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1304',3,104700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C401',5,139500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1303',2,5000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C408',2,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C410',3,60000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1501',2,24000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',5,4700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1501',3,33000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1101',2,716000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C810',3,2697000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',5,4700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C406',2,61600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',4,48000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',5,5000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',2,8960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C101',3,210000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1403',5,55000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C405',4,31360);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',1,940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1103',2,3960000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C101',1,5800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C411',1,10480);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C403',2,16080);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',5,5500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',5,44500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',3,16800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C701',4,24800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1101',1,218000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1202',1,4200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C301',2,105400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',1,940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C903',5,1934000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C404',4,108000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1403',2,1000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C902',1,240000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',1,930);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1304',5,174500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',3,30000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C801',2,2400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C801',3,3600000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',5,15000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C101',4,800000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C407',2,2020);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C410',2,3200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1403',4,3200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C705',4,12800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1101',5,1790000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',2,40000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C201',1,1100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1512',1,10800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C101',5,1000000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C801',3,3600000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C107',4,756000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',3,3300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C101',2,400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',3,38700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1501',1,11000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C904',3,3300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1101',5,3400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1508',5,139500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C307',2,200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C408',2,26000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',5,28000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1508',5,139500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C202',5,1757700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1101',1,78000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C102',4,236000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1503',3,35400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C410',5,25000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C305',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C904',4,3960000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1101',4,1432000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1101',5,3400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',4,22000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',5,150000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C410',3,4800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',1,20000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',2,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C401',1,27900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1201',1,7520);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',5,39000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C801',1,1200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',2,4160);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',3,2940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1403',2,1600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1204',4,25152000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C401',5,75000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1303',4,68400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C401',5,75000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1303',3,33000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',1,3000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',2,703080);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',4,349600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C406',5,154000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,120000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C101',2,59800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1403',2,1600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',5,10000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C201',5,5500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1512',4,43200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1512',1,10800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C411',3,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',4,79600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',5,65000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C101',1,200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C514',2,64000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1501',4,35600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C102',4,236000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',1,5500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',2,1980);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1505',5,54000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1101',4,2720000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1403',2,1720);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',5,150000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',5,390000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C301',4,116000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1501',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1303',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1505',3,32400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C410',5,100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',5,149500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1503',2,23600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C1508',4,111600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',2,60000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C410',5,100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C904',4,4400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C107',2,378000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C305',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C411',4,19920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',4,4000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',3,3750);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',5,437000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C404',1,23000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C301',2,105400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C1101',2,156000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C301',1,49000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',3,53700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C301',2,98000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',4,4000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C202',5,2500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1303',4,143600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',4,56000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1303',1,11000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1505',4,43200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',5,4600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C408',3,27000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',2,2000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C201',1,1100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',2,1840);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',4,4400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',1,1190);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',3,13440);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',1,970);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C404',3,81000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1002',1,780000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,930);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1002',3,2340000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',4,22400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1303',4,103600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',4,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C411',2,24000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',5,150000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1204',2,4980000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C1403',1,5500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C401',1,20000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C407',2,1820);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1501',5,70000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1303',3,107700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',2,27600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C705',1,3200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C803',3,4350000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1204',5,12450000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1101',4,192000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C403',4,32160);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C504',2,28000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C101',4,280000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1304',3,44700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',4,3760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,1000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1501',4,56000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1501',2,15600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',2,11600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C101',3,600000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',5,64000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C903',5,1934000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1303',1,33900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',2,1980000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C410',1,14000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',2,11200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',1,14000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1403',3,16500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1304',3,104700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',2,18000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',4,22400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',1,8040);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C307',4,400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C407',3,2100);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C401',5,160000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C401',4,111600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',1,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1505',2,23400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C504',3,42000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',3,2400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C1403',5,27500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1103',5,9900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C410',3,4800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',2,26000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1103',5,9900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',1,2810);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C407',1,920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C903',4,1547200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1505',5,54000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1103',4,5000000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1206',5,18750000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1206',3,11250000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C408',4,120000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',4,3800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',2,4000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C410',1,1600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',1,6990);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',4,3920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',2,2598000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C401',5,100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',5,15000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C305',1,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C514',3,96000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C404',3,45000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C902',5,1500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C301',3,158100);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C705',3,9600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C405',4,8320);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C901',4,792000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',2,1940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C305',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',3,3030);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C403',2,35800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C701',4,24800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',3,89700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',3,2910);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',5,34950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1202',1,4200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,8000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1202',4,16800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',5,263500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C803',5,7250000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',3,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C701',5,31000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1202',1,4200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C902',4,1200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',2,39800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C301',1,52700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C102',1,59000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C902',2,600000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',5,6495000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',2,26000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C102',5,403500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',3,3000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C514',2,64000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C102',1,59000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',2,4000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C406',1,30800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',2,174800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C301',4,210800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',4,8320);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',1,1100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C411',2,9960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',1,940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C403',5,437000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C901',1,198000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C101',5,29000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',1,990);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C102',2,118000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',5,5950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C514',1,32000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',1,970);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',5,5500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C301',1,49000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C903',4,1547200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C102',1,59000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C903',5,1934000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',1,1299000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C410',4,6400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C401',3,83700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',3,3030);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',5,149500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',5,4900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',2,1940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',4,79600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',1,12900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C411',5,34950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C411',3,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C406',4,123200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',4,23200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',1,5800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',2,105400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C107',5,945000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C301',2,105400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C404',2,54000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',2,2000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',3,60000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C101',3,17400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',4,8320);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C801',2,2400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',4,56000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C810',3,2697000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C101',1,29900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',4,3800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C102',5,295000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C904',2,2200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',3,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C301',4,116000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C407',4,3960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C301',5,263500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C704',5,299500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C406',4,123200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',2,4160);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C307',4,400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C902',2,480000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C301',4,210800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C404',1,27000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',1,351540);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C406',5,154000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C305',4,24000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',3,2790);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C307',4,400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',1,1010);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',4,17920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C101',3,89700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C902',2,600000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',1,900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',2,1920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C704',2,119800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C404',4,60000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',3,38700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C408',2,2380);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,980);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',1,8040);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C904',3,3897000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C410',2,3200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C405',1,2080);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',3,59700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C903',2,773600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C902',1,240000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',2,5620);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1103',5,9900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C901',1,198000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',1,70000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',1,25900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',1,25900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C411',4,8000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',1,980);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',1,17900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',4,51600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',1,29000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',4,3840);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C404',4,108000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',1,1190);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C701',2,12400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C402',2,41000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',1,2810);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C102',4,322800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C406',2,61600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C107',5,945000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',3,39000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',1,10480);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',3,6240);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C305',1,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1103',4,7920000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C408',4,52000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C403',2,25800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C801',1,1200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C301',3,147000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1103',5,9900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C902',4,960000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',4,119600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',4,3640);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',4,349600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C901',5,990000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',4,3600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',4,3840);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C301',3,158100);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',1,14000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',3,2910);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C201',3,14700000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C402',3,61500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',2,98000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',1,1000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',3,2700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',1,19900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',2,2020);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',5,10000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',2,1940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C201',2,9800000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C403',5,40200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',5,145000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C1501',3,42000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C305',4,24000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C902',2,480000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C101',2,11600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',2,11460);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C201',4,4400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C305',5,30000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C407',2,2020);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',3,2940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C701',2,12400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',3,3300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',2,25800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C411',4,8000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C902',1,300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C406',5,154000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',5,5500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',4,3840);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',3,8430);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C411',5,34950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C407',4,3960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C411',4,41920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C201',1,4900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C401',5,139500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',2,2200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',4,56000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C903',5,1934000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',2,2020);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C404',4,92000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C401',2,55800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C901',1,198000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',1,25900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1303',5,55000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',1,70000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',1,25900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',3,60000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C406',3,92400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',3,6240);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C404',1,27000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',2,28000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',3,2880);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',4,32160);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',5,350000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1501',4,55200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1202',4,16800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1403',5,2500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',3,41400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C307',3,300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C810',4,3596000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1505',4,46800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1001',4,4920000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1501',5,55000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C301',4,210800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',2,25600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C402',1,20500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',1,13000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1303',3,107700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1512',5,54000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1403',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1002',2,1560000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1403',2,11000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,4760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1101',4,1960000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C410',5,8000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',1,14000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',1,70000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1202',3,12600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',5,12500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C803',3,4350000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C411',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C903',5,1934000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1508',4,111600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1001',3,3690000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C401',1,32000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C410',4,6400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C901',2,396000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',1,5500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',2,35800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',5,3400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1512',4,43200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1204',1,2490000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',3,90000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1101',5,2450000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',4,27960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,30000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',4,22400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C901',2,396000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C305',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C405',3,6240);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',2,1360000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C803',2,2900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',3,2820);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C408',4,120000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C514',5,160000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1204',4,17952000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C406',4,123200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C401',2,55800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',5,6495000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1501',2,22000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',1,940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',5,4550);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',2,24000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C514',1,32000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1304',5,174500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1206',3,5898000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C403',1,11500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1303',3,7500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1204',2,8976000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1505',2,23400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',5,160000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1303',1,11000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C705',4,12800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',4,11240);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',3,2760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',3,53700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',2,703080);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',1,700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1304',4,139600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C407',5,4950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C408',4,22400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1303',5,12500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1508',4,111600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C705',1,3200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C411',3,31440);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C408',4,5000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',4,23200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C404',1,23000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C202',5,1757700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C406',5,154000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1101',5,1790000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,80000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C411',1,10480);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C903',1,386800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',5,30000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',1,12800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1206',5,9830000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C902',5,1200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1204',4,17952000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1206',1,2389000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1204',2,12576000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',3,9000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C410',5,70000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1303',4,40000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C102',4,236000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1503',5,59000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1206',1,1966000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',5,29000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1505',4,43200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',1,3000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C301',5,263500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',4,3600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',2,64000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C411',3,36000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C401',3,60000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1303',2,20000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',1,500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',1,11000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',5,100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C801',2,2400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C411',1,2000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',3,33000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C301',2,105400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C411',1,2000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C402',2,41000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C411',5,30000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1303',5,129500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',3,23400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1206',5,18750000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1206',2,7500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',4,44000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1403',3,1500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C408',1,1190);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C406',1,30800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C403',3,24120);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C305',1,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1505',1,11700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',5,150000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C411',5,52400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1303',4,40000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',1,9000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',5,3400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',5,65000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',1,500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C903',4,1547200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C407',5,3500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',1,5800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1403',1,800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,52000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',2,34200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',3,42000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1505',3,35100);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',5,70000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C904',1,1299000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C1002',3,2340000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',3,2880);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1501',2,28000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C407',2,1920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C408',5,28650);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C107',2,378000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1101',2,96000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',2,1840);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C701',1,6200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',1,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C202',1,500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',5,12500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',4,24000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',5,1757700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',1,490000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',1,29900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C411',5,24900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C107',5,945000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,17920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1403',2,22000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C705',3,9600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',1,87400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1101',3,1074000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C404',3,81000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C404',4,108000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',5,4700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C406',2,61600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',3,2400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C902',2,480000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1204',1,6288000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1403',1,11000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',5,4500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1508',3,83700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C901',5,990000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C101',4,119600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C307',1,100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',2,2020);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C901',2,396000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C902',2,600000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',2,25800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C803',3,4350000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C410',4,6400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C307',5,500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C514',4,128000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C902',3,900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',2,11600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',3,53700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C401',5,100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',2,4000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C407',1,940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',1,3000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C902',3,900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C404',4,60000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C404',1,27000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C705',3,9600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C301',3,87000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',2,1980);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',2,1980000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C407',1,1000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C704',4,239600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C402',4,82000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C1303',3,33000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C201',5,24500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C404',4,92000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',5,2500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',1,1000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',5,14050);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C107',2,378000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C407',3,2730);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C407',3,2910);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,11240);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C902',2,480000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C401',2,40000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C410',5,8000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C407',4,3760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C411',4,19920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',1,1299000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',1,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C404',4,92000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C404',3,45000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C407',2,1940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',4,111600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C201',5,24500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',4,2000000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C407',2,1880);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C407',5,4950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C514',3,96000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',4,4000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',4,3880);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',5,10000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C201',5,5500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C101',4,119600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',2,5620);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C903',2,773600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',3,2970);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C514',2,64000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',2,1960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C301',4,210800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C803',5,7250000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C301',4,210800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C408',5,14050);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',5,65000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C404',5,75000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C301',4,210800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',3,1054620);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C201',1,1100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',1,17900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C401',4,111600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C305',5,30000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',4,24000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',3,3570);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',1,1100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',3,2760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C301',3,87000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1501',1,14000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',4,8320);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C201',2,2200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C1202',4,16800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,4760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C407',5,4500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C801',4,4800000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C705',2,6400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C406',4,123200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',2,64000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',4,111600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C903',5,1934000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',2,105400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C101',3,17400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C704',5,299500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C408',4,52000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C1202',3,12600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',5,6495000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C810',4,3596000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C403',2,16080);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',2,6000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',3,2760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1303',2,22000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C801',1,1200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',3,38700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C202',1,500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C408',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C411',5,52400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',4,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C903',1,386800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C904',1,990000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C902',1,300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',4,8320);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C404',3,69000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C403',1,8040);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',5,14050);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1103',4,7920000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',4,24000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C202',4,2000000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',4,349600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',5,15000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C411',3,31440);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C803',1,1450000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C904',2,2598000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C801',2,2400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C401',2,40000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',5,4550);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C411',4,8000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',5,4600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C904',2,2598000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C803',5,7250000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C403',1,12900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C405',5,39200);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C407',1,1000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C408',4,8000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',2,1880);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C410',1,1600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',1,1190);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',5,6495000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',4,4760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C408',3,8430);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',2,1920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C408',3,18000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C401',5,100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C301',3,158100);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',3,147000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',2,2598000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C101',2,59800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C1501',1,14000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C801',3,3600000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',3,2700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C411',4,19920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C307',3,300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C803',2,2900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C401',4,111600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C401',1,27900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C514',2,64000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C404',3,69000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C902',4,1200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C405',5,10400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C404',5,135000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C401',2,40000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C201',1,1100000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C401',5,160000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',2,16080);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C1303',5,55000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C902',1,300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C403',1,12900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',3,39000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',3,2970);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',4,4760);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C903',2,773600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C902',2,480000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C402',5,102500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C514',5,160000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',5,139500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C408',5,14050);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C404',4,60000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C301',2,58000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C406',1,30800);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',2,98000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',3,2940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C901',1,198000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C901',4,792000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C408',2,12000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C107',1,189000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C202',4,1406160);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C403',1,17900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C307',2,200000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C107',3,567000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C405',4,8320);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C904',5,5500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C201',2,9800000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C301',1,49000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C408',2,26000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C404',1,15000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',5,4650);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C402',2,41000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',1,920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',4,128000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C407',3,2850);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C514',4,128000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C305',5,30000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C401',1,32000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C704',4,239600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',1,910);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C407',5,4950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C810',4,3596000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C704',5,299500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C408',4,52000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C902',3,900000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C408',4,17920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C307',3,300000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C705',3,9600);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C401',5,139500);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C803',1,1450000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',5,4850);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C1501',5,70000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C408',4,17920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',1,8040);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',2,1860);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C411',5,34950);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C411',4,41920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C705',5,16000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C901',5,990000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',2,1960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C107',3,567000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',5,14050);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C411',3,14940);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C301',3,87000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C307',5,500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (40,'F','C904',5,4950000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C102',2,118000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',3,2880);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C902',2,600000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',4,3920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C407',3,3030);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C408',4,17920);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C904',4,4400000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C401',4,80000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C408',1,13000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C202',1,351540);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',2,1980);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'F','C407',4,3960);
Insert into V_TEST (C1,C2,C3,C4,C5) values (60,'M','C202',1,500000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (10,'M','C408',1,5730);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',1,19900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C403',1,87400);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'F','C405',3,6240);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C404',5,135000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C405',2,4160);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',1,6990);
Insert into V_TEST (C1,C2,C3,C4,C5) values (50,'M','C102',1,59000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (70,'F','C1501',3,42000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1501',4,56000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C411',5,10000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C407',2,1820);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C202',5,1757700);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C901',1,198000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (20,'M','C1303',1,25900);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C810',2,1798000);
Insert into V_TEST (C1,C2,C3,C4,C5) values (30,'M','C402',3,61500);
--------------------------------------------------------
--  DDL for Index ALAM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALAM_PK" ON "ALAM" ("ALAMNUM") 
  ;
--------------------------------------------------------
--  DDL for Index AUTHORITIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AUTHORITIES_PK" ON "AUTHORITIES" ("EMP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CALENDAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CALENDAR_PK" ON "CALENDAR" ("CALENDAR_NO") 
  ;
--------------------------------------------------------
--  DDL for Index EATRZ_FRM_SE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EATRZ_FRM_SE_PK" ON "EATRZ_FRM_SE" ("EATRZ_FRM_SE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MAINCALENDAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MAINCALENDAR_PK" ON "MAINCALENDAR" ("MAIN_CALNO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ATCHFILE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ATCHFILE" ON "ATCHFILE" ("ATCHFILE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ATRZ
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ATRZ" ON "ATRZ" ("ATRZ_ID", "EMP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BRD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BRD" ON "BRD" ("BRD_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BRD_RPL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BRD_RPL" ON "BRD_RPL" ("BRD_RPL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BRNCOFC
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BRNCOFC" ON "BRNCOFC" ("BRNCOFC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CHAT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CHAT" ON "CHAT" ("CHAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CMNCD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CMNCD" ON "CMNCD" ("CMNCD_CD") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CNPT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CNPT" ON "CNPT" ("CNPT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CNPT_GDS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CNPT_GDS" ON "CNPT_GDS" ("CNPT_GDS_CD") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CUST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CUST" ON "CUST" ("CUST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CUST_NTSL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CUST_NTSL" ON "CUST_NTSL" ("CUST_NTSL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EATRZ
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EATRZ" ON "EATRZ" ("EATRZ_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EATRZ_FRM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EATRZ_FRM" ON "EATRZ_FRM" ("EATRZ_FRM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EMP
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EMP" ON "EMP" ("EMP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EVNT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EVNT" ON "EVNT" ("EVNT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EVNT_GDS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EVNT_GDS" ON "EVNT_GDS" ("EVNT_ID", "PROD_INFO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ORDR
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ORDR" ON "ORDR" ("ORDR_ID", "PROD_INFO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRCHS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRCHS" ON "PRCHS" ("PRCHS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PROD_INFO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROD_INFO" ON "PROD_INFO" ("PROD_INFO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SCHDL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SCHDL" ON "SCHDL" ("SCHDL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SLS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SLS" ON "SLS" ("SLS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_STRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STRE" ON "STRE" ("BRNCOFC_ID", "STRE_SE", "STRE_GDS_CG") 
  ;
--------------------------------------------------------
--  DDL for Index PK_STRE_STCK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STRE_STCK" ON "STRE_STCK" ("BRNCOFC_ID", "PROD_INFO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_STRG_SHMT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STRG_SHMT" ON "STRG_SHMT" ("STRG_SHMT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_STRG_STCK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STRG_STCK" ON "STRG_STCK" ("BRNCOFC_ID", "PROD_INFO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_STRG_WRHS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STRG_WRHS" ON "STRG_WRHS" ("STRG_WRHS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_WORKSTTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_WORKSTTS" ON "WORKSTTS" ("EMP_ID", "WORKSTTS_DT") 
  ;
--------------------------------------------------------
--  DDL for Index PRCHS_GDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRCHS_GDS_PK" ON "PRCHS_GDS" ("PRCHS_ID", "PROD_INFO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TAX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TAX_PK" ON "TAX" ("EMP_ID") 
  ;
--------------------------------------------------------
--  DDL for Procedure DYNAMIC_SQL_01
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DYNAMIC_SQL_01" 

IS

str varchar2(200);

BEGIN

str := 'CREATE TABLE total (total number)';

EXECUTE IMMEDIATE str;

END;

/
--------------------------------------------------------
--  DDL for Procedure SP_TEST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SP_TEST" (

  Cv_1 OUT SYS_REFCURSOR 

) AS

  --

  Gv_SQL VARCHAR2(4000);  

BEGIN

  --

  Gv_SQL := 'CREATE GLOBAL TEMPORARY TABLE TT_TEMP1 (

               COL1 VARCHAR2(6) ,

               COL2 VARCHAR2(100) ,

               COL3 VARCHAR2(4000) 

             )';

  EXECUTE IMMEDIATE Gv_SQL;

  --          

  Gv_SQL := 'INSERT INTO TT_TEMP1 ( 

               COL1, COL2, COL3

             ) VALUES (

               ''0001'', ''홍길동'', ''TEST'' )';

  EXECUTE IMMEDIATE Gv_SQL;

  --

  Gv_SQL := 

    'INSERT INTO EMP (

       EMPNO, EMPNM, BIGO ) 

     SELECT COL1,COL2,COL3 FROM TT_TEMP1';

  EXECUTE IMMEDIATE Gv_SQL;

  --

  OPEN Cv_1 FOR 

    SELECT EMPNO, EMPNM, BIGO

      FROM EMP;

  --

  Gv_SQL := 'DROP TABLE TT_TEMP1';

  EXECUTE IMMEDIATE Gv_SQL;



END;

/
--------------------------------------------------------
--  DDL for Function FN_GETCAMEL
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FN_GETCAMEL" (COLUMN_NAME IN VARCHAR2)
RETURN VARCHAR2
IS
RSLT VARCHAR2(30);
BEGIN
--카멜표기로 변환(SITE_NUM -> siteNum)
SELECT LOWER(SUBSTR(REPLACE(INITCAP(COLUMN_NAME),'_'),1,1))
|| SUBSTR(REPLACE(INITCAP(COLUMN_NAME),'_'),2) INTO RSLT
FROM DUAL;
--리턴
RETURN RSLT;
END;

/
--------------------------------------------------------
--  Constraints for Table ALAM
--------------------------------------------------------

  ALTER TABLE "ALAM" MODIFY ("ALAMNUM" NOT NULL ENABLE);
  ALTER TABLE "ALAM" ADD CONSTRAINT "ALAM_PK" PRIMARY KEY ("ALAMNUM") ENABLE;
--------------------------------------------------------
--  Constraints for Table ATCHFILE
--------------------------------------------------------

  ALTER TABLE "ATCHFILE" MODIFY ("ATCHFILE_ID" NOT NULL ENABLE);
  ALTER TABLE "ATCHFILE" ADD CONSTRAINT "PK_ATCHFILE" PRIMARY KEY ("ATCHFILE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ATRZ
--------------------------------------------------------

  ALTER TABLE "ATRZ" MODIFY ("EMP_ID" NOT NULL ENABLE);
  ALTER TABLE "ATRZ" MODIFY ("ATRZ_ID" NOT NULL ENABLE);
  ALTER TABLE "ATRZ" ADD CONSTRAINT "PK_ATRZ" PRIMARY KEY ("ATRZ_ID", "EMP_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTHORITIES
--------------------------------------------------------

  ALTER TABLE "AUTHORITIES" MODIFY ("EMP_ID" NOT NULL ENABLE);
  ALTER TABLE "AUTHORITIES" ADD CONSTRAINT "AUTHORITIES_PK" PRIMARY KEY ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table BRD
--------------------------------------------------------

  ALTER TABLE "BRD" MODIFY ("BRD_TTL" NOT NULL ENABLE);
  ALTER TABLE "BRD" MODIFY ("BRD_SE" NOT NULL ENABLE);
  ALTER TABLE "BRD" MODIFY ("BRD_ID" NOT NULL ENABLE);
  ALTER TABLE "BRD" ADD CONSTRAINT "PK_BRD" PRIMARY KEY ("BRD_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table BRD_RPL
--------------------------------------------------------

  ALTER TABLE "BRD_RPL" MODIFY ("BRD_RPL_ID" NOT NULL ENABLE);
  ALTER TABLE "BRD_RPL" ADD CONSTRAINT "PK_BRD_RPL" PRIMARY KEY ("BRD_RPL_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table BRNCOFC
--------------------------------------------------------

  ALTER TABLE "BRNCOFC" MODIFY ("BRNCOFC_ID" NOT NULL ENABLE);
  ALTER TABLE "BRNCOFC" ADD CONSTRAINT "PK_BRNCOFC" PRIMARY KEY ("BRNCOFC_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CALENDAR
--------------------------------------------------------

  ALTER TABLE "CALENDAR" MODIFY ("CALENDAR_NO" NOT NULL ENABLE);
  ALTER TABLE "CALENDAR" ADD CONSTRAINT "CALENDAR_PK" PRIMARY KEY ("CALENDAR_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "CHAT" MODIFY ("CHAT_ID" NOT NULL ENABLE);
  ALTER TABLE "CHAT" ADD CONSTRAINT "PK_CHAT" PRIMARY KEY ("CHAT_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CMNCD
--------------------------------------------------------

  ALTER TABLE "CMNCD" MODIFY ("CMNCD_CD" NOT NULL ENABLE);
  ALTER TABLE "CMNCD" ADD CONSTRAINT "PK_CMNCD" PRIMARY KEY ("CMNCD_CD") ENABLE;
--------------------------------------------------------
--  Constraints for Table CNPT
--------------------------------------------------------

  ALTER TABLE "CNPT" MODIFY ("CNPT_ID" NOT NULL ENABLE);
  ALTER TABLE "CNPT" ADD CONSTRAINT "PK_CNPT" PRIMARY KEY ("CNPT_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CNPT_GDS
--------------------------------------------------------

  ALTER TABLE "CNPT_GDS" MODIFY ("CNPT_GDS_CD" NOT NULL ENABLE);
  ALTER TABLE "CNPT_GDS" ADD CONSTRAINT "PK_CNPT_GDS" PRIMARY KEY ("CNPT_GDS_CD") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUST
--------------------------------------------------------

  ALTER TABLE "CUST" MODIFY ("CUST_ID" NOT NULL ENABLE);
  ALTER TABLE "CUST" ADD CONSTRAINT "PK_CUST" PRIMARY KEY ("CUST_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CUST_NTSL
--------------------------------------------------------

  ALTER TABLE "CUST_NTSL" MODIFY ("CUST_NTSL_ID" NOT NULL ENABLE);
  ALTER TABLE "CUST_NTSL" ADD CONSTRAINT "PK_CUST_NTSL" PRIMARY KEY ("CUST_NTSL_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table EATRZ
--------------------------------------------------------

  ALTER TABLE "EATRZ" MODIFY ("EATRZ_ID" NOT NULL ENABLE);
  ALTER TABLE "EATRZ" ADD CONSTRAINT "PK_EATRZ" PRIMARY KEY ("EATRZ_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table EATRZ_FRM
--------------------------------------------------------

  ALTER TABLE "EATRZ_FRM" MODIFY ("EATRZ_FRM_ID" NOT NULL ENABLE);
  ALTER TABLE "EATRZ_FRM" ADD CONSTRAINT "PK_EATRZ_FRM" PRIMARY KEY ("EATRZ_FRM_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table EATRZ_FRM_SE
--------------------------------------------------------

  ALTER TABLE "EATRZ_FRM_SE" MODIFY ("EATRZ_FRM_SE_ID" NOT NULL ENABLE);
  ALTER TABLE "EATRZ_FRM_SE" ADD CONSTRAINT "EATRZ_FRM_SE_PK" PRIMARY KEY ("EATRZ_FRM_SE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "EMP" MODIFY ("EMP_ID" NOT NULL ENABLE);
  ALTER TABLE "EMP" ADD CONSTRAINT "PK_EMP" PRIMARY KEY ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table EVNT
--------------------------------------------------------

  ALTER TABLE "EVNT" MODIFY ("EVNT_ID" NOT NULL ENABLE);
  ALTER TABLE "EVNT" ADD CONSTRAINT "PK_EVNT" PRIMARY KEY ("EVNT_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table EVNT_GDS
--------------------------------------------------------

  ALTER TABLE "EVNT_GDS" MODIFY ("PROD_INFO_ID" NOT NULL ENABLE);
  ALTER TABLE "EVNT_GDS" MODIFY ("EVNT_ID" NOT NULL ENABLE);
  ALTER TABLE "EVNT_GDS" ADD CONSTRAINT "PK_EVNT_GDS" PRIMARY KEY ("EVNT_ID", "PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table MAINCALENDAR
--------------------------------------------------------

  ALTER TABLE "MAINCALENDAR" MODIFY ("MAIN_CALNO" NOT NULL ENABLE);
  ALTER TABLE "MAINCALENDAR" ADD CONSTRAINT "MAINCALENDAR_PK" PRIMARY KEY ("MAIN_CALNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDR
--------------------------------------------------------

  ALTER TABLE "ORDR" MODIFY ("PROD_INFO_ID" NOT NULL ENABLE);
  ALTER TABLE "ORDR" MODIFY ("ORDR_ID" NOT NULL ENABLE);
  ALTER TABLE "ORDR" ADD CONSTRAINT "PK_ORDR" PRIMARY KEY ("ORDR_ID", "PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRCHS
--------------------------------------------------------

  ALTER TABLE "PRCHS" MODIFY ("PRCHS_ID" NOT NULL ENABLE);
  ALTER TABLE "PRCHS" ADD CONSTRAINT "PK_PRCHS" PRIMARY KEY ("PRCHS_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRCHS_GDS
--------------------------------------------------------

  ALTER TABLE "PRCHS_GDS" MODIFY ("PROD_INFO_ID" NOT NULL ENABLE);
  ALTER TABLE "PRCHS_GDS" MODIFY ("PRCHS_ID" NOT NULL ENABLE);
  ALTER TABLE "PRCHS_GDS" ADD CONSTRAINT "PRCHS_GDS_PK" PRIMARY KEY ("PRCHS_ID", "PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table PROD_INFO
--------------------------------------------------------

  ALTER TABLE "PROD_INFO" MODIFY ("PROD_INFO_ID" NOT NULL ENABLE);
  ALTER TABLE "PROD_INFO" ADD CONSTRAINT "PK_PROD_INFO" PRIMARY KEY ("PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SCHDL
--------------------------------------------------------

  ALTER TABLE "SCHDL" MODIFY ("SCHDL_ID" NOT NULL ENABLE);
  ALTER TABLE "SCHDL" ADD CONSTRAINT "PK_SCHDL" PRIMARY KEY ("SCHDL_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SLS
--------------------------------------------------------

  ALTER TABLE "SLS" MODIFY ("SLS_ID" NOT NULL ENABLE);
  ALTER TABLE "SLS" ADD CONSTRAINT "PK_SLS" PRIMARY KEY ("SLS_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table STRE
--------------------------------------------------------

  ALTER TABLE "STRE" MODIFY ("STRE_GDS_CG" NOT NULL ENABLE);
  ALTER TABLE "STRE" MODIFY ("STRE_SE" NOT NULL ENABLE);
  ALTER TABLE "STRE" MODIFY ("BRNCOFC_ID" NOT NULL ENABLE);
  ALTER TABLE "STRE" ADD CONSTRAINT "PK_STRE" PRIMARY KEY ("BRNCOFC_ID", "STRE_SE", "STRE_GDS_CG") ENABLE;
--------------------------------------------------------
--  Constraints for Table STRE_STCK
--------------------------------------------------------

  ALTER TABLE "STRE_STCK" MODIFY ("PROD_INFO_ID" NOT NULL ENABLE);
  ALTER TABLE "STRE_STCK" MODIFY ("BRNCOFC_ID" NOT NULL ENABLE);
  ALTER TABLE "STRE_STCK" ADD CONSTRAINT "PK_STRE_STCK" PRIMARY KEY ("BRNCOFC_ID", "PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table STRG_SHMT
--------------------------------------------------------

  ALTER TABLE "STRG_SHMT" MODIFY ("STRG_SHMT_ID" NOT NULL ENABLE);
  ALTER TABLE "STRG_SHMT" ADD CONSTRAINT "PK_STRG_SHMT" PRIMARY KEY ("STRG_SHMT_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table STRG_STCK
--------------------------------------------------------

  ALTER TABLE "STRG_STCK" MODIFY ("PROD_INFO_ID" NOT NULL ENABLE);
  ALTER TABLE "STRG_STCK" MODIFY ("BRNCOFC_ID" NOT NULL ENABLE);
  ALTER TABLE "STRG_STCK" ADD CONSTRAINT "PK_STRG_STCK" PRIMARY KEY ("BRNCOFC_ID", "PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table STRG_WRHS
--------------------------------------------------------

  ALTER TABLE "STRG_WRHS" MODIFY ("PROD_INFO_ID" NOT NULL ENABLE);
  ALTER TABLE "STRG_WRHS" MODIFY ("STRG_WRHS_ID" NOT NULL ENABLE);
  ALTER TABLE "STRG_WRHS" ADD CONSTRAINT "PK_STRG_WRHS" PRIMARY KEY ("STRG_WRHS_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table TAX
--------------------------------------------------------

  ALTER TABLE "TAX" ADD CONSTRAINT "TAX_PK" PRIMARY KEY ("EMP_ID") ENABLE;
  ALTER TABLE "TAX" MODIFY ("EMP_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WORKSTTS
--------------------------------------------------------

  ALTER TABLE "WORKSTTS" MODIFY ("WORKSTTS_DT" NOT NULL ENABLE);
  ALTER TABLE "WORKSTTS" MODIFY ("EMP_ID" NOT NULL ENABLE);
  ALTER TABLE "WORKSTTS" ADD CONSTRAINT "PK_WORKSTTS" PRIMARY KEY ("EMP_ID", "WORKSTTS_DT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ATRZ
--------------------------------------------------------

  ALTER TABLE "ATRZ" ADD CONSTRAINT "ATRZ_FK1" FOREIGN KEY ("EATRZ_ID")
	  REFERENCES "EATRZ" ("EATRZ_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ATRZ" ADD CONSTRAINT "FK_EMP_TO_ATRZ" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMP" ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BRD
--------------------------------------------------------

  ALTER TABLE "BRD" ADD CONSTRAINT "FK_EMP_TO_BRD" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMP" ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BRD_RPL
--------------------------------------------------------

  ALTER TABLE "BRD_RPL" ADD CONSTRAINT "BRD_RPL_FK1" FOREIGN KEY ("BRD_ID")
	  REFERENCES "BRD" ("BRD_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BRD_RPL" ADD CONSTRAINT "FK_EMP_TO_BRD_RPL" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMP" ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CALENDAR
--------------------------------------------------------

  ALTER TABLE "CALENDAR" ADD CONSTRAINT "CALENDAR_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "EMP" ("EMP_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "CHAT" ADD CONSTRAINT "FK_EMP_TO_CHAT" FOREIGN KEY ("EMP_CD_SNDR")
	  REFERENCES "EMP" ("EMP_ID") ENABLE;
  ALTER TABLE "CHAT" ADD CONSTRAINT "FK_EMP_TO_CHAT2" FOREIGN KEY ("EMP_CD_RCVR")
	  REFERENCES "EMP" ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CNPT_GDS
--------------------------------------------------------

  ALTER TABLE "CNPT_GDS" ADD CONSTRAINT "FK_CNPT_TO_CNPT_GDS" FOREIGN KEY ("CNPT_ID")
	  REFERENCES "CNPT" ("CNPT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUST_NTSL
--------------------------------------------------------

  ALTER TABLE "CUST_NTSL" ADD CONSTRAINT "FK_BRNCOFC_TO_CUST_NTSL" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
  ALTER TABLE "CUST_NTSL" ADD CONSTRAINT "FK_CUST_TO_CUST_NTSL" FOREIGN KEY ("CUST_ID")
	  REFERENCES "CUST" ("CUST_ID") ENABLE;
  ALTER TABLE "CUST_NTSL" ADD CONSTRAINT "FK_PROD_INFO_TO_CUST_NTSL" FOREIGN KEY ("PROD_INFO_ID")
	  REFERENCES "PROD_INFO" ("PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EATRZ
--------------------------------------------------------

  ALTER TABLE "EATRZ" ADD CONSTRAINT "FK_EATRZ_FRM_TO_EATRZ" FOREIGN KEY ("EATRZ_FRM_ID")
	  REFERENCES "EATRZ_FRM" ("EATRZ_FRM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EATRZ_FRM
--------------------------------------------------------

  ALTER TABLE "EATRZ_FRM" ADD CONSTRAINT "EATRZ_FRM_FK1" FOREIGN KEY ("EATRZ_FRM_SE_ID")
	  REFERENCES "EATRZ_FRM_SE" ("EATRZ_FRM_SE_ID") ENABLE;
  ALTER TABLE "EATRZ_FRM" ADD CONSTRAINT "FK_EMP_TO_EATRZ_FRM" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMP" ("EMP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "EMP" ADD CONSTRAINT "EMP_FK1" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVNT
--------------------------------------------------------

  ALTER TABLE "EVNT" ADD CONSTRAINT "FK_SCHDL_TO_EVNT" FOREIGN KEY ("SCHDL_ID")
	  REFERENCES "SCHDL" ("SCHDL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVNT_GDS
--------------------------------------------------------

  ALTER TABLE "EVNT_GDS" ADD CONSTRAINT "FK_EVNT_TO_EVNT_GDS" FOREIGN KEY ("EVNT_ID")
	  REFERENCES "EVNT" ("EVNT_ID") ENABLE;
  ALTER TABLE "EVNT_GDS" ADD CONSTRAINT "FK_PROD_INFO_TO_EVNT_GDS" FOREIGN KEY ("PROD_INFO_ID")
	  REFERENCES "PROD_INFO" ("PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MAINCALENDAR
--------------------------------------------------------

  ALTER TABLE "MAINCALENDAR" ADD CONSTRAINT "MAINCALENDAR_FK1" FOREIGN KEY ("MAIN_CALUSER")
	  REFERENCES "EMP" ("EMP_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDR
--------------------------------------------------------

  ALTER TABLE "ORDR" ADD CONSTRAINT "FK_BRNCOFC_TO_ORDR" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
  ALTER TABLE "ORDR" ADD CONSTRAINT "FK_PROD_INFO_TO_ORDR" FOREIGN KEY ("PROD_INFO_ID")
	  REFERENCES "PROD_INFO" ("PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRCHS
--------------------------------------------------------

  ALTER TABLE "PRCHS" ADD CONSTRAINT "FK_CNPT_TO_PRCHS" FOREIGN KEY ("CNPT_ID")
	  REFERENCES "CNPT" ("CNPT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRCHS_GDS
--------------------------------------------------------

  ALTER TABLE "PRCHS_GDS" ADD CONSTRAINT "FK_PROD_INFO_TO_PRCHS_GDS" FOREIGN KEY ("PROD_INFO_ID")
	  REFERENCES "PROD_INFO" ("PROD_INFO_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCHDL
--------------------------------------------------------

  ALTER TABLE "SCHDL" ADD CONSTRAINT "SCHDL_FK1" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SLS
--------------------------------------------------------

  ALTER TABLE "SLS" ADD CONSTRAINT "FK_BRNCOFC_TO_SLS" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STRE
--------------------------------------------------------

  ALTER TABLE "STRE" ADD CONSTRAINT "FK_BRNCOFC_TO_STRE" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
  ALTER TABLE "STRE" ADD CONSTRAINT "STRE_FK1" FOREIGN KEY ("CMNCD_CD")
	  REFERENCES "CMNCD" ("CMNCD_CD") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STRE_STCK
--------------------------------------------------------

  ALTER TABLE "STRE_STCK" ADD CONSTRAINT "FK_BRNCOFC_TO_STRE_STCK" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
  ALTER TABLE "STRE_STCK" ADD CONSTRAINT "FK_PROD_INFO_TO_STRE_STCK" FOREIGN KEY ("PROD_INFO_ID")
	  REFERENCES "PROD_INFO" ("PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STRG_SHMT
--------------------------------------------------------

  ALTER TABLE "STRG_SHMT" ADD CONSTRAINT "FK_BRNCOFC_TO_STRG_SHMT" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
  ALTER TABLE "STRG_SHMT" ADD CONSTRAINT "FK_PROD_INFO_TO_STRG_SHMT" FOREIGN KEY ("PROD_INFO_ID")
	  REFERENCES "PROD_INFO" ("PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STRG_STCK
--------------------------------------------------------

  ALTER TABLE "STRG_STCK" ADD CONSTRAINT "FK_BRNCOFC_TO_STRG_STCK" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
  ALTER TABLE "STRG_STCK" ADD CONSTRAINT "FK_PROD_INFO_TO_STRG_STCK" FOREIGN KEY ("PROD_INFO_ID")
	  REFERENCES "PROD_INFO" ("PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STRG_WRHS
--------------------------------------------------------

  ALTER TABLE "STRG_WRHS" ADD CONSTRAINT "FK_BRNCOFC_TO_STRG_WRHS" FOREIGN KEY ("BRNCOFC_ID")
	  REFERENCES "BRNCOFC" ("BRNCOFC_ID") ENABLE;
  ALTER TABLE "STRG_WRHS" ADD CONSTRAINT "FK_PROD_INFO_TO_STRG_WRHS" FOREIGN KEY ("PROD_INFO_ID")
	  REFERENCES "PROD_INFO" ("PROD_INFO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WORKSTTS
--------------------------------------------------------

  ALTER TABLE "WORKSTTS" ADD CONSTRAINT "FK_EMP_TO_WORKSTTS" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMP" ("EMP_ID") ENABLE;
