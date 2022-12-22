--------------------------------------------------------
--  ������ ������ - �����-12��-22-2022   
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
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (3,'��ŸŬ�ν�','santa12','111',to_date('22/12/24','RR/MM/DD'),'santa@gmail.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (4,'�Ҵ�','sonic11','111',to_date('22/12/31','RR/MM/DD'),'sonic@naver.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (5,'������','jin111','111',to_date('22/12/24','RR/MM/DD'),'jin@naver.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (1,'������','dodoro914','gkgk11',to_date('89/09/14','RR/MM/DD'),'dodoro914@gmail.com',to_date('22/12/21','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (2,'�����','jyhan','gkswodyd',to_date('90/06/15','RR/MM/DD'),'jyhan33777@naver.com',to_date('22/12/21','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (9,'�ҼҴ�','soso11','111',to_date('22/12/09','RR/MM/DD'),'soso@naver.com',to_date('22/12/22','RR/MM/DD'));
REM INSERTING into C##ITBANK.MOVIE1
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE1 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'�ƹ�Ÿ2','���ӽ� ī�޷�','�� ���ٳ�',to_date('22/12/14','RR/MM/DD'),'''����ũ ����''�� ''����Ƽ��''�� �̷� ������ �ް� �Ǵ� ���ں��� ������ ��Ƴ��� ���� ������ �ϴ� �� ������ ���� �׸��� �ߵ����� �� ��ó�� ���� �̾߱⸦ �׷ȴ�.','main1.jpg');
REM INSERTING into C##ITBANK.MOVIE2
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (6,'��λ�','������','�̺���',to_date('19/12/19','RR/MM/DD'),'���ѹα� ���� ����� �ִ� �Ը��� ��λ� ���� �߻�. ���۽����� �糭�� �ѹݵ��� ���İ��� �ƺ��ȯ�� �ǰ�, ���� �� ��θ� �����ų �߰� ������ �����ȴ�.','main2_6.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (7,'���� ������','������','������',to_date('15/11/05','RR/MM/DD'),'2015�� ����. ���Ҵ� ������ ���� �ǹ��� ���� �ô޸��� �� �ҳ�(�ڼҴ�). ���� ���� �ൿ���� ������ �� �ۿ� �� ����źΡ�(������)�� ����� �ݴ�� �ǽ� ��, �ҳฦ ���ϱ� ���� �ڽŸ��� ��ȹ�� �غ��Ѵ�.','main2_7.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'ET','��Ƽ�� ���ʹ���','� �丶��',to_date('84/08/11','RR/MM/DD'),'��� ������ ������ ���ӿ� ���ּ��� ��Ÿ����. ���ּ����� ���� �ܰ��ε��� ������ ���� ǥ������ ä���ϴ� �� �ΰ����� ��Ÿ���� ���ѷ� ������ �����µ�, �� ���߿� ������ �� �ܰ��θ� Ȧ�� ���� �ȴ�. ��Ȳ�ϴ� �ܰ����� �� ���� ���� ������, �� �� ���� ������Ʈ�� �����ϰ� �ȴ�.','main2_1.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (2,'��󷣵�','���̾� ����','���̾� ����',to_date('20/12/31','RR/MM/DD'),'���� �ٴ� ������� ���� ������ ���� ����󷣵塯. ���� �ǾƴϽ�Ʈ �����ٽ�����(���̾� ����)�� ��� ������ ���̾ơ�(���� ����), �λ����� ���� ������ ���� ���� �� ����� �̿ϼ��� ������ ���븦 ������ �����Ѵ�.','main2_2.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (3,'��Ŀ','��� �ʸ���','ȣ��Ų �Ǵн�',to_date('19/10/02','RR/MM/DD'),'������ ���� �Ƽ� �÷��� �ڹ̵���� �޲ٴ� ����.
������ ��ΰ� ���İ��� �ڹ̵� ���� ���󿡼� �� �������δ� �װ� �� �ڸ��� ������ ���ݰ� �Ǵµ���','main2_3.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (4,'�����','����ȣ','�۰�ȣ',to_date('19/05/30','RR/MM/DD'),'���� ��ġ�� ���� �ʾҾ�䡱','main2_4.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (5,'�� ������','�丣�� ��Ƽ��','�ݸ� �ķ�',to_date('15/10/29','RR/MM/DD'),'����̹��� Ŀ�� ����ŷ ȣ��! �̰����� ����� ������ ���� ��, ��� ����! �����Ⱓ 45�� �ȿ� ¦�� ã�� ���ϸ� ������ �Ǿ�� �Ѵ�!  ','main2_5.jpg');
REM INSERTING into C##ITBANK.MOVIE3
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (11,'���� ��, ���迡�� �� ����� ������� �ص�','��Ű Ÿī����','������� ����',to_date('22/11/30','RR/MM/DD'),'���� �� ����� ������� ����, �׷����� �ұ��ϰ�, ���� �� ���θ� ���� ��ƶ�� ����� �ݺ��ϴ� �� �ҳ�, �ҳ��� ���� ���� û���','main3_11.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (12,'��Ʋ��','����','������',to_date('22/12/28','RR/MM/DD'),'������ �Ϻ��ϰ�, ����� ��Ʋ�ϰ�! ��ǰ�� ���� ������ ��������!','main3_12.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (13,'�ź����Ʈ ������ ����������� 7���� ����','������','�迵��',to_date('22/12/14','RR/MM/DD'),'������ ã�� ����! ���༼�踦 ���ϱ� ����! ���ϸ����� ������ ����� ���谡 �ִ� �� 7����� ������ ������!','main3_13.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (14,'��ũ�� �ó׸� �ܼ�Ʈ 2-������Ÿ �ܼ�Ʈ ������','�����','������',to_date('22/12/21','RR/MM/DD'),'��ũ���� ȣ��, ������Ÿ ģ������ ���� ���� Ư���� �ܼ�Ʈ�� �غ��߾��. ������ ���, ������Ÿ�� �Բ� �����غ����?','main3_14.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'������','�ӱ���','������',to_date('87/03/21','RR/MM/DD'),'���� �ڰ� �� �� ���� ��� �޴� ���� �ô�, �밡�� ���� �Ż��(�̱���)�� ���� ���̿� ���� ���� �ž� �ϰ��� ���� ȸ�Ǹ� ���� �����̸� ���̱�� �Ѵ�. �����̷� ���õ� ����(������)�� ��Կ� ����ϰ� ��Դ� ������ �̸� ���� �׳ฦ �Ѿ��ϱ� �����Ѵ�.','main3_1.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (2,'1917','�� �൥��','���� ������',to_date('20/02/19','RR/MM/DD'),'�� ���� ����, �ϳ��� �̼�! �׵��� �ο��� �� ���� ���� �ƴ϶� �ð��̾���!','main3_2.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (3,'�� �̸��� ĭ','ī�� ���ϸ�','���� ĭ',to_date('11/03/24','RR/MM/DD'),'õ�� ������ ���� ĭ�� ���� ���� ������ ���۵ȴ�!','main3_3.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (4,'����Ʈ','�̻��','������',to_date('19/07/31','RR/MM/DD'),'§�� ���� û����, ����̹��� ��¥ �糭�� ������!','main3_4.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (5,'��','�ڴ���','���ؿ�',to_date('19/03/20','RR/MM/DD'),'�����ڰ� �ǰ� �;��١�','main3_5.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (6,'�ǵ���','������','�賲��',to_date('16/12/07','RR/MM/DD'),'���� ������ ������ ���� �ؿ� ���ϰ� �־��� ���¸� ������ 2�� ������ ������ ���� ���� ������ ������ ���������� ���� ������� ��� �� ������ �����ϴµ���!','main3_6.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (7,'����','������','����ȭ',to_date('22/12/21','RR/MM/DD'),'���� �����ΰ�, ���� �����ΰ�!','main3_7.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (8,'�û���','������','���ؿ�',to_date('22/11/23','RR/MM/DD'),'���������� �پ ħ�� �Ƿ��� ���� ��������� ���� �������͡����� �� ���ָ� �����޾� ������ ����. ','main3_8.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (9,'��������','�̺���','���·�',to_date('19/01/23','RR/MM/DD'),'������ ġŲ���! �㿡�� �ẹ�ٹ�! ���ݱ��� �̷� ����� ������!','main3_9.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (10,'������','�� �ش���','ŰƮ �ظ���',to_date('14/02/20','RR/MM/DD'),'��� �ִ��� ȭ�� ����! ȭ���ߴ� ���ô� �������. ����� ������ �Ǿ���!','main3_10.jpg');
REM INSERTING into C##ITBANK.NOTE
SET DEFINE OFF;
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (1,1,'E.T �׽�Ʈ','��������Ʈ�� �Դϴ�
��Ƽ ���ź� �ֳ���?',3,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (3,2,'��Ŀ �׽�Ʈ �Դϴ�','��Ŀ ���� ������ ������ ',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (4,3,'���� �ı�','�ѱ����̶�� ���ߵ� ��ȭ�ΰ� ���� ����ȭ ����� ���� ������ ������ ����մϴ�!!',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (5,4,'�û��� �ı�','�� ��ȭ �� ���ø� ��ȸ�Ͻʴϴ�...���԰� �峭�ƴϰ� ��� ���� ����� ���� ��� �̻��Դϴ� �ƿ������� ��� ���� ����� ���������� ��� ���� �Ḣ�մϴ�',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (6,1,'�û��� ����','���� ������ �ʹ����� �� �� ��ȭ�����. �׸��� ��� �� ����� ������̶� ��� �������µ� �� �ʹ� �� ����ż� ��ȭ�� �ѹ� �� ����Ͱ� ������ �Ⱥ� ���� �ִٸ� �� ��õ�帮�� �ͳ׿�.. �ְ��Դϴ�?',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (7,2,'�ƹ�Ÿ2 ���ź�','���� ��� ���� ����� �� ����ũ �����̾߱�! �ð� ���� �� �𸣰� �����ؼ� �ó׿�. ���ο� �� ������ ���� ������ �ź�Ӱ� ���־����ϴ�. �׷� ���� ������ �ı��ϴ� �ΰ��� �ʹ��� �Ӱ� ������. �����̾߱� �� ���� �ͳ׿�',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (8,3,'�ƹ�Ÿ2 ����','IMAX 3D �� �����߽��ϴ�. �̷��Գ� �ڿ������� C.G ����� ���Ǹ� ǥ�մϴ�. ¦¦¦~~~~',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (9,4,'�ƹ�Ÿ2 2�� �þ��~!!','��¥ 3�ð� 12���̶�� �ð��� ���� ª���� ������ �ʰ� �����ϴ����� �׸��� 99%�� CG �����ٵ� ���� ���� CG�� �������� ����Ƽ�� �������� �������ϴ� ���� �Ƹ���� ������ ���� ����� �߿��ϴٴ°� �˾ҳ׿�',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (10,9,'����� �ı�','����� ���� �۰�ȣ ����',1,to_date('22/12/22','RR/MM/DD'));
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
