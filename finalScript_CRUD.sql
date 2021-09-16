

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
    '010-6211-1211', 'tmd714@naver.com', '강서지점' , '채권 설계' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#친절한  #유쾌한  #웃음이많은  #신속해결사' ,123123
        
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test4' ,'1234','윤피비', '과장' , 
    '010-6211-1211', 'tmd714@naver.com', '부천지점' , '주식 설계' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' ,121212
);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content, tag_name , code_num)
    values(Private_banker_seq.nextval,'test5' ,'1234','박피비', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '광명지점' , '부동산 설계' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' 
        , '#진중한  #믿음직한' ,212121

);

insert into private_banker(Private_Banker_id,pb_id ,pb_password,pb_name,
        pb_rank, pb_phone, pb_email, branch_name, main_field , intro_content , code_num)
    values(Private_banker_seq.nextval,'test6' ,'1234','최피비', '대리' , 
    '010-6211-1211', 'tmd714@naver.com', '금천구지점' , '세금 설계' ,
        '안녕하십니까? 하나금융투자 강서지점 김피비입니다. 10년의 채권 투자 경력을 기반으로 손님에게 가치를 전달해드리는 PB가 되겠습니다.' , 321321
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

select s.impossible,  p.pb_name, p.pb_rank, p.pb_phone, p.pb_email, p.branch_name, p.tag_name, p.main_field, p.main_content, p.intro_content
from private_banker p , 
(SELECT pb_name, LISTAGG(impossible,',') WITHIN GROUP (ORDER BY impossible) as impossible
FROM pb_scheduler
GROUP BY pb_name
ORDER BY impossible) s
where p.pb_name = s.pb_name;



--------pb_scheduler-----------------------------------------------------------------------------------------------------

--------assets_info-----------------------------------------------------------------------------------------------------

insert into assets_info(client_id, assets_info_id, deposit, fund, wrap_account, stock, bond)
    values('test', assets_info_seq.nextval, 2000000, 1500000, 5000000, 2000000, 500000);
commit;

