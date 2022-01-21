-- 게시판 테이블
--bno, title, userid,regdate, thumbs, views, contents
create table olympicboard(
bno int primary key,
title varchar(150) not null,
userid varchar(18) not null,
regdate timestamp default sysdate,
thumbs int default 0,
views int default 0,
contents clob not null
);

create sequence obdseq nocache;

DECLARE
cnt number:=1;

begin
loop
insert into board(bno, title, userid, contents) VALUES (obdseq.nextval,'이것은 첫번째 글입니다!','abc123','아잉~ 냉무~ 제곧내~');
insert into board(bno, title, userid, contents) VALUES (obdseq.nextval,'이것은 두번째 글입니다!','987xyz','스프링4 이클립스 인텔리제이');
insert into board(bno, title, userid, contents) VALUES (obdseq.nextval,'이것은 세번째 글입니다!','abcxyz','JSP EL JSTL Oracle');

exit when cnt >1110;
cnt := cnt+1;
end loop;
end;

select count(bno) from olympicboard;

--게시판 페이징

--ex) 한페이지당 10개의 게시물 출력
--limit startpage, count (my sql/mariadb)
--select * from board limit 0, 10   --1page
--select * from board limit 10, 10  --2page
--select * from board limit 20, 10  --3page
--select * from board limit ?, 10   --npage
--startpage = (cpage-1) * 10

--오라클에서의 페이징 처리
--top N query(rownum)
--ex)가장 최근에 입사한 사원 10명 조회
--가장 최근에 입사한 사원 조회
select * from EMPLOYEES order by HIRE_DATE desc;

select * from(
select * from EMPLOYEES order by HIRE_DATE desc
)where rownum <= 10;

select seq,EMPLOYEE_ID, FIRST_NAME,HIRE_DATE from(
select rownum as seq,EMPLOYEE_ID, FIRST_NAME,HIRE_DATE from(
select * from EMPLOYEES order by HIRE_DATE desc
)
)where seq >=1 and seq <=10;

--row limit 절 (오라클12c부터 지원)
--offset m rows fetch first n rows only
select * from EMPLOYEES order by HIRE_DATE desc
offset 0 rows fetch first 10 rows only;

--ex)가장 최근에 입사한 사원 11번째 ~ 20번째 사원 조회
select seq,EMPLOYEE_ID, FIRST_NAME,HIRE_DATE from(
select rownum as seq,EMPLOYEE_ID, FIRST_NAME,HIRE_DATE from(
select * from EMPLOYEES order by HIRE_DATE desc
)
)where seq >=11 and seq <=20;


select * from EMPLOYEES order by HIRE_DATE desc
offset 10 rows fetch first 20 rows only;