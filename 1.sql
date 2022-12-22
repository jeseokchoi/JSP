--------------------------------------------------------
--  파일이 생성됨 - 목요일-12월-22-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##ITBANK"."MEMBER_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 10 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MOVIE1_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##ITBANK"."MOVIE1_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 2 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MOVIE2_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##ITBANK"."MOVIE2_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MOVIE3_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##ITBANK"."MOVIE3_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##ITBANK"."NOTE_SEQ"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "C##ITBANK"."MEMBER" 
   (	"IDX" NUMBER DEFAULT "C##ITBANK"."MEMBER_SEQ"."NEXTVAL", 
	"MEMBERNAME" VARCHAR2(100 BYTE), 
	"MEMBERID" VARCHAR2(100 BYTE), 
	"MEMBERPW" VARCHAR2(50 BYTE), 
	"BIRTHDATE" DATE, 
	"EMAIL" VARCHAR2(50 BYTE), 
	"JOINDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOVIE1
--------------------------------------------------------

  CREATE TABLE "C##ITBANK"."MOVIE1" 
   (	"IDX" NUMBER DEFAULT "C##ITBANK"."MOVIE1_SEQ"."NEXTVAL", 
	"MVTITLE" VARCHAR2(100 BYTE), 
	"DIRECTOR" VARCHAR2(100 BYTE), 
	"ACTORS" VARCHAR2(200 BYTE), 
	"OPENDATE" DATE, 
	"STORY" VARCHAR2(500 BYTE), 
	"POSTER" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOVIE2
--------------------------------------------------------

  CREATE TABLE "C##ITBANK"."MOVIE2" 
   (	"IDX" NUMBER DEFAULT "C##ITBANK"."MOVIE2_SEQ"."NEXTVAL", 
	"MVTITLE" VARCHAR2(100 BYTE), 
	"DIRECTOR" VARCHAR2(100 BYTE), 
	"ACTORS" VARCHAR2(200 BYTE), 
	"OPENDATE" DATE, 
	"STORY" VARCHAR2(1000 BYTE), 
	"POSTER" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOVIE3
--------------------------------------------------------

  CREATE TABLE "C##ITBANK"."MOVIE3" 
   (	"IDX" NUMBER DEFAULT "C##ITBANK"."MOVIE3_SEQ"."NEXTVAL", 
	"MVTITLE" VARCHAR2(100 BYTE), 
	"DIRECTOR" VARCHAR2(100 BYTE), 
	"ACTORS" VARCHAR2(200 BYTE), 
	"OPENDATE" DATE, 
	"STORY" VARCHAR2(1000 BYTE), 
	"POSTER" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTE
--------------------------------------------------------

  CREATE TABLE "C##ITBANK"."NOTE" 
   (	"IDX" NUMBER DEFAULT "C##ITBANK"."NOTE_SEQ"."NEXTVAL", 
	"MEMBER_IDX" NUMBER, 
	"NOTETITLE" VARCHAR2(200 BYTE), 
	"REVIEW" VARCHAR2(1000 BYTE), 
	"VIEWS" NUMBER, 
	"TODAY" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##ITBANK.MEMBER
SET DEFINE OFF;
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (3,'산타클로스','santa12','111',to_date('22/12/24','RR/MM/DD'),'santa@gmail.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (4,'소닉','sonic11','111',to_date('22/12/31','RR/MM/DD'),'sonic@naver.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (5,'김진형','jin111','111',to_date('22/12/24','RR/MM/DD'),'jin@naver.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (1,'최제석','dodoro914','gkgk11',to_date('89/09/14','RR/MM/DD'),'dodoro914@gmail.com',to_date('22/12/21','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (2,'한재용','jyhan','gkswodyd',to_date('90/06/15','RR/MM/DD'),'jyhan33777@naver.com',to_date('22/12/21','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (9,'소소님','soso11','111',to_date('22/12/09','RR/MM/DD'),'soso@naver.com',to_date('22/12/22','RR/MM/DD'));
REM INSERTING into C##ITBANK.MOVIE1
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE1 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'아바타2','제임스 카메론','조 샐다나',to_date('22/12/14','RR/MM/DD'),'''제이크 설리''와 ''네이티리''가 이룬 가족이 겪게 되는 무자비한 위협과 살아남기 위해 떠나야 하는 긴 여정과 전투 그리고 견뎌내야 할 상처에 대한 이야기를 그렸다.','main1.jpg');
REM INSERTING into C##ITBANK.MOVIE2
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (6,'백두산','이해준','이병헌',to_date('19/12/19','RR/MM/DD'),'대한민국 관측 역사상 최대 규모의 백두산 폭발 발생. 갑작스러운 재난에 한반도는 순식간에 아비규환이 되고, 남과 북 모두를 집어삼킬 추가 폭발이 예측된다.','main2_6.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (7,'검은 사제들','장재현','강동원',to_date('15/11/05','RR/MM/DD'),'2015년 서울. 뺑소니 교통사고 이후 의문의 증상에 시달리는 한 소녀(박소담). 잦은 돌출 행동으로 교단의 눈 밖에 난 ‘김신부’(김윤석)는 모두의 반대와 의심 속, 소녀를 구하기 위한 자신만의 계획을 준비한다.','main2_7.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'ET','스티븐 스필버그','헨리 토마스',to_date('84/08/11','RR/MM/DD'),'어느 한적한 마을의 숲속에 우주선이 나타난다. 우주선에서 내린 외계인들은 지구의 각종 표본들을 채취하던 중 인간들이 나타나자 서둘러 지구를 떠나는데, 그 와중에 뒤쳐진 한 외계인만 홀로 남게 된다. 방황하던 외계인은 한 가정 집에 숨어들고, 그 집 꼬마 엘리어트와 조우하게 된다.','main2_1.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (2,'라라랜드','데미안 셔젤','라이언 고슬링',to_date('20/12/31','RR/MM/DD'),'꿈을 꾸는 사람들을 위한 별들의 도시 ‘라라랜드’. 재즈 피아니스트 ‘세바스찬’(라이언 고슬링)과 배우 지망생 ‘미아’(엠마 스톤), 인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기 시작한다.','main2_2.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (3,'조커','토드 필립스','호아킨 피닉스',to_date('19/10/02','RR/MM/DD'),'고담시의 광대 아서 플렉은 코미디언을 꿈꾸는 남자.
하지만 모두가 미쳐가는 코미디 같은 세상에서 맨 정신으로는 그가 설 자리가 없음을 깨닫게 되는데…','main2_3.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (4,'기생충','봉준호','송강호',to_date('19/05/30','RR/MM/DD'),'“폐 끼치고 싶진 않았어요”','main2_4.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (5,'더 랍스터','요르고스 란티모스','콜린 파렐',to_date('15/10/29','RR/MM/DD'),'전대미문의 커플 메이킹 호텔! 이곳에선 사랑에 빠지지 않은 자, 모두 유죄! 유예기간 45일 안에 짝을 찾지 못하면 동물이 되어야 한다!  ','main2_5.jpg');
REM INSERTING into C##ITBANK.MOVIE3
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (11,'오늘 밤, 세계에서 이 사랑이 사라진다 해도','미키 타카히로','후쿠모토 리코',to_date('22/11/30','RR/MM/DD'),'매일 밤 사랑이 사라지는 세계, 그럼에도 불구하고, 다음 날 서로를 향한 애틋한 고백을 반복하는 두 소년, 소녀의 가장 슬픈 청춘담','main3_11.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (12,'젠틀맨','김경원','주지훈',to_date('22/12/28','RR/MM/DD'),'작전은 완벽하게, 수사는 젠틀하게! 고품격 범죄 오락이 펼쳐진다!','main3_12.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (13,'신비아파트 극장판 차원도깨비와 7개의 세계','변영규','김영은',to_date('22/12/14','RR/MM/DD'),'동생을 찾기 위해! 평행세계를 구하기 위해! ‘하리’는 마지막 희망의 열쇠가 있는 제 7세계로 모험을 떠난다!','main3_13.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (14,'핑크퐁 시네마 콘서트 2-원더스타 콘서트 대작전','김수경','조경이',to_date('22/12/21','RR/MM/DD'),'핑크퐁과 호기, 원더스타 친구들이 힘을 합쳐 특별한 콘서트를 준비했어요. 별빛봉 들고, 원더스타를 함께 응원해볼까요?','main3_14.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'씨받이','임권택','강수연',to_date('87/03/21','RR/MM/DD'),'죽은 자가 산 자 보다 우대 받던 조선 시대, 대가집 종손 신상규(이구순)와 부인 사이에 손이 없자 신씨 일가는 집안 회의를 통해 씨받이를 들이기로 한다. 씨받이로 선택된 옥녀(강수연)는 상규와 대면하고 상규는 옥녀의 미모에 반해 그녀를 총애하기 시작한다.','main3_1.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (2,'1917','샘 멘데스','조지 맥케이',to_date('20/02/19','RR/MM/DD'),'두 명의 병사, 하나의 미션! 그들이 싸워야 할 것은 적이 아니라 시간이었다!','main3_2.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (3,'내 이름은 칸','카란 조하르','샤룩 칸',to_date('11/03/24','RR/MM/DD'),'천재 자폐증 남자 칸의 기적 같은 여정이 시작된다!','main3_3.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (4,'엑시트','이상근','조정석',to_date('19/07/31','RR/MM/DD'),'짠내 폭발 청년백수, 전대미문의 진짜 재난을 만나다!','main3_4.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (5,'돈','박누리','류준열',to_date('19/03/20','RR/MM/DD'),'“부자가 되고 싶었다”','main3_5.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (6,'판도라','박정우','김남길',to_date('16/12/07','RR/MM/DD'),'방사능 유출의 공포는 점차 극에 달하고 최악의 사태를 유발할 2차 폭발의 위험을 막기 위해 발전소 직원인 ‘재혁’과 그의 동료들은 목숨 건 사투를 시작하는데…!','main3_6.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (7,'영웅','윤제균','정성화',to_date('22/12/21','RR/MM/DD'),'누가 죄인인가, 누가 영웅인가!','main3_7.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (8,'올빼미','안태진','류준열',to_date('22/11/23','RR/MM/DD'),'맹인이지만 뛰어난 침술 실력을 지닌 ‘경수’는 어의 ‘이형익’에게 그 재주를 인정받아 궁으로 들어간다. ','main3_8.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (9,'극한직업','이병헌','류승룡',to_date('19/01/23','RR/MM/DD'),'낮에는 치킨장사! 밤에는 잠복근무! 지금까지 이런 수사는 없었다!','main3_9.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (10,'폼페이','폴 앤더슨','키트 해링턴',to_date('14/02/20','RR/MM/DD'),'사상 최대의 화산 폭발! 화려했던 도시는 사라지고. 사랑은 전설이 되었다!','main3_10.jpg');
REM INSERTING into C##ITBANK.NOTE
SET DEFINE OFF;
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (1,1,'E.T 테스트','테으스으트으 입니다
이티 보신분 있나요?',3,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (3,2,'조커 테스트 입니다','조커 웃상 웃음병 무서움 ',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (4,3,'영웅 후기','한국인이라면 봐야될 영화인거 같고 정성화 김고은 배우등 배우들의 열연이 대단합니다!!',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (5,4,'올빼미 후기','이 영화 안 보시면 후회하십니다...몰입감 장난아니고 모든 배우들 연기력 정말 기대 이상입니다 아역배우까지 어느 누구 연기력 떨어지지는 사람 없이 휼륭합니다',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (6,1,'올빼미 리뷰','정말 간만에 너무나도 잘 본 영화였어요. 그리고 어느 한 장면이 충격적이라 계속 생각나는데 또 너무 잘 만드셔서 영화를 한번 더 보고싶게 만들어요 안본 분이 있다면 꼭 추천드리고 싶네요.. 최고입니다?',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (7,2,'아바타2 보신분','숲을 벗어나 물의 세계로 간 제이크 가족이야기! 시간 가는 줄 모르고 집중해서 봤네요. 새로운 물 부족과 물속 세상이 신비롭고 멋있었습니다. 그런 멋진 세상을 파괴하는 인간이 너무나 밉고 슬펐어요. 다음이야기 얼른 보고 싶네요',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (8,3,'아바타2 대작','IMAX 3D 로 관람했습니다. 이렇게나 자연스러운 C.G 기술에 경의를 표합니다. 짝짝짝~~~~',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (9,4,'아바타2 2번 봤어요~!!','진짜 3시간 12분이라는 시간이 정말 짧지도 길지도 않고 적당하더군요 그리고 99%가 CG 였을텐데 정말 요즘 CG가 이정도에 퀄리티가 나오는지 몰랐습니다 정말 아름답고 가족에 대한 사랑이 중요하다는걸 알았네요',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (10,9,'기생충 후기','기생충 꿀잼 송강호 꿀잼',1,to_date('22/12/22','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SYS_C007422
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007422" ON "C##ITBANK"."MEMBER" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007423
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007423" ON "C##ITBANK"."MEMBER" ("MEMBERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007450
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007450" ON "C##ITBANK"."MOVIE1" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007451
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007451" ON "C##ITBANK"."MOVIE1" ("POSTER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007430
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007430" ON "C##ITBANK"."MOVIE2" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007431
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007431" ON "C##ITBANK"."MOVIE2" ("POSTER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007438
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007438" ON "C##ITBANK"."MOVIE3" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007439
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007439" ON "C##ITBANK"."MOVIE3" ("POSTER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007442
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C007442" ON "C##ITBANK"."NOTE" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "C##ITBANK"."MEMBER" MODIFY ("MEMBERPW" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MEMBER" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##ITBANK"."MEMBER" ADD UNIQUE ("MEMBERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##ITBANK"."MEMBER" MODIFY ("MEMBERNAME" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MEMBER" MODIFY ("MEMBERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIE1
--------------------------------------------------------

  ALTER TABLE "C##ITBANK"."MOVIE1" MODIFY ("MVTITLE" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE1" MODIFY ("DIRECTOR" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE1" MODIFY ("ACTORS" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE1" MODIFY ("OPENDATE" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE1" MODIFY ("STORY" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE1" MODIFY ("POSTER" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE1" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##ITBANK"."MOVIE1" ADD UNIQUE ("POSTER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MOVIE2
--------------------------------------------------------

  ALTER TABLE "C##ITBANK"."MOVIE2" MODIFY ("MVTITLE" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE2" MODIFY ("DIRECTOR" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE2" MODIFY ("ACTORS" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE2" MODIFY ("OPENDATE" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE2" MODIFY ("STORY" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE2" MODIFY ("POSTER" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE2" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##ITBANK"."MOVIE2" ADD UNIQUE ("POSTER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MOVIE3
--------------------------------------------------------

  ALTER TABLE "C##ITBANK"."MOVIE3" MODIFY ("MVTITLE" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE3" MODIFY ("DIRECTOR" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE3" MODIFY ("ACTORS" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE3" MODIFY ("OPENDATE" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE3" MODIFY ("STORY" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE3" MODIFY ("POSTER" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."MOVIE3" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##ITBANK"."MOVIE3" ADD UNIQUE ("POSTER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTE
--------------------------------------------------------

  ALTER TABLE "C##ITBANK"."NOTE" MODIFY ("NOTETITLE" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."NOTE" MODIFY ("REVIEW" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."NOTE" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTE
--------------------------------------------------------

  ALTER TABLE "C##ITBANK"."NOTE" ADD CONSTRAINT "FK_NOTE_MEMBER" FOREIGN KEY ("MEMBER_IDX")
	  REFERENCES "C##ITBANK"."MEMBER" ("IDX") ON DELETE CASCADE ENABLE;
