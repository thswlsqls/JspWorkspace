create table members(
id varchar2(20) primary key,
pwd varchar2(20),
name varchar2(20),
addr varchar2(20),
tel varchar2(20)
);
insert into members values('aaa','aaa','홍길동a','산골짜기a','111');
insert into members values('bbb','bbb','홍길동b','산골짜기b','111');
insert into members values('ccc','ccc','홍길동c','산골짜기c','111');
commit;