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
reg_date date default sysdate ,
branch_name varchar2(50) default '지점미등록' -- 지점 등록시, update 되는 컬럼
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

select * from member;
----------------------------------------------------------------------------------------------------------------------

DROP TABLE CHAT_ROOM;
CREATE TABLE CHAT_ROOM(
CHAT_ROOM_ID NUMBER PRIMARY KEY, -- CHATROOM 시퀀스
ROOM_NUMBER NUMBER NOT NULL, -- 채팅방 번호
ROOM_NAME VARCHAR2(30) NOT NULL ,-- 채팅방 이름
ENTER_DATE DATE DEFAULT SYSDATE,
END_DATE DATE DEFAULT SYSDATE
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

select * from chat_room;

---------------------------------------------------------------------------------------