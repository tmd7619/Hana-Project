/*
   최종 프로젝트 SQL Script 


/*

9 ~ 10 시 회의시간
10시 ~ 11시  -> 1
11시 ~ 12시 -> 2 

13시 ~ 14시 -> 3
14시 ~ 15시 -> 4
15시 ~ 16시 -> 5
16시 ~ 17시 -> 6

*/

DROP TABLE Member CASCADE CONSTRAINTS;

DROP TABLE Client;
CREATE TABLE Client( -- 손님 테이블
client_id           number  not null, -- 손님테이블 시퀀스 값
user_id varchar2(30) PRIMARY KEY ,
password varchar2(50) NOT NULL,
username varchar2(30) UNIQUE,
nickname varchar2(50) ,
birth varchar2(30) NOT NULL,
phone varchar2(20) NOT NULL, -- unique 키 고려 ?
email varchar2(50) NOT NULL,
address varchar2(200) NOT NULL,
reg_date date default sysdate 
);

DROP SEQUENCE Client_seq;
CREATE SEQUENCE Client_seq -- 손님 테이블 시퀀스
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCACHE;

insert into Client(Client_id,user_id,password,username,nickname,birth,phone,email,address)
values(member_seq.nextval,'test','1234','윤승원','윤또깡','951126','010-6211-7619','tmd814@naver.com','경기도부천시'
);
insert into Client(Client_id,user_id,password,username,nickname,birth,phone,email,address)
values(Client_seq.nextval,'test2','1234','최민기','최밍키','951121','010-6211-7619','tmd814@naver.com','경기도부천시'
);
commit;
rollback;

update Client set branch_name = '지점미등록' where user_id = 'test2';


select * from Client;
----------------------------------------------------------------------------------------------------------------------

DROP TABLE CHAT_ROOM;
CREATE TABLE CHAT_ROOM(
CHAT_ROOM_ID NUMBER PRIMARY KEY, -- CHATROOM 시퀀스
ROOM_NUMBER NUMBER NOT NULL, -- 채팅방 번호
ROOM_NAME VARCHAR2(30) NOT NULL ,-- 채팅방 이름
pb_id     VARCHAR2(50) NOT NULL , -- pb 아이디 
ENTER_DATE DATE DEFAULT SYSDATE,
END_DATE DATE
);

DROP SEQUENCE chat_room_seq;
CREATE SEQUENCE chat_room_seq -- chatroom 테이블 시퀀스
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCACHE;

insert into chat_room(chat_room_id, room_number, room_name)
values(chat_room_seq.nextval, 1 , '윤승원' );
commit;
rollback;
select * from chat_room;
---------------------------------------------------------------------------------------

DROP TABLE Private_banker;
CREATE TABLE Private_banker
(
Private_Banker_id NUMBER  NOT NULL , 
pb_id                VARCHAR2(30) NOT NULL,
pb_password          VARCHAR2(50) NOT NULL,
pb_name              VARCHAR2(20)  NOT NULL UNIQUE ,
pb_rank              VARCHAR2(20)  NOT NULL , 
pb_phone             VARCHAR2(30)  , 
pb_email             VARCHAR2(100) , -- pb email
branch_name          VARCHAR2(50) NOT  NULL ,
tag_name             VARCHAR2(200) ,  -- 해시태그 
user_id              VARCHAR2(50) ,  -- 관리중인 고객 
main_field           VARCHAR2(50) , -- 담당 분야
intro_content        VARCHAR2(300) , -- 소개글 
main_content          VARCHAR2(1000) , -- 메인 소개
CONSTRAINT FK_PrivateBanker_user_id FOREIGN KEY(user_id) REFERENCES Member(user_id)
);

DROP SEQUENCE Private_banker_seq;
CREATE SEQUENCE  Private_banker_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;


select * from private_banker ;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


drop table matching_client_info;
create table matching_client_info(
    matching_client_info number primary key,
    user_id varchar2 (30),
    user_name varchar2(30),
    user_assets varchar2(50),
    pb_id varchar2(50)

);

drop sequence matching_client_info;
CREATE SEQUENCE  matching_client_info_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
drop table pb_scheduler ; -- pb 스케줄 테이블 
create table pb_scheduler(
    pb_scheduler_id number primary key,
    title varchar2(200) not null,
    start_date varchar2(50) ,
    end_date varchar2(50),
    memo varchar2(500) ,
    pb_name  varchar2(30) not null ,
    pb_branch_name varchar2(50) not null,
    impossible number(1) not null , -- 1 : 10시 ~ 11시 마감 ......
    start_time varchar2(50) ,
    end_time varchar2(50)
);

drop sequence pb_scheduler_seq;
CREATE SEQUENCE  pb_scheduler_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;

select * from pb_scheduler;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

drop table reservation ; -- 상담 예약 테이블
create table reservation(
    reservation_id number primary key,
    rsrv date not null, -- 상담시간 
    rsrv_type varchar2(200), 
    rsrv_coment varchar2(500) , 
    user_id  varchar2(50) , -- foreign key 
    user_name varchar2(100) 
);
drop sequence reservation_seq ;
CREATE SEQUENCE  reservation_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;



