/*
   최종 프로젝트 SQL Script 
/*/

DROP TABLE Member CASCADE CONSTRAINTS;
DROP TABLE Member;

CREATE TABLE Member( -- 회원정보 테이블
member_id           number  not null,
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

DROP SEQUENCE Member_seq;
CREATE SEQUENCE Member_seq -- member 테이블 시퀀스
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCACHE;

insert into member(member_id,user_id,password,username,nickname,birth,phone,email,address)
values(member_seq.nextval,'test','1234','윤승원','윤또깡','951126','010-6211-7619','tmd814@naver.com','경기도부천시'
);
insert into member(member_id,user_id,password,username,nickname,birth,phone,email,address)
values(member_seq.nextval,'test2','1234','최민기','최밍키','951121','010-6211-7619','tmd814@naver.com','경기도부천시'
);
commit;
rollback;

update member set branch_name = '지점미등록' where user_id = 'test2';


select * from member;
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
tag_name             VARCHAR2(15) , 
user_id              VARCHAR2(50) ,  -- 관리중인 고객 
main_field           VARCHAR2(50) , -- 담당 분야
intro_content        VARCHAR2(300) , -- 소개글 
main_content          VARCHAR2(1000) , -- 메인 소개
CONSTRAINT FK_PrivateBanker_user_id FOREIGN KEY(user_id) REFERENCES Member(user_id)
);

DROP SEQUENCE Private_banker_seq;
CREATE SEQUENCE  Private_banker_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content)
    values(Private_banker_seq.nextval,'test3' ,'1234','김피비', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '강서지점' , '채권 설계' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.'
);
commit;

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
    title varchar2(50) not null,
    start_date varchar2(50) ,
    end_date varchar2(50),
    memo varchar2(20) ,
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



