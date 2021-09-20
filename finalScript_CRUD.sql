

-- member

insert into Client(Client_id,user_id,password,username,nickname,birth,phone,email,address)
values(member_seq.nextval,'test','1234','윤승원','윤또깡','951126','010-6211-7619','tmd814@naver.com','경기도부천시'
);
insert into Client(Client_id,user_id,password,username,nickname,birth,phone,email,address)
values(Client_seq.nextval,'test2','1234','최민기','최밍키','951121','010-6211-7619','tmd814@naver.com','경기도부천시'
);
commit;

-------------------------------------------------------------------------------------member--------------

-- pb_table--------------------------------------------------------------------------------


insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , tag_name , code_num)
    values(Private_banker_seq.nextval,'test3' ,'1234','김피비', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '강서지점' , '채권 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#친절한  #유쾌한  #웃음이많은  #신속해결사' ,123123
        
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test4' ,'1234','윤피비', '과장' , 
    '010-6211-1211', 'tmd714@naver.com', '부천지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' ,121212
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content, tag_name , code_num)
    values(Private_banker_seq.nextval,'test5' ,'1234','박피비', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '광명지점' , '예금 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#진중한  #믿음직한' ,212121

);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test6' ,'1234','최피비', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '랩 어카운트' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321321
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test7' ,'1234','윤승원', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321322
);
insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test8' ,'1234','김상원', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '펀드 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321323
);
insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test9' ,'1234','최승원', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '펀드 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321324
);
insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test10' ,'1234','박승원', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '펀드' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321325
);
insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test11' ,'1234','구승원', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '랩 어카운트' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321326
);
insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test12' ,'1234','최피디', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321327
);
insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test13' ,'1234','최미비', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321328
);
insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test14' ,'1234','윤문식', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '주식 분야' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321329
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

insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432873' , Financial_Products_seq.nextval, '금융상품1' , '펀드' , '매우 높은 위험','약관입니당~');

insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432871' , Financial_Products_seq.nextval, '금융상품1' , '펀드' , '매우 높은 위험','약관입니당~');

insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432872' , Financial_Products_seq.nextval, '금융상품2' , '펀드' , '높은 위험','약관입니당~');

insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432874' , Financial_Products_seq.nextval, '금융상품3' , '펀드' , '다소 높은 위험','약관입니당~');

insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432875' , Financial_Products_seq.nextval, '금융상품4' , '펀드' , '보통 위험','약관입니당~');

insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432876' , Financial_Products_seq.nextval, '금융상품5' , '펀드' , '보통 위험','약관입니당~');
    
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432877' , Financial_Products_seq.nextval, '금융상품6' , '예금' , '낮은 위험','약관입니당~');

insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('432878' , Financial_Products_seq.nextval, '금융상품7' , '예금' , '낮은 위험','약관입니당~');
    
insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('132879' , Financial_Products_seq.nextval, '금융상품12' , '채권' , '보통 위험','약관입니당~');
    
    insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('232879' , Financial_Products_seq.nextval, '금융상품13' , '채권' , '낮은 위험','약관입니당~');
    
    insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('332879' , Financial_Products_seq.nextval, '금융상품14' , '랩어카운트' , '보통 위험','약관입니당~');
    
    insert into financial_products(FINANCIAL_CODE,FINANCIAL_PRODUCTS_ID, product_name,product_type,product_grade,product_terms)
    values('422879' , Financial_Products_seq.nextval, '금융상품15' , '예금' , '낮은 위험','약관입니당~');
    
    
COMMIT;

    

select p.pb_name , p.pb_rank, p.pb_phone, p.pb_email, p.branch_name, p.tag_name , p.main_field
             , p.main_content, p.intro_content , p.code_num
        from private_banker p , favorite_list f
        where p.code_num = f.pb_code_num and f.client_name = '윤승원' and p.code_num ='123123' ;



