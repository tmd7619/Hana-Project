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
values(member_seq.nextval,'user','1234','최민기','최밍키','951126','010-6211-7619','tmd814@naver.com','경기도부천시'
);
insert into Client(Client_id,user_id,password,username,nickname,birth,phone,email,address)
values(Client_seq.nextval,'cmg123','1234','','윤상원','951121','010-6211-7619','tmd814@naver.com','경기도부천시'
);
commit;
rollback;

update Client set branch_name = '지점미등록' where user_id = 'test2';


select * from Client;
----------------------------------------------------------------------------------------------------------------------

DROP TABLE Consulting_ROOM;
CREATE TABLE Consulting_ROOM(
Consulting_ROOM_id NUMBER PRIMARY KEY, -- Consulting_ROOM 시퀀스
ROOM_NUMBER NUMBER NOT NULL, -- 채팅방 번호
client_name VARCHAR2(30) NOT NULL ,-- 방을 개설한 고객명
pb_name varchar2(30) not null,
ENTER_DATE DATE DEFAULT SYSDATE,
END_DATE DATE
);

DROP SEQUENCE Consulting_ROOM_seq;
CREATE SEQUENCE Consulting_ROOM_seq -- Consulting_ROOM 테이블 시퀀스
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCACHE;

insert into Consulting_ROOM(Consulting_ROOM_id, room_number, ROOM_MASTER)
values(Consulting_ROOM_seq.nextval, 1 , '윤승원' );
commit;
rollback;
select * from Consulting_ROOM;
---------------------------------------------------------------------------------------

DROP TABLE Private_banker;
CREATE TABLE Private_banker
(

code_num            NUMBER(6) primary key ,  -- 사번  
Private_Banker_id NUMBER not null , 
pb_id                VARCHAR2(30) NOT NULL,
pb_password          VARCHAR2(50) NOT NULL,
pb_name              VARCHAR2(20)  NOT NULL  ,
pb_rank              VARCHAR2(20)  NOT NULL , 
pb_phone             VARCHAR2(30)  , 
pb_email             VARCHAR2(100) , -- pb email
branch_name          VARCHAR2(50) NOT  NULL ,
tag_name             VARCHAR2(200) ,  -- 해시태그 
main_field           VARCHAR2(50) , -- 담당 분야
intro_content        VARCHAR2(300) , -- 소개글 
main_content          VARCHAR2(1000), -- 메인 소개
FILE_SQ               varchar2(1000)  
--CONSTRAINT FK_PrivateBanker_user_id FOREIGN KEY(user_id) REFERENCES Member(user_id)
);




DROP SEQUENCE Private_banker_seq;

CREATE SEQUENCE  Private_banker_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;


select * from private_banker ;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
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
*/

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
drop table pb_scheduler ; -- pb 스케줄 테이블 
create table pb_scheduler(
    pb_scheduler_id number primary key,
    title varchar2(200) not null,
    start_date varchar2(50) ,
    end_date varchar2(50),
    memo varchar2(500) default '상담 예약 ',
    pb_name  varchar2(30) not null ,
    pb_branch_name varchar2(50) not null,
    impossible number(1) not null , -- 1 : 10시 ~ 11시 마감 ......
    start_time varchar2(50) ,
    end_time varchar2(50) , 
    status_toggle number(1) default 0 -- 0 :온라인 (고객예약시 등록) 1 :  오프라인(PB등록)
    
);

select * from pb_scheduler order by pb_scheduler_id desc;


drop sequence pb_scheduler_seq;
CREATE SEQUENCE  pb_scheduler_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;

select * from pb_scheduler order by pb_scheduler_id desc;

delete from pb_scheduler where pb_scheduler_id = 76;
commit;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

drop table reservation ; -- 상담 예약 테이블
create table reservation(
    reservation_id number primary key,
    rsrv_time varchar2(100) not null, -- 상담시간 
    rsrv_comment varchar2(500) , 
    user_id  varchar2(50) , -- foreign key 
    username varchar2(100) not null,
    pb_name varchar2(30) not null,
    pb_branch_name varchar2(200) not null
);
drop sequence reservation_seq ;
CREATE SEQUENCE  reservation_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;

select * from reservation order by reservation_id desc;
delete from reservation where reservation_id = 98;
insert into reservation(reservation_id, rsrv_time, rsrv_comment, username, pb_name , pb_branch_name)
values(reservation_seq.nextval, '10:00', '위험자산 비중 조절 문의', '최민기', '윤승원', '강서지점');
commit;
--------------------------------------------------------------------------------------------------

drop table Assets_Info ;
create table Assets_Info(
    client_id varchar2(50) primary key ,  -- 식별관계 pk키
    assets_info_id number, 
    deposit number , 
    fund number,
    wrap_account number ,
    stock number ,
    bond number 
    
);
drop sequence Assets_Info_seq ;
CREATE SEQUENCE  Assets_Info_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;

select * from assets_info;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



drop table Financial_Products ;
create table Financial_Products(
    financial_code number(6) primary key,
    financial_products_id number not null , 
    product_name varchar2(200) not null,
    product_type varchar2(100) not null,
    product_grade varchar2(100) not null, -- 매우 높은 위험, 높은 위험, 다소 높은 위험, 보통 위험, 낮은 위험
    product_terms varchar2(2000) not null

);

drop sequence Financial_Products_seq ;
CREATE SEQUENCE Financial_Products_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;

select * from Financial_Products where PRODUCT_TYPE = '채권';

update Financial_Products set product_name = '한국투자 재형 달러표시중국채권 증권 자투자신탁' where  financial_products_id = 79;
commit;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



drop table favorite_list;
create table favorite_list(
    pb_code_num number(6) primary key,
    favorite_list_id number not null,
    client_name varchar2(50) not null,
    toggle number(1) default 1
);

drop sequence favorite_list_seq ;
CREATE SEQUENCE favorite_list_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;

  insert into favorite_list(pb_code_num, favorite_list_id, client_name)
        values (453120, favorite_list_seq.nextval, '윤승원');


select * from favorite_list;

delete from favorite_list where pb_code_num = '123123' and client_name = '윤승원';



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


drop table consulting_history;
create table consulting_history(
    room_number number primary key ,
    client_id varchar2(50) not null,
    pb_code_num number(6) not null,
    cslt_time date default sysdate, -- 상담 종료 시간 
    cslt_title varchar2(200) not null,
    cslt_comment varchar2(500) not null, -- pb가 남긴 코멘트 
    consulting_history_id number not null,
    pb_name varchar2(30) not null ,
    username varchar2(30) not null ,
    branch_name varchar2(100) not null ,
    status_toggle number(1) default 0   -- 0 : 상담 완료 1 : 답변 대기 2 : 답변 완료 
);


drop sequence consulting_history_seq ;
CREATE SEQUENCE consulting_history_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;


select * from consulting_history;


SELECT cslt_title
             , cslt_comment
             , pb_name
             , branch_name
             , to_char(cslt_time, 'yyyy-mm-dd HH24:MI') as cslt_time
             , room_number
        FROM (
                 SELECT ROWNUM RN, A.*
                 FROM (
                          SELECT *
                          FROM consulting_history
                          ORDER BY cslt_time DESC
                      ) A
             )
        WHERE RN BETWEEN 1 AND 5
          and client_id = 'user' 
         ;



select * from consulting_history;
select to_char(cslt_time, 'yyyy-mm-dd HH24:mi') as cslt_time from consulting_history;


-- pb --
SELECT cslt_title
             , cslt_comment
             , pb_name
             , branch_name
             , to_char(cslt_time, 'yyyy-mm-dd HH24:mi') as cslt_time
             , room_number
             , username
             , status_toggle
        FROM (
                 SELECT ROWNUM RN, A.*
                 FROM (
                          SELECT *
                          FROM consulting_history
                          ORDER BY cslt_time DESC
                      ) A
             )
        WHERE RN BETWEEN 1 AND 5
          and pb_code_num = 453120;

select * from consulting_history where pb_code_num = 453120;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

drop table inquiry ;
create table inquiry(
    inquiry_id number primary key,
    inquiry_title varchar2(100) not null ,
    inquiry_content varchar2(1000) not null,
    room_number number(6) ,
    writer varchar2(50) not null , 
    reg_date date default sysdate 
    
);

drop sequence inquiry_seq ;
CREATE SEQUENCE inquiry_seq  MINVALUE 1 MAXVALUE 9999  
INCREMENT BY 1 START WITH 1  NOCACHE   NOCYCLE ;



 select inquiry_title, inquiry_content, room_number, writer, to_char(reg_date, 'yyyy-mm-dd HH24:mi') as reg_date , inquiry_id
        from inquiry ;

delete from inquiry where room_number = 611131;
update consulting_history set status_toggle = 0 where room_number = 611131;

commit;

 insert into inquiry(inquiry_id, inquiry_title, inquiry_content, room_number, writer)
        values (inquiry_seq.nextval, 'ㅇㅇ', '12312', 123123, 'ㅇㅇ');
        
        desc inquiry;


        select cslt_title
             , cslt_comment
             , pb_name
             , branch_name
             , to_char(cslt_time, 'yyyy-mm-dd HH24:mi') as cslt_time
             , room_number
             , username
             , status_toggle
        from consulting_history;

     select *
        from consulting_history
        where rownum <= 5
        order by cslt_time desc;




CREATE TABLE image
(
   FILE_SQ                    NUMBER(20)  NOT NULL CONSTRAINT FILE_PK PRIMARY KEY  ,
   FILE_NAME                  VARCHAR2(200)  NULL ,
   FILE_INPUT_DATE            VARCHAR2(200)  NULL ,
   FILE_TYPE                  VARCHAR2(200)  NULL ,
   FILE_SIZE                  NUMBER(20)  NULL ,
   FILE_SAVED_FILE_NAME       VARCHAR2(200)  NULL ,
   FILE_THUMBNAIL_FILE_NAME   VARCHAR2(200)  NULL 
);

CREATE SEQUENCE HANA_FILE_SEQ 
INCREMENT BY 1 
START WITH 1 
MINVALUE 1 
MAXVALUE 1000 ;

---------------------------------------- 스케줄--------------------

select * from pb_scheduler order by pb_scheduler_id desc;

delete from pb_scheduler where pb_scheduler_id = 51;
commit;
-------------------------------------------------------------- 5개씩 하루-----------------------------------
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '김금란 손님 상담', '2021-09-06', '2021-09-06', '김금란 손님 상담' ,'윤승원', 1,'10:00', '11:00' , 1 , '강서지점');
        
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '유오성vip 손님 상담', '2021-09-06', '2021-09-06', '유오성 손님 상담' ,'윤승원', 2,'11:00', '12:00' , 1 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '오후 외근', '2021-09-06', '2021-09-06', '오후 교보증권 방문' ,'윤승원', 3,'13:00', '14:00' , 1 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '김승원 손님 비대면 상담', '2021-09-06', '2021-09-06', '김승원 손님 비대면 상담' ,'윤승원', 4,'14:00', '15:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '본부장 회의', '2021-09-06', '2021-09-06', '오후 본사장님 방문으로 긴급 회의' ,'윤승원', 5,'15:00', '16:00' , 1 , '강서지점');
-------------------------------------------------------------- 5개씩 하루-----------------------------------
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '조세진 손님 상담', '2021-09-07', '2021-09-07', '조세진 투자비중 조절 필요' ,'윤승원', 1,'10:00', '11:00' , 1 , '강서지점');
        
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '김소진 vip 손님 방문', '2021-09-07' , '2021-09-07', '세미나 포함 ' ,'윤승원', 2,'11:00', '12:00' , 1 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '금융감독원 방문', '2021-09-07', '2021-09-07' , '방문 점검' ,'윤승원', 3,'16:00', '17:00' , 1 , '강서지점');
                
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '김승원 손님 비대면 상담', '2021-09-07', '2021-09-07', '김승원 손님 비대면 상담' ,'윤승원', 4,'14:00', '15:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '지점장님 회의', '2021-09-07', '2021-09-07', '현재 분기 시황 점검' ,'윤승원', 5,'15:00', '16:00' , 1 , '강서지점');
        
        
-------------------------------------------------------------- 5개씩 하루-----------------------------------
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '자산 리벨런싱 기간', '2021-09-08', '2021-09-10', '특판 상품 판매' ,'윤승원', 1,'10:00', '11:00' , 1 , '강서지점');
        
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '김민식 손님 상담', '2021-09-08', '2021-09-08', '유오성 손님 상담' ,'윤승원', 2,'11:00', '12:00' , 1 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '유세진 손님 비대면 상담', '2021-09-08', '2021-09-08', '오후 교보증권 방문' ,'윤승원', 3,'13:00', '14:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '졍현석 비대면 상담', '2021-09-08', '2021-09-08', '김승원 손님 비대면 상담' ,'윤승원', 4,'14:00', '15:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '안재훈 비대면 상담', '2021-09-08', '2021-09-08', '오후 본사장님 방문으로 긴급 회의' ,'윤승원', 5,'15:00', '16:00' , 0 , '강서지점');
        
        
        
 -------------------------------------------------------------- 5개씩 하루-----------------------------------
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '오전 회의 연장', '2021-09-09', '2021-09-9', '특판 상품 판매관련' ,'윤승원', 1,'10:00', '11:00' , 1 , '강서지점');
        
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '유재석 손님 비대면 상담', '2021-09-09', '2021-09-09', '유재석 손님 상담' ,'윤승원', 2,'14:00', '15:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '김유진 손님 비대면 상담', '2021-09-09', '2021-09-09', '김유진 손님 상담 ' ,'윤승원', 3,'16:00', '17:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '홍심운 비대면 상담', '2021-09-10', '2021-09-10', '김승원 손님 비대면 상담' ,'윤승원', 4,'14:00', '15:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '김승기 비대면 상담', '2021-09-10', '2021-09-10', '오후 본사장님 방문으로 긴급 회의' ,'윤승원', 5,'15:00', '16:00' , 0 , '강서지점');
        
        -------------------------------------------------------------- 5개씩 하루-----------------------------------
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '자산 리벨런싱 기간', '2021-09-08', '2021-09-10', '특판 상품 판매' ,'윤승원', 1,'10:00', '11:00' , 1 , '강서지점');
        
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '김민식 손님 상담', '2021-09-08', '2021-09-08', '유오성 손님 상담' ,'윤승원', 2,'11:00', '12:00' , 1 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '유세진 손님 비대면 상담', '2021-09-08', '2021-09-08', '오후 교보증권 방문' ,'윤승원', 3,'13:00', '14:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '졍현석 비대면 상담', '2021-09-08', '2021-09-08', '김승원 손님 비대면 상담' ,'윤승원', 4,'14:00', '15:00' , 0 , '강서지점');
                
insert into pb_scheduler(pb_scheduler_id, title, start_date, end_date, memo , pb_name, impossible ,start_time, end_time, status_toggle  ,pb_branch_name)
        values (pb_scheduler_seq.nextval, '안재훈 비대면 상담', '2021-09-08', '2021-09-08', '오후 본사장님 방문으로 긴급 회의' ,'윤승원', 5,'15:00', '16:00' , 0 , '강서지점');
        
               
        
        
        
        
        
        