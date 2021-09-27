

-- member

insert into Client(Client_id,user_id,password,username,nickname,birth,phone,email,address)
values(member_seq.nextval,'user','1234','윤승원','윤또깡','951126','010-6211-7619','tmd814@naver.com','경기도부천시'
);
insert into Client(Client_id,user_id,password,username,nickname,birth,phone,email,address)
values(Client_seq.nextval,'cmg123','1234','최민기','최밍키','951121','010-6211-7619','tmd814@naver.com','경기도부천시'
);
commit;

-------------------------------------------------------------------------------------member--------------

-- pb_table--------------------------------------------------------------------------------

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
main_content          VARCHAR2(1000) -- 메인 소개
--CONSTRAINT FK_PrivateBanker_user_id FOREIGN KEY(user_id) REFERENCES Member(user_id)
);

-- 채권 분야 랩 어카운트 주식 분야 펀드 분야 예금 분야

--친절한,공감하는,예약시간준수,유쾌한,해결사,명쾌한,세심한,쉽고친절한,든든한

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser' ,'1234','김하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '강서지점' , '채권 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#든든한 #믿음직한 #예약시간준수' ,453211
        
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser2' ,'1234','윤하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '부천지점' , '랩 어카운트' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#친절한 #공감하는 #예약시간준수' ,453212
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser3' ,'1234','최하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '영등포지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#유쾌한 #해결사 #명쾌한' ,453213
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser4' ,'1234','유하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '상동지점' , '펀드 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#섬세한 #쉽고친절한 #든든한' ,453214
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser5' ,'1234','공하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '부개지점' , '예금 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#든든한 #쉽고친절한 #예약시간준수' ,453215
);

---5개씩 카운트-----------------------------------------------------------------------------------------------------------------------

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser6' ,'1234','김하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '강서지점' , '채권 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#든든한 #믿음직한 #예약시간준수' ,453216
        
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuse7' ,'1234','윤하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '부천지점' , '랩 어카운트' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#친절한 #공감하는 #예약시간준수' ,453217
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser8' ,'1234','최하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '영등포지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#유쾌한 #해결사 #명쾌한' ,453218
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuse9' ,'1234','유하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '상동지점' , '펀드 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#섬세한 #쉽고친절한 #든든한' ,453219
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser10' ,'1234','공하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '부개지점' , '예금 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#든든한 #쉽고친절한 #예약시간준수' ,453220
);
---5개씩 카운트-----------------------------------------------------------------------------------------------------------------------

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser11' ,'1234','김하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '강서지점' , '채권 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#든든한 #믿음직한 #예약시간준수' ,453221
        
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser12' ,'1234','윤하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '부천지점' , '랩 어카운트' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#친절한 #공감하는 #예약시간준수' ,453222
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser13' ,'1234','최하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '영등포지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#유쾌한 #해결사 #명쾌한' ,453223
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser14' ,'1234','유하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '상동지점' , '펀드 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#섬세한 #쉽고친절한 #든든한' ,453224
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser15' ,'1234','공하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '부개지점' , '예금 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#든든한 #쉽고친절한 #예약시간준수' ,453225
);

---5개씩 카운트-----------------------------------------------------------------------------------------------------------------------
--친절한,공감하는,예약시간준수,유쾌한,해결사,명쾌한,세심한,쉽고친절한,든든한

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser16' ,'1234','최하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '강서지점' , '채권 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#든든한 #유쾌한 #예약시간준수' ,453226
        
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser17' ,'1234','박하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '부천지점' , '랩 어카운트' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#친절한 #든든한 #예약시간준수' ,453227
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser18' ,'1234','이하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '영등포지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#유쾌한 #해결사 #명쾌한' ,453228
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser19' ,'1234','홍하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '상동지점' , '펀드 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#섬세한 #쉽고친절한 #든든한' ,453229
        
);insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'pbuser20' ,'1234','해하나', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '부개지점' , '예금 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#든든한 #쉽고친절한 #예약시간준수' ,453230
);


commit;
select * from private_banker;

----------------------------------------------------------------pb_table-------------------

--------pb_scheduler-----------------------------------------------------------------------------------------------------
-- 1 : 10~11 2: 11~12 3:13~14 4:14~15  5 :15~ 16 6: 16~17
insert into pb_scheduler(pb_scheduler_id, title, pb_name, pb_branch_name, impossible)
        values(pb_scheduler_seq.nextval, '오프라인 상담', '김피비', '강서지점', '2');


insert into pb_scheduler(pb_scheduler_id, title, pb_name, pb_branch_name, impossible)
        values(pb_scheduler_seq.nextval, '오프라인 상담', '김피비', '강서지점', '5');
        
insert into pb_scheduler(pb_scheduler_id, title, pb_name, pb_branch_name, impossible)
        values(pb_scheduler_seq.nextval, '오프라인 상담', '김피비', '강서지점', '3');
        
commit;

-- 특정 날짜 상담가능한 pb 조
select s.impossible,  p.pb_name,p.branch_name, p.main_field
        from private_banker p ,
             (SELECT pb_name, LISTAGG(impossible,',') WITHIN GROUP (ORDER BY impossible) as impossible , start_date
              FROM pb_scheduler
              GROUP BY start_date, pb_name
              ORDER BY impossible) s
        where p.pb_name = s.pb_name and s.start_date = '2021-09-20';
                
--------pb_scheduler-----------------------------------------------------------------------------------------------------

--------assets_info-----------------------------------------------------------------------------------------------------

insert into assets_info(client_id, assets_info_id, deposit, fund, wrap_account, stock, bond)
    values('test', assets_info_seq.nextval, 2000000, 1500000, 5000000, 2000000, 500000);
commit;



SELECT
-- 			title,to_char(start_date, 'yyyy:mm:dd') start_date,
-- 			to_char(end_date,'yyyy:mm:dd') end_date ,memo
		   title,start_date,end_date ,memo
		FROM
			pb_scheduler
		WHERE pb_Name = '김피비' and pb_branch_name = '강서지점';



--------assets_info-----------------------------------------------------------------------------------------------------


--------Financial_Products-----------------------------------------------------------------------------------------------------
-----상품등록 완료-----------------------------------------------상품등록 완료------------------------------------------

--매우높은 위험 10개

insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432870' , Financial_Products_seq.nextval, '하나코스닥벤처기업공모주증권투자신탁C-E' , '펀드' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432871' , Financial_Products_seq.nextval, '하나UBS월지급PIMCO글로벌인컴혼합자산자투자신탁' , '펀드' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432872' , Financial_Products_seq.nextval, '하나UBS코스닥벤처기업&공모주증권투자신탁(주식혼합-파생형)C-E' , '펀드' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432873' , Financial_Products_seq.nextval, '하나UBSPIMCO글로벌인컴혼합자산자투자신탁(H)[재간]AE' , '펀드' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432874' , Financial_Products_seq.nextval, '하나UBSPIMCO글로벌인컴혼합자산자투자신탁(H)[재간]C-PE' , '펀드' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432875' , Financial_Products_seq.nextval, '하나UBS스마트알파EMP분기지급형[채권혼합-재간접형]A-E' , '펀드' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432876' , Financial_Products_seq.nextval, '하나UBS스마트알파EMP분기지급형[채권혼합-재간접형]C-E' , '펀드' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432877' , Financial_Products_seq.nextval, '하나UBS파워e단기채증권자투자신탁(채권)A-e' , '펀드' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432878' , Financial_Products_seq.nextval, '하나UBS 신종MMF(S-26호)C-PE' , '펀드' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432879' , Financial_Products_seq.nextval, '블랙록유로시장펀드(A2-EUR)' , '펀드' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432880' , Financial_Products_seq.nextval, '미래에셋로저스농산물지수특별자산(상품-파생형)B-e' , '펀드' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432881' , Financial_Products_seq.nextval, '하나UBS코스닥벤처기업&공모주증권투자신탁(주식혼합-파생형)A-E' , '펀드' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432882' , Financial_Products_seq.nextval, '미래에셋전략배분TDF2045년혼합자산자투자신탁C-PE' , '펀드' , '높은 위험','약관입니당~');
    
commit;
    select * from FINANCIAL_PRODUCTS;
    
    
 --채권10개   --------------------------------------------------------------------------------------------------------------------
 
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('112870' , Financial_Products_seq.nextval, '마이다스단기국공채공모주증권투자신탁제1호(채권혼합)C' , '채권' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('128741' , Financial_Products_seq.nextval, '삼성달러표시단기채권증권자투자신탁(USD)[채권]Ae' , '채권' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('132872' , Financial_Products_seq.nextval, 'KTB공모주10증권투자신탁(채권혼합)Ae' , '채권' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('142873' , Financial_Products_seq.nextval, '한국투자TIF알아서평생소득월지급증권자(채권혼합-재간접형)A-e' , '채권' , '낮은 위험','약관입니당~');
 insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('152870' , Financial_Products_seq.nextval, '트러스톤공모주알파증권투자신탁(채권혼합)Cp-E' , '채권' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('162871' , Financial_Products_seq.nextval, '삼성달러표시단기채권증권자투자신탁(USD)[채권]Ae' , '채권' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('172872' , Financial_Products_seq.nextval, 'KTB공모주10증권투자신탁(채권혼합)Ae' , '채권' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('182873' , Financial_Products_seq.nextval, '한국투자TIF알아서평생소득월지급증권자(채권혼합-재간접형)A-e' , '채권' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('192870' , Financial_Products_seq.nextval, 'AB글로벌고수익증권투자신탁(채권-재간접형)Ce-P' , '채권' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('122671' , Financial_Products_seq.nextval, '흥국멀티플레이30공모주증권자투자신탁[채권혼합]C-e' , '채권' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('112572' , Financial_Products_seq.nextval, 'KTB공모주10증권투자신탁(채권혼합)Ae' , '채권' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('122473' , Financial_Products_seq.nextval, '한국투자TIF알아서평생소득월지급증권자(채권혼합-재간접형)A-e' , '채권' , '보통 위험','약관입니당~');
commit;
    select * from FINANCIAL_PRODUCTS;
    
    
 --주식 상품10개   --------------------------------------------------------------------------------------------------------------------
 
 insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232876' , Financial_Products_seq.nextval, '하나UBS스마트알파EMP분기지급형[채권혼합-재간접형]C-E' , '주식' , '다소 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232877' , Financial_Products_seq.nextval, '하나UBS파워e단기채증권자투자신탁(채권)A-e' , '주식' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232878' , Financial_Products_seq.nextval, '하나UBS 신종MMF(S-26호)C-PE' , '주식' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232879' , Financial_Products_seq.nextval, '블랙록유로시장펀드(A2-EUR)' , '주식' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232880' , Financial_Products_seq.nextval, '미래에셋로저스농산물지수특별자산(상품-파생형)B-e' , '주식' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232881' , Financial_Products_seq.nextval, '하나UBS코스닥벤처기업&공모주증권투자신탁(주식혼합-파생형)A-E' , '주식' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232882' , Financial_Products_seq.nextval, '미래에셋전략배분TDF2045년혼합자산자투자신탁C-PE' , '주식' , '높은 위험','약관입니당~');   
    
 insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232870' , Financial_Products_seq.nextval, '하나코스닥벤처기업공모주증권투자신탁C-E' , '주식' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232871' , Financial_Products_seq.nextval, '하나UBS월지급PIMCO글로벌인컴혼합자산자투자신탁' , '주식' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232872' , Financial_Products_seq.nextval, '하나UBS코스닥벤처기업&공모주증권투자신탁(주식혼합-파생형)C-E' , '주식' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232873' , Financial_Products_seq.nextval, '하나UBSPIMCO글로벌인컴혼합자산자투자신탁(H)[재간]AE' , '주식' , '매우 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232874' , Financial_Products_seq.nextval, '하나UBSPIMCO글로벌인컴혼합자산자투자신탁(H)[재간]C-PE' , '주식' , '다소 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232875' , Financial_Products_seq.nextval, '하나UBS스마트알파EMP분기지급형[채권혼합-재간접형]A-E' , '주식' , '다소 높은 위험','약관입니당~');
 --주식 상품10개   --------------------------------------------------------------------------------------------------------------------


 --예금 상품10개   --------------------------------------------------------------------------------------------------------------------

     insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332876' , Financial_Products_seq.nextval, '언제나 청춘 정기예금' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332877' , Financial_Products_seq.nextval, '하나 더예금' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332878' , Financial_Products_seq.nextval, '하나 원큐 정기예금' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332879' , Financial_Products_seq.nextval, 'e-플러스 정기예금' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332880' , Financial_Products_seq.nextval, '주거래 정기예금' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332881' , Financial_Products_seq.nextval, '행복knowhow 연금예금' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332882' , Financial_Products_seq.nextval, '3·6·9 정기예금' , '예금' , '낮은 위험','약관입니당~');   
    
 insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332870' , Financial_Products_seq.nextval, '고단위 플러스 (금리연동형)' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332871' , Financial_Products_seq.nextval, '고단위 플러스 (금리확정형)' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332872' , Financial_Products_seq.nextval, '정기예금' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332873' , Financial_Products_seq.nextval, '양도성 예금증서(CD)' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332874' , Financial_Products_seq.nextval, '표지어음' , '예금' , '낮은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332875' , Financial_Products_seq.nextval, '1년 연동형 정기예금' , '예금' , '낮은 위험','약관입니당~');
    
    commit;
    
 --랩 상품10개   --------------------------------------------------------------------------------------------------------------------

     insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532876' , Financial_Products_seq.nextval, '하나 자문형랩' , '랩 어카운트' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532877' , Financial_Products_seq.nextval, '하나 ETF주식랩' , '랩 어카운트' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532878' , Financial_Products_seq.nextval, '하나 중국 신성장1등주 랩' , '랩 어카운트' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532879' , Financial_Products_seq.nextval, '하나 글로벌알파랩(자문형)' , '랩 어카운트' , '보통 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532880' , Financial_Products_seq.nextval, '하나 고배당금융테크랩 V2' , '랩 어카운트' , '다소 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532881' , Financial_Products_seq.nextval, '하나 IN&OUT ETF테크랩 V6' , '랩 어카운트' , '다소 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532882' , Financial_Products_seq.nextval, '하나 MP10플러스랩' , '랩 어카운트' , '다소 높은 위험','약관입니당~');   
    
 insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532870' , Financial_Products_seq.nextval, '하나 핵심성장주랩' , '랩 어카운트' , '다소 높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532871' , Financial_Products_seq.nextval, '하나 선진글로벌 Leaders & ETF랩' , '랩 어카운트' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532872' , Financial_Products_seq.nextval, '하나 천하통일 1등주 랩' , '랩 어카운트' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532873' , Financial_Products_seq.nextval, '하나 미국퀄리티랩(자문형)' , '랩 어카운트' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532874' , Financial_Products_seq.nextval, '하나 액티브 ETF 적립식랩' , '랩 어카운트' , '높은 위험','약관입니당~');
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('532875' , Financial_Products_seq.nextval, '하나 글로벌고배당1등주랩' , '랩 어카운트' , '높은 위험','약관입니당~');
    
    commit;    
select * from financial_products; 
-----상품등록 완료-----------------------------------------------상품등록 완료------------------------------------------

select p.pb_name , p.pb_rank, p.pb_phone, p.pb_email, p.branch_name, p.tag_name , p.main_field
             , p.main_content, p.intro_content , p.code_num
        from private_banker p , favorite_list f
        where p.code_num = f.pb_code_num and f.client_name = '윤승원' and p.code_num ='123123' ;

--------Financial_Products-----------------------------------------------------------------------------------------------------


--------consulting_history-----------------------------------------------------------------------------------------------------


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


-- 손님 기준만들기 
insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num , username , cslt_time )
    values('user' , '랩 상품 상담' , '상담완료' , '453111' , '윤하나' , '부천지점' , consulting_history_seq.nextval , 453222 , '윤승원', to_date('2021-05-12 12:24' , 'yyyy-mm-dd HH24:MI' ) );
    
    insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num ,username , cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453112' , '윤하나' , '부천지점' , consulting_history_seq.nextval , 453222, '윤승원', to_date('2021-03-24 13:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num,username, cslt_time)
    values('user' , '주식 상품 상담' , '상담완료' , '453113' , '윤하나' , '부천지점' , consulting_history_seq.nextval , 453222, '윤승원', to_date('2021-02-15 11:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num , username, cslt_time) 
    values('user' , '펀드 상품 상담' , '상담완료' , '453114' , '윤하나' , '부천지점' , consulting_history_seq.nextval , 453222 ,'윤승원' , to_date('2021-09-23 13:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 조율 상담' , '상담완료' , '453115' , '최하나' , '영등포지점' , consulting_history_seq.nextval ,453213,'윤승원', to_date('2021-08-24 10:24' , 'yyyy-mm-dd HH24:MI' ));
    
    
insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453116' , '최하나' , '영등포지점' , consulting_history_seq.nextval,453213,'윤승원', to_date('2021-07-26 13:12' , 'yyyy-mm-dd HH24:MI' ));
    
    insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '채권 상품 상담' , '상담완료' , '453117' , '윤하나' , '부천지점' , consulting_history_seq.nextval, 453222,'윤승원', to_date('2021-02-21 15:32' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453118' , '최하나' , '영등포지점' , consulting_history_seq.nextval,453213,'윤승원', to_date('2020-03-23 15:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '예금 상품 상담' , '상담완료' , '453119' , '윤하나' , '부천지점' , consulting_history_seq.nextval, 453222,'윤승원', to_date('2021-08-15 15:53' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '펀 상품 상담' , '상담완료' , '453120' , '윤하나' , '부천지점' , consulting_history_seq.nextval, 453222,'윤승원', to_date('2021-02-21 15:32' , 'yyyy-mm-dd HH24:MI' ));
    
commit;

SELECT * FROM consulting_history;


-- PB 기준만들기 


insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num , username , cslt_time )
    values('user' , '랩 상품 상담' , '상담완료' , '453121' , '김하나' , '강서지점' , consulting_history_seq.nextval , 453222 , '윤승원', to_date('2021-05-12 12:24' , 'yyyy-mm-dd HH24:MI' ) );
    
    insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num ,username , cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453122' , '김하나' , '강서지점' , consulting_history_seq.nextval , 453222, '정현석', to_date('2021-03-24 13:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num,username, cslt_time)
    values('user' , '주식 상품 상담' , '상담완료' , '453123' , '김하나' , '강서지점' , consulting_history_seq.nextval , 453222, '황준호', to_date('2021-02-15 11:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num , username, cslt_time) 
    values('user' , '펀드 상품 상담' , '상담완료' , '453124' , '김하나' , '강서지점' , consulting_history_seq.nextval , 453222 ,'구본성' , to_date('2021-09-23 13:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 조율 상담' , '상담완료' , '453125' , '김하나' , '강서지점' , consulting_history_seq.nextval ,453222,'윤승원', to_date('2021-08-24 10:24' , 'yyyy-mm-dd HH24:MI' ));
    
    
insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453126' , '김하나' , '강서지점' , consulting_history_seq.nextval,453222,'안재훈', to_date('2021-07-26 13:12' , 'yyyy-mm-dd HH24:MI' ));
    
    insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '채권 상품 상담' , '상담완료' , '453127' , '김하나' , '강서지점' , consulting_history_seq.nextval, 453222,'안재훈', to_date('2021-02-21 15:32' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453128' , '김하나' , '강서지점' , consulting_history_seq.nextval,453222,'조세진', to_date('2020-03-23 15:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '예금 상품 상담' , '상담완료' , '453129' , '김하나' , '강서지점' , consulting_history_seq.nextval, 453222,'조세진', to_date('2021-08-15 15:53' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '펀 상품 상담' , '상담완료' , '453130' , '김하나' , '강서지점' , consulting_history_seq.nextval, 453222,'한주희', to_date('2021-02-21 15:32' , 'yyyy-mm-dd HH24:MI' ));
    
insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num , username , cslt_time )
    values('user' , '랩 상품 상담' , '상담완료' , '453131' , '김하나' , '강서지점' , consulting_history_seq.nextval , 453222 , '한주희', to_date('2021-05-12 12:24' , 'yyyy-mm-dd HH24:MI' ) );
    
    insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num ,username , cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453132' , '김하나' , '강서지점' , consulting_history_seq.nextval , 453222, '윤정환', to_date('2021-03-24 13:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num,username, cslt_time)
    values('user' , '주식 상품 상담' , '상담완료' , '453133' , '김하나' , '강서지점' , consulting_history_seq.nextval , 453222, '윤정환', to_date('2021-02-15 11:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id , pb_code_num , username, cslt_time) 
    values('user' , '펀드 상품 상담' , '상담완료' , '453134' , '김하나' , '강서지점' , consulting_history_seq.nextval , 453222 ,'윤정환' , to_date('2021-09-23 13:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 조율 상담' , '상담완료' , '453135' , '김하나' , '강서지점' , consulting_history_seq.nextval ,453222,'김충만', to_date('2021-08-24 10:24' , 'yyyy-mm-dd HH24:MI' ));
    
insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453136' , '김하나' , '강서지점' , consulting_history_seq.nextval,453222,'김충만', to_date('2021-07-26 13:12' , 'yyyy-mm-dd HH24:MI' ));
    
    insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '채권 상품 상담' , '상담완료' , '453137' , '김하나' , '강서지점' , consulting_history_seq.nextval, 453222,'김충만', to_date('2021-02-21 15:32' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '자산 배분 상담' , '상담완료' , '453138' , '김하나' , '강서지점' , consulting_history_seq.nextval,453222,'김충만', to_date('2020-03-23 15:24' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '예금 상품 상담' , '상담완료' , '453139' , '김하나' , '강서지점' , consulting_history_seq.nextval, 453222,'정해명', to_date('2021-08-15 15:53' , 'yyyy-mm-dd HH24:MI' ));

insert into consulting_history(client_id , cslt_title , cslt_comment, room_number , pb_name, branch_name , consulting_history_id, pb_code_num , username, cslt_time)
    values('user' , '펀 상품 상담' , '상담완료' , '453140' , '김하나' , '강서지점' , consulting_history_seq.nextval, 453222,'정해명', to_date('2021-02-21 15:32' , 'yyyy-mm-dd HH24:MI' ));    
    
    
    
commit;




--------consulting_history-----------------------------------------------------------------------------------------------------


--------inquiry-----------------------------------------------------------------------------------------------------



 insert into inquiry(inquiry_id, inquiry_title, inquiry_content, room_number, writer)
        values (inquiry_seq.nextval, 'ㅇㅇ', '12312', 123123, 'ㅇㅇ');
        
        desc inquiry;

--------inquiry-----------------------------------------------------------------------------------------------------


