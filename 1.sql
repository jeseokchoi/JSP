--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-12岿-22-2022   
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
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (3,'魂鸥努肺胶','santa12','111',to_date('22/12/24','RR/MM/DD'),'santa@gmail.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (4,'家葱','sonic11','111',to_date('22/12/31','RR/MM/DD'),'sonic@naver.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (5,'辫柳屈','jin111','111',to_date('22/12/24','RR/MM/DD'),'jin@naver.com',to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (1,'弥力籍','dodoro914','gkgk11',to_date('89/09/14','RR/MM/DD'),'dodoro914@gmail.com',to_date('22/12/21','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (2,'茄犁侩','jyhan','gkswodyd',to_date('90/06/15','RR/MM/DD'),'jyhan33777@naver.com',to_date('22/12/21','RR/MM/DD'));
Insert into C##ITBANK.MEMBER (IDX,MEMBERNAME,MEMBERID,MEMBERPW,BIRTHDATE,EMAIL,JOINDATE) values (9,'家家丛','soso11','111',to_date('22/12/09','RR/MM/DD'),'soso@naver.com',to_date('22/12/22','RR/MM/DD'));
REM INSERTING into C##ITBANK.MOVIE1
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE1 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'酒官鸥2','力烙胶 墨皋沸','炼 圾促唱',to_date('22/12/14','RR/MM/DD'),'''力捞农 汲府''客 ''匙捞萍府''啊 捞烽 啊练捞 稗霸 登绰 公磊厚茄 困蛆苞 混酒巢扁 困秦 栋唱具 窍绰 变 咯沥苞 傈捧 弊府绊 斑诞郴具 且 惑贸俊 措茄 捞具扁甫 弊啡促.','main1.jpg');
REM INSERTING into C##ITBANK.MOVIE2
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (6,'归滴魂','捞秦霖','捞捍清',to_date('19/12/19','RR/MM/DD'),'措茄刮惫 包螟 开荤惑 弥措 痹葛狼 归滴魂 气惯 惯积. 癌累胶矾款 犁抄俊 茄馆档绰 鉴侥埃俊 酒厚痹券捞 登绊, 巢苞 合 葛滴甫 笼绢伙懦 眠啊 气惯捞 抗螟等促.','main2_6.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (7,'八篮 荤力甸','厘犁泅','碍悼盔',to_date('15/11/05','RR/MM/DD'),'2015斥 辑匡. 槐家聪 背烹荤绊 捞饶 狼巩狼 刘惑俊 矫崔府绰 茄 家赤(冠家淬). 梨篮 倒免 青悼栏肺 背窜狼 传 观俊 抄 ‘辫脚何’(辫辣籍)绰 葛滴狼 馆措客 狼缴 加, 家赤甫 备窍扁 困茄 磊脚父狼 拌裙阑 霖厚茄促.','main2_7.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'ET','胶萍红 胶鞘滚弊','穷府 配付胶',to_date('84/08/11','RR/MM/DD'),'绢蠢 茄利茄 付阑狼 剑加俊 快林急捞 唱鸥抄促. 快林急俊辑 郴赴 寇拌牢甸篮 瘤备狼 阿辆 钎夯甸阑 盲秒窍带 吝 牢埃甸捞 唱鸥唱磊 辑笛矾 瘤备甫 栋唱绰单, 弊 客吝俊 第媚柳 茄 寇拌牢父 圈肺 巢霸 等促. 规炔窍带 寇拌牢篮 茄 啊沥 笼俊 见绢甸绊, 弊 笼 部付 郡府绢飘客 炼快窍霸 等促.','main2_1.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (2,'扼扼罚靛','单固救 寂俩','扼捞攫 绊浇傅',to_date('20/12/31','RR/MM/DD'),'厕阑 操绰 荤恩甸阑 困茄 喊甸狼 档矫 ‘扼扼罚靛’. 犁令 乔酒聪胶飘 ‘技官胶蛮’(扼捞攫 绊浇傅)苞 硅快 瘤噶积 ‘固酒’(骏付 胶沛), 牢积俊辑 啊厘 蝴唱绰 鉴埃 父抄 滴 荤恩篮 固肯己牢 辑肺狼 公措甫 父甸绢啊扁 矫累茄促.','main2_2.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (3,'炼目','配靛 鞘赋胶','龋酒挪 乔葱胶',to_date('19/10/02','RR/MM/DD'),'绊淬矫狼 堡措 酒辑 敲泛篮 内固叼攫阑 厕操绰 巢磊.
窍瘤父 葛滴啊 固媚啊绰 内固叼 鞍篮 技惑俊辑 盖 沥脚栏肺绰 弊啊 汲 磊府啊 绝澜阑 柄摧霸 登绰单ˇ','main2_3.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (4,'扁积面','豪霖龋','价碍龋',to_date('19/05/30','RR/MM/DD'),'“企 尝摹绊 酵柳 臼疽绢夸”','main2_4.jpg');
Insert into C##ITBANK.MOVIE2 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (5,'歹 而胶磐','夸福绊胶 鄂萍葛胶','妮赴 颇芳',to_date('15/10/29','RR/MM/DD'),'傈措固巩狼 目敲 皋捞欧 龋炮! 捞镑俊急 荤尔俊 狐瘤瘤 臼篮 磊, 葛滴 蜡了! 蜡抗扁埃 45老 救俊 娄阑 茫瘤 给窍搁 悼拱捞 登绢具 茄促!  ','main2_5.jpg');
REM INSERTING into C##ITBANK.MOVIE3
SET DEFINE OFF;
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (11,'坷疵 广, 技拌俊辑 捞 荤尔捞 荤扼柳促 秦档','固虐 鸥墨洒肺','饶捻葛配 府内',to_date('22/11/30','RR/MM/DD'),'概老 广 荤尔捞 荤扼瘤绰 技拌, 弊烦俊档 阂备窍绊, 促澜 朝 辑肺甫 氢茄 局贫茄 绊归阑 馆汗窍绰 滴 家斥, 家赤狼 啊厘 浇锹 没冕淬','main3_11.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (12,'哩撇盖','辫版盔','林瘤绕',to_date('22/12/28','RR/MM/DD'),'累傈篮 肯寒窍霸, 荐荤绰 哩撇窍霸! 绊前拜 裹了 坷遏捞 祁媚柳促!','main3_12.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (13,'脚厚酒颇飘 必厘魄 瞒盔档柄厚客 7俺狼 技拌','函康痹','辫康篮',to_date('22/12/14','RR/MM/DD'),'悼积阑 茫扁 困秦! 乞青技拌甫 备窍扁 困秦! ‘窍府’绰 付瘤阜 锐噶狼 凯艰啊 乐绰 力 7技拌肺 葛氰阑 栋抄促!','main3_13.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (14,'俏农掐 矫匙付 能辑飘 2-盔歹胶鸥 能辑飘 措累傈','辫荐版','炼版捞',to_date('22/12/21','RR/MM/DD'),'俏农掐苞 龋扁, 盔歹胶鸥 模备甸捞 塞阑 钦媚 漂喊茄 能辑飘甫 霖厚沁绢夸. 喊蝴豪 甸绊, 盔歹胶鸥甫 窃膊 览盔秦杭鳖夸?','main3_14.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (1,'揪罐捞','烙鼻琶','碍荐楷',to_date('87/03/21','RR/MM/DD'),'磷篮 磊啊 魂 磊 焊促 快措 罐带 炼急 矫措, 措啊笼 辆颊 脚惑痹(捞备鉴)客 何牢 荤捞俊 颊捞 绝磊 脚揪 老啊绰 笼救 雀狼甫 烹秦 揪罐捞甫 甸捞扁肺 茄促. 揪罐捞肺 急琶等 苛赤(碍荐楷)绰 惑痹客 措搁窍绊 惑痹绰 苛赤狼 固葛俊 馆秦 弊赤甫 醚局窍扁 矫累茄促.','main3_1.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (2,'1917','基 膏单胶','炼瘤 钙纳捞',to_date('20/02/19','RR/MM/DD'),'滴 疙狼 捍荤, 窍唱狼 固记! 弊甸捞 轿况具 且 巴篮 利捞 酒聪扼 矫埃捞菌促!','main3_2.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (3,'郴 捞抚篮 沫','墨鄂 炼窍福','箕疯 沫',to_date('11/03/24','RR/MM/DD'),'玫犁 磊企刘 巢磊 沫狼 扁利 鞍篮 咯沥捞 矫累等促!','main3_3.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (4,'竣矫飘','捞惑辟','炼沥籍',to_date('19/07/31','RR/MM/DD'),'搂郴 气惯 没斥归荐, 傈措固巩狼 柳楼 犁抄阑 父唱促!','main3_4.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (5,'捣','冠穿府','幅霖凯',to_date('19/03/20','RR/MM/DD'),'“何磊啊 登绊 酵菌促”','main3_5.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (6,'魄档扼','冠沥快','辫巢辨',to_date('16/12/07','RR/MM/DD'),'规荤瓷 蜡免狼 傍器绰 痢瞒 必俊 崔窍绊 弥厩狼 荤怕甫 蜡惯且 2瞒 气惯狼 困氰阑 阜扁 困秦 惯傈家 流盔牢 ‘犁酋’苞 弊狼 悼丰甸篮 格见 扒 荤捧甫 矫累窍绰单ˇ!','main3_6.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (7,'康旷','辣力闭','沥己拳',to_date('22/12/21','RR/MM/DD'),'穿啊 了牢牢啊, 穿啊 康旷牢啊!','main3_7.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (8,'棵哗固','救怕柳','幅霖凯',to_date('22/11/23','RR/MM/DD'),'竿牢捞瘤父 顿绢抄 魔贱 角仿阑 瘤囱 ‘版荐’绰 绢狼 ‘捞屈劳’俊霸 弊 犁林甫 牢沥罐酒 泵栏肺 甸绢埃促. ','main3_8.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (9,'必茄流诀','捞捍清','幅铰锋',to_date('19/01/23','RR/MM/DD'),'撤俊绰 摹挪厘荤! 广俊绰 泪汗辟公! 瘤陛鳖瘤 捞繁 荐荤绰 绝菌促!','main3_9.jpg');
Insert into C##ITBANK.MOVIE3 (IDX,MVTITLE,DIRECTOR,ACTORS,OPENDATE,STORY,POSTER) values (10,'汽其捞','弃 矩歹郊','虐飘 秦傅畔',to_date('14/02/20','RR/MM/DD'),'荤惑 弥措狼 拳魂 气惯! 拳妨沁带 档矫绰 荤扼瘤绊. 荤尔篮 傈汲捞 登菌促!','main3_10.jpg');
REM INSERTING into C##ITBANK.NOTE
SET DEFINE OFF;
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (1,1,'E.T 抛胶飘','抛栏胶栏飘栏 涝聪促
捞萍 焊脚盒 乐唱夸?',3,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (3,2,'炼目 抛胶飘 涝聪促','炼目 眶惑 眶澜捍 公辑框 ',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (4,3,'康旷 饶扁','茄惫牢捞扼搁 毫具瞪 康拳牢芭 鞍绊 沥己拳 辫绊篮 硅快殿 硅快甸狼 凯楷捞 措窜钦聪促!!',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (5,4,'棵哗固 饶扁','捞 康拳 救 焊矫搁 饶雀窍绞聪促...隔涝皑 厘抄酒聪绊 葛电 硅快甸 楷扁仿 沥富 扁措 捞惑涝聪促 酒开硅快鳖瘤 绢蠢 穿备 楷扁仿 冻绢瘤瘤绰 荤恩 绝捞 柔涪钦聪促',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (6,1,'棵哗固 府轰','沥富 埃父俊 呈公唱档 肋 夯 康拳看绢夸. 弊府绊 绢蠢 茄 厘搁捞 面拜利捞扼 拌加 积阿唱绰单 肚 呈公 肋 父靛寂辑 康拳甫 茄锅 歹 焊绊酵霸 父甸绢夸 救夯 盒捞 乐促搁 怖 眠玫靛府绊 酵匙夸.. 弥绊涝聪促?',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (7,2,'酒官鸥2 焊脚盒','剑阑 哈绢唱 拱狼 技拌肺 埃 力捞农 啊练捞具扁! 矫埃 啊绰 临 葛福绊 笼吝秦辑 好匙夸. 货肺款 拱 何练苞 拱加 技惑捞 脚厚酚绊 岗乐菌嚼聪促. 弊繁 岗柳 技惑阑 颇鲍窍绰 牢埃捞 呈公唱 褂绊 浇柒绢夸. 促澜捞具扁 倔弗 焊绊 酵匙夸',1,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (8,3,'酒官鸥2 措累','IMAX 3D 肺 包恩沁嚼聪促. 捞犯霸唱 磊楷胶矾款 C.G 扁贱俊 版狼甫 钎钦聪促. 娄娄娄~~~~',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (9,4,'酒官鸥2 2锅 好绢夸~!!','柳楼 3矫埃 12盒捞扼绰 矫埃捞 沥富 陋瘤档 辨瘤档 臼绊 利寸窍歹焙夸 弊府绊 99%啊 CG 看阑刨单 沥富 夸硫 CG啊 捞沥档俊 镊府萍啊 唱坷绰瘤 隔耳嚼聪促 沥富 酒抚翠绊 啊练俊 措茄 荤尔捞 吝夸窍促绰吧 舅疽匙夸',0,to_date('22/12/22','RR/MM/DD'));
Insert into C##ITBANK.NOTE (IDX,MEMBER_IDX,NOTETITLE,REVIEW,VIEWS,TODAY) values (10,9,'扁积面 饶扁','扁积面 曹离 价碍龋 曹离',1,to_date('22/12/22','RR/MM/DD'));
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
