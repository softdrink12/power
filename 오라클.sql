-- 한줄 주석
/* 범위 주석*/
select 
    *  -- * : 모든 컬럼
from 
    emp;
-- sql developer 자동 정렬 단축키 : ctrl + f7    
select 
    empno, ename, deptno    -- 조회하고 싶은 컬럼 명들 적음
from 
    emp;    
    
select * from dept;
select * from salgrade;

select deptno from emp;
-- 한 줄 복사 : ctrl + shift + d 
-- distinct : select에서 중복되는 자료를 제거해준다 
select distinct deptno from emp;
select distinct job from emp;

-- column이 여러개인 경우 column들의 조합이 중복되는 걸 제거한다
-- 아래 코드는 distinct가 deptno와 job을 합쳤을 때 중복되는 것들을 지워줌
select distinct deptno, job from emp;

-- null과 연산하면 무조건 null이 나온다 
select ename, sal, sal*12+comm, comm from emp;

-- column명에 별칭 사용
-- 별칭 안에 띄어쓰기가 있는 경우 "" 생략불가 
-- 가능하면 띄어쓰기보다 _를 넣기 
-- 별칭 앞에붙는 as와 ""는 생략이 가능하다 
select ename, sal, sal*12+comm as "new_sal", comm from emp;

-- order by : 해당 column으로 정렬
-- 오름차순 : asc (생략 가능) 
-- 내림차순 : desc
select * from emp
order by sal;

select * from emp
order by comm;

select * from emp
order by sal desc;

-- order by 첫번째거로 정렬하고
-- 그 중에 같은 게 있다면 다음거로 정렬 
select * from emp
order by deptno asc, sal desc;

select distinct job from emp
order by job desc;

-- where 연산자 
-- where : select문으로 데이터를 조회할 때
-- 특정 조건을 기준으로 원하는 행을 출력하는 데 사용 
select * from emp
where deptno = 30;
-- deptno의 값이 30인 것들만 조회 

select * from emp
where empno = 7782;
-- empno의 값이 7782인 것들만 조회

select * from emp
where sal >= 2000
order by sal desc;
-- sal의 값이 2000과 크거나 같은 값만 조회 

select * from emp
where ename = 'KING';
-- ename KING인 값을 조회 

-- and, or 연산자 
select * from emp
where deptno = 30
and job = 'SALESMAN';
-- deptno의 값이 30인 것들과 job의 값이 SALESMAN인 것들을 조회

select * from emp
where job = 'CLERK' and deptno = 30;
-- job의 값이 CLERK인 것들과 deptno의 값이 30인 것들을 조회

-- and는 논리곱(or보다 순위가 높다)
-- or는 논리합(and보다 순위가 낮다)
select * from emp
where job = 'CLERK' and deptno = 30 or deptno = 20;

select * from emp
where job = 'CLERK' and (deptno = 30 or deptno = 20);

select * from emp
where sal >= 2000 and sal < 3000;
-- sal의 값 중 2000이상이면서 3000미만인 값을 조회

-- 비교 연산자 
select * from emp
-- where sal != 3000;
-- where sal ^= 3000;
where sal <> 3000;
-- 위에 나오는 모든 등가 비교 연산자를 사용할 수 있다 

-- NOT 연산자 
select * from emp
where not(sal >= 2000 and sal < 3000);
-- not 연산자를 사용해서 2000미만인 값과 3000이상인 값을 조회

-- in 연산자
-- or, and를 중복해서 써야하는 경우 in 연산자를 사용해서 or, and를 생략할 수 있다 
select * from emp 
where job in ('MANAGER', 'SALESMAN', 'CLERK')
order by job;
-- in 연산자를 사용해서 'MANAGER', 'SALESMAN', 'CLERK' 값들만 조회

select * from emp 
where job not in ('MANAGER', 'SALESMAN', 'CLERK')
order by job;
-- not 연산자와 in 연산자를 사용해서 'MANAGER', 'SALESMAN', 'CLERK' 값들의 반대인
-- 'SCOTT', 'KING', 'FORD'를 조회

-- between A and B 연산자
-- 열 이름 between '최솟값' and '최댓값';
select * from emp
where sal between 2000 and 3000;
-- between 연산자를 사용해서 2000 이상과 3000 이하를 조회
-- where sal >= 2000 and sal <= 3000 코드와 같다

-- * LIKE 연산자
-- %는 어떤거든 관계 없음
select * from emp
where ename like 'S%';
-- ename like 'S%' 조건식은 ename의 값 중 대문자 s로 시작하는 데이터를 조회 

select * from emp
where ename like 'A%';
-- ename like 'S%' 조건식은 ename의 값 중 대문자 A로 시작하는 데이터를 조회

select * from emp
where job like 'C%';
-- job like 'C%' 조건식은 job의 값 중 대문자 c로 시작하는 데이터를 조회 

-- 언더바(_)는 딱 한글자인데 어떤 글자던 관계 없음 
select * from emp
where ename like '_L%';
-- ename like '_L%' 조건식은 ename의 값 중 _L 두번째 값이 L인 데이터를 조회
-- 앞에 오는 언더바_의 개수만큼 건너 뜀

select * from emp
where ename like '%AM%';
-- 어떤 글자가 포함된 데이터를 조회하고 싶으면 퍼센트(%%)를 두 개 붙인다

select * from emp
where comm <= 400;

--in null 연산자
select * from emp
where comm is null;
-- is null 연산자를 사용해서 comm의 값이 null인 데이터만 조회 

select * from emp
where comm is not null;
-- is not null 연산자를 사용해서 comm의 값이 null이 아닌 데이터를 조회

select empno, ename, sal, deptno from emp
--where deptno = 10 or deptno = 20;
where deptno in (10, 20);

-- 집합 연산자(union)
-- 서로 다른 조회 결과물을 union으로 합쳐줌
-- 단, 조회한 column의 갯수와 타입이 같아야 한다 
-- ex) empno(int), ename(str), sal(int), deptno(int)
select empno, ename, sal, deptno from emp
where deptno = 10
union
select empno, ename, sal, deptno from emp
where deptno = 20;

-- union : 중복된 자료를 제거해줌 
select empno, ename, sal, deptno from emp
where deptno = 10
union
select empno, ename, sal, deptno from emp
where deptno = 10;

-- union all : 중복에 관계 없이 합쳐줌 
select empno, ename, sal, deptno from emp
where deptno = 10
union all
select empno, ename, sal, deptno from emp
where deptno = 10;

-- 문제 1
select * from emp
--where ename like '____S%';
where ename like '%s';
-- like 절에서 %로 시작하면 ~로 끝나는 걸 찾음 

-- 문제 2
select empno, ename, job, sal, deptno from emp
where deptno = 30 and job = 'SALESMAN';

-- 문제 3
select empno, ename, job, sal, deptno from emp
where sal > 2000 and deptno in(20, 30)
union 
select empno, ename, job, sal, deptno from emp
where sal > 2000 and deptno in(20, 30);

-- 문제 3
select empno, ename, job, sal, deptno from emp
where deptno in (20, 30) and sal > 2000;

-- 문제 4
select * from emp
where not (sal >= 2000 and sal <= 3000);

-- 문제 5
select ename, empno, sal, deptno from emp
where ename like '%E%' and deptno = 30 and not (sal > 1000 and sal < 2000); 

-- 문제 6
select * from emp 
where comm is null and mgr is not null 
and not ename like '_L%' and job in ('MANAGER', 'CLERK');

-- upper, lower, initcap 함수
-- upper : 괄호 안 문자 데이터를 모두 대문자로 변환
-- lower : 괄호 안 문자 데이터를 모두 소문자로 변환
-- initcap : 괄호 안 문자 데이터 중 첫 글자만 대문자로 변환
select ename, upper(ename), lower(ename), initcap(ename) from emp;

-- upper, lower는 대소문자 구분없이 like 할 때 좋다 
select * from emp
where lower(ename) like lower('%Mi%');

-- length 함수
-- length : 문자 갯수
select ename, length(ename) from emp;

-- 사원 이름의 길이가 5 이상인 행 출력
select * from emp
where length(ename) >= 5;

-- dual : 임시 테이블
select length('한'), lengthb('한') from dual;

-- 문자열의 일부를 추출하는 substr 함수
-- substr : 대상이 되는 문자, 시작위치, 가져올 갯수
-- 가져올 갯수를 안쓰거나 너무 크면 끝까지 출력
-- 뒤에서부터 셀 때는 - 사용
select job, substr(job, 1, 2),substr(job, 3, 2),substr(job, 5) 
ename,
substr(job, -3, 2),
lower( substr(job, 5, 100) )
from emp;

-- replace 함수 
select job, replace(job, 'A', '*') from emp;
-- replace 함수를 사용하여 job에 있는 대문자 A를 *표시로 바꿔줌

select job , length(job), length(job) / 2, 
substr(job, (length(job)+1) / 2, 1),
replace(job, substr(job, (length(job)+1) / 2, 1), '*')
from emp;

-- 데이터의 빈 공간을 특정 문자로 채우는 Lpad, Rpad 함수
-- lapd, rpad : (대상이 되는 문자, 전체 자릿수, 채울 문자) 순으로 작성
-- 채울 문자 생략시 공백문자 
select job, 
lpad(job, 10, '#'),
lpad(job, 4, '#')
from emp;

select job, length(job), 15 - length(job) 
from emp;

-- 두 문자열 데이터를 합치는 concat 함수 
-- 문자끼리 합치는 방법
-- 문자열 더하기
select empno || ename || '님' from emp;

-- 특정 문자를 지우는 trim
-- trim : 앞 뒤 공백 제거 
-- 글씨 사이의 공백은 제거하지 않음
select '   a b c   ', trim('   a b c   ') from dual;

-- 실습문제 1
select 
--    '210621-3123456',
--    '210621-3******',
    substr('210621-3123456', 1, 8) as "210621-3123456",
    rpad('210621-3', 14, '*'),
    rpad(substr('210621-3123456', 1, 8), length('210621-3123456'),'*')
from dual;

-- 실습문제 2
-- 사원의 이름을 앞에 두 자리만 보이게 하고 나머지는 *로 표시 
-- 쉬운 버젼 : 앞 두글자 + '***'
-- 정답의 예 : WARD -> WA**, MRTIN -> MA****
select rpad (substr(ename, 1, 2), length(ename), '*') from emp;

-- 실습문제 3
-- 앞글자 하나만 
-- WARD -> *ARD, MARTIN -> *ARTIN
select lpad (substr(ename, 2, 100 ), length(ename), '*') from emp;

-- 실습 문제 4
-- 두 번째 글씨만 *
-- WARD -> W*RD, MARTIN -> M*RTIN
select rpad (substr(ename, 1, 1 ), 2, '*') || substr(ename, 3, 100) from emp;

-- 실습문제 5
-- 가운데 글씨만 * 
--select rpad (substr(ename, 1, 2 ), 3, '*') || substr(ename, 4, 100) from emp;
select 
--    length(ename) /2 + 1,
    substr(ename, 1, length(ename) /2 - 0.5) || '*' || 
    substr(ename,length(ename) /2 + 1.5)
from emp;

-- 숫자 함수 
-- trunc : 지정된 숫자의 특정 위치에서 버림한 값을 반환
select trunc(1234.5678), 
trunc(1234.5678, 2),
trunc(1234.5678, -2),
trunc(-12.34)
from dual;

-- ceil, floor : 각각 입력된 숫자와 가까운 큰 정수, 작은 정수를 반환해줌
select ceil(3.14),
floor(3.14),
ceil(-3.14),
floor(-3.14)
from dual;

-- 날짜 데이터를 다루는 함수 
-- sysdate : 지금 오라클 pc의 시간이 나온다
-- 강사 pc는 9시간 차이 난다(영국 0시 기준, 한국 +9시)
-- 날짜 정보 중 일부만 select로 표시 됨
select sysdate, sysdate+1, sysdate-1 from dual;

-- 몇 개월 이후 날짜를 구하는 add_months 함수 
select sysdate, add_months(sysdate, 3) from dual;

-- column에 +를 적으면 모두 숫자로 변경해서 적용함
-- || <- 숫자도 문자로 적용함 

-- 날짜, 숫자 데이터를 문자 데이터로 변환 하는 to_char 함수
select to_char(sysdate+(9/24), 'yyyy"년"mm"월"dd"일" hh24"시"mi"분"ss"초"') as "현재날짜시간" from dual;

-- 문자 데이터를 날짜 데이터로 변환하는 to_date 함수 
select 
    sysdate - to_date('2024-05-07', 'yyyy-mm-dd')
from dual; 

-- nvl 함수 
-- nvl : 첫 번쨰 입력 데이터가 null이 아니면 그대로 반환하고,
-- null 이라면 두 번째 입력 데이터에 지정한 값을 반환
select comm, nvl(comm, -1), sal, sal + comm, sal + nvl(comm, 0) from emp;

select * from emp
where comm = 0 or comm is null;

select * from emp 
where nvl(comm, 0) = 0;

-- case문
-- if문과 비슷하다 
select empno, ename, comm,
    case
        when comm is null then '해당사항없음'
--        when comm = 0 then '수당없음'
--        when comm > 0 then '수당: ' || comm
        else to_char(comm)
    end as "new_comm"
from emp;

select empno, comm,
    case
        when comm is null then 0
        else 1
    end as " new_comm"
from emp;

-- 실습문제 2
select empno, ename, sal,
    trunc (sal/21.5, 2) as DAY_pay, 
    round (sal/21.5 / 8 , 1) as TIME_PAY
from emp;

-- 실습문제 3
select empno, ename, hiredate,
    to_char(add_months(next_day(hiredate, 2), 3),'yyyy-mm-dd') as "R_JOB",
    nvl(to_char(comm), 'N/A') as comm
from emp;

-- 실습문제 4
select empno, ename, mgr,
    case
        when mgr is null then '0000'
        when mgr like '75%' then '5555'
        when mgr like '76%' then '6666'
        when mgr like '77%' then '7777'
        when mgr like '78%' then '8888'
        else to_char(mgr)
        end as "CHG_MGR"
from emp;

-- 하나의 열에 출력 결과를 담는 다중행 함수 
-- count처럼 null은 제외됨
-- count는 *을 많이 씀
select sum(sal), count(sal), count(*), count(comm) from emp;

select count(*) from emp where ename like'%A%';

select max(sal), max(ename), min(hiredate), min(comm), avg(sal) from emp;

-- 부서별 급여 총합 표시 
-- deptno, sum, avg
select sum(sal), avg(sal) from emp
where deptno = 10
union all
select sum(sal), avg(sal) from emp
where deptno = 20
union all
select sum(sal), avg(sal) from emp
where deptno = 30;

-- distinct처럼 중복을 제거, 분류 해줌
-- select에는 group by한 것이나 다중행 함수(집계함수 avg, min, max, sum ...)만 올 수 있음 
select deptno, avg(sal), sum(sal), count(*) from emp
group by deptno;

select deptno, empno, sum(sal) from emp
group by deptno, empno;

select deptno, job, count(*)
from emp
group by deptno, job
order by deptno, job; 

-- having : group by에서만 사용된다
-- 집계함수를 조건으로 걸고 싶은 경우에 사용
select deptno, job, avg(sal)
from emp
group by deptno, job
--    having avg(sal) >= 2000;
--    having count(*) >= 2;
    having deptno = 20;
    
-- 실습문제 1
select deptno, trunc(avg(sal)), max(sal), min(sal), count(*) from emp
group by deptno;

-- 실습문제 2
select job, count(*) from emp
group by job 
    having count(*) >= 3;
    
-- 실습문제 3
select to_char(hiredate,'yyyy') as HIRE_YEAR, deptno, count(*) from emp
group by to_char(hiredate,'yyyy'), deptno;

-- 실습문제 4
select nvl2(to_char(comm), 'o', 'x') as "EXIST_COMM", count(*) from emp
group by nvl2(to_char(comm), 'o', 'x')
order by nvl2(to_char(comm), 'o', 'x') desc;

select * from dept;

/*5*/select job, count(*) cnt
/*1*/from emp
/*2*/where sal > 1000
/*3*/group by job 
/*4*/having count(*) >= 3
/*6*/order by cnt desc;

select *
from emp, dept
order by empno;

select 14 * 4 from dual;

-- 여러 테이블을 하나의 테이블처럼 사용하는 join
-- table 2개 이상 조회할 때 관계를 꼭 알려줘야 원하는 정보만 출력된다
-- 전체 table 수 -1개의 조건이 적당하다 
select emp.ename, dept.loc, emp.deptno
from emp, dept
where emp.deptno = dept.deptno
order by empno;

-- table 별칭 설정
-- *와 컬럼을 같이 쓰는 경우 *에 table을 지정해줘야 한다 
select ename, e.*, d.*
from emp e, dept d 
where e.deptno = d.deptno;

select * from salgrade;

select * 
from emp e, salgrade s
where e.sal >= s.losal and e.sal <= s.hisal;

select e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno;

-- using에 둘 다 같은 컬럼명이 있는 경우만 쓸 수 있다 
select *
from emp join dept using (deptno);

select * 
from emp join dept on (emp.deptno = dept.deptno);
select *
from emp e1 join emp e2 on (e1.mgr = e2.empno);

select *
from emp e1 join emp e2 on (e1.mgr = e2.empno);

-- left outer join : 왼쪽 테이블을 모두 출력하는걸 보장해준다 
select *
from emp e1 left outer join emp e2 on (e1.mgr = e2.empno);

-- quiz 1 
-- empno, ename, dname, loc 출력 : 결과 14줄
select empno, ename, dname, loc
from emp, dept
where emp.deptno = dept.deptno;

select empno, ename, dname, loc
from emp join dept using (deptno);

select empno, ename, dname, loc
from emp left outer join dept on(emp.deptno = dept.deptno);

-- quiz 2
-- 사번, 이름, 부서명, 급여등급을 출력 : 결과 14줄
select e.empno, e.ename, d.dname, s.grade 
from emp e, dept d, salgrade s
where e.deptno = d.deptno
and e.sal >= s.losal and e.sal <= s.hisal;

select e.empno, e.ename, d.dname, s.grade
from salgrade s , emp e join dept d using (deptno)
where(e.sal >= s.losal and e.sal <= s.hisal);

select e.empno, e.ename, d.dname, s.grade
from emp e 
left outer join dept d on (e.deptno = d.deptno)
left outer join salgrade s on (e.sal >= s.losal and e.sal <= s.hisal);

-- quiz 3
-- 상사보다 월급이 높은 사원의 이름, 급여, 매니저 이름, 매니저 급여 출력

select e1.ename, e1.sal, e2.ename, e2.sal
from emp e1, emp e2
where e1.mgr = e2.empno and e1.sal > e2.sal;

-- 실습문제 1
select d.deptno, d.dname, e.empno, e.ename, e.sal
from emp e, dept d
where e.sal > 2000 and e.deptno = d.deptno
order by deptno;

-- 실습문제 2
select d.deptno, d.dname, floor(avg(sal)), max(sal),min(sal),count(*) 
from emp e left outer join dept d on (e.deptno = d.deptno) 
group by d.deptno, d.dname;

-- 실습문제 3
select d.deptno, d.dname, e.empno, e.ename, e.job, e.sal
from dept d left outer join emp e on (e.deptno =d.deptno)
order by d.deptno;

-- 서브쿼리
select sal from emp where ename = 'JONES';

select * from emp 
where sal > (select sal from emp where ename = 'JONES');

-- blake보다 높은 연봉을 받는 사람들
select * from emp
where sal > (select sal from emp where ename = 'BLAKE');

-- JONES와 같은 job을 가지고 있는 사원들
select * from emp
where job = (select job from emp where ename = 'JONES');

-- 평균 급여보다 많이 받는 사람들
select * from emp 
where sal > (select avg(sal) from emp);

select * from emp 
where sal in (
    select max(sal) from emp group by deptno
);

-- from절에 사용하는 서브쿼리 
select *
from (
    select * from emp where deptno = 10
);

select rownum, emp.* 
from emp
--where rownum = 4;
-- order by가 select보다 순서가 느리기 때문에 rownum이 먼저 적용됨
order by ename;

-- order by를 적용 시키고 rownum을 적용시키는 방법
select rownum, e.* 
from (
    select * from emp order by ename
) e;

select job, count(*) from emp 
group by job
having count(*) >= 3;

select * 
from (
    select job, count(*) cnt from emp 
    group by job
)
where cnt >= 3;

-- with절
with e10 as (
    select * from emp where deptno = 10
)
select * from e10;

-- 실습문제 1
select job from emp where ename = 'ALLEN';
select job, empno, ename, sal, deptno, dname 
from emp join dept using (deptno)
where job = (select job from emp where ename = 'ALLEN')
order by sal desc;

-- 실습문제 2
select avg(sal) from emp;
select e.empno, e.ename, d.dname, e.hiredate, d.loc, e.sal, s.grade 
from emp e, salgrade s, dept d
where sal > (select floor(avg(sal)) from emp) 
and e.sal between losal and hisal 
and e.deptno = d.deptno
order by sal desc, empno;

-- 실습문제 3
select e.empno, e.ename, e.job, d.deptno, d.dname, d.loc
from emp e left outer join dept d on (e.deptno = d.deptno)
where e.deptno = 10
and job not in (select job from emp where deptno = 30);

-- 실습문제 4
select sal from emp where job = 'SALESMAN';
select e.empno, e.ename, e.sal, s.grade from emp e, salgrade s, dept d
where sal > (select max(sal) from emp where job = 'SALESMAN')
and e.sal between losal and hisal 
and e.deptno = d.deptno
order by empno;

-- 12장
select * from emp;
desc emp;

create table emp_ddl (
    empno number(4),    -- 네 자리의 숫자만 허용
    ename varchar2(10), -- 10바이트의 글자만 허용
    job varchar2(9),    -- 제한보다 적은 글씨가 적히면 글씨만큼의 공간만 차지
    mgr number(4),
    hiredate date,
    sal number(7, 2),   -- 2는 소수점 두 번째 자리까지 기록할 수 있다
    comm number(7, 2),
    deptno number(2)
);

select * from emp_ddl;
desc emp_ddl;

-- 기존 테이블 열 구조와 데이터를 복사하여 새 테이블 생성하는 방법
create table dept_ddl
as select * from dept;
select * from dept_ddl;

-- 기존 테이블 열 구조와 일부 데이터만 복사하여 새 테이블 생성하기 
create table emp_ddl_30
as select empno, ename, sal from emp
where deptno = 30;
select * from emp_ddl_30; 

-- table을 변경하는 alter
create table emp_alter
as select * from emp;
select * from emp_alter;

alter table emp_alter
add hp varchar2(20);

-- 열 이름을 변경하는 rename
alter table emp_alter
rename column hp to tel;

-- 열의 자료형을 변경하는modify
alter table emp_alter
modify empno number(5);
desc emp_alter;

-- 자료형의 크기가 커지는 건 가능하지만 줄어드는 건 불가능하다
alter table emp_alter
modify empno number(4);

-- 특정 열을 삭제할 때 사용하는 drop 
alter table emp_alter
drop column tel;
select * from emp_alter;

alter table emp_alter
drop column comm;
select * from emp_alter;

-- table 이름을 변경하는 rename
rename emp_alter to emp_rename;
select * from emp_rename;

-- truncate : 특정 테이블의 모든 데이터를 삭제함 
truncate table emp_rename;

-- drop : 테이블 삭제 
drop table emp_rename;

-- 10장
create table dept_temp
as select * from dept;
select * from dept_temp;

-- 테이블에 데이터를 추가하는 insert
-- into로 데이터를 입력할 대상 테이블과 열 입력
-- values로 입력할 데이터 지정
insert into 
dept_temp (deptno, dname, loc)
values (50, 'DATABASE', 'SEOUL');
select * from dept_temp;

-- table명 뒤에 괄호()를 생략하면 모든 column
insert into dept_temp
values (60, 'NETWORK', 'BUSAN');
select * from dept_temp;

-- table에 null 데이터 입력하는 방법
insert into dept_temp
values (70, 'WEB', null);
select * from dept_temp;

-- 홀 따옴표'' <- 이것도 null로 보이지만 그래도 null로 작성하기 
-- java에서 읽을 때 홀 따옴표''는 null로 인식하지 않기 때문에 
insert into dept_temp
values (80, 'WEB', '');
select * from dept_temp;

-- column을 생략하면 자동으로 null이 들어간다 
insert into dept_temp (deptno, loc)
values (90, 'INCHEON');
select * from dept_temp;

create table emp_temp
as select * from emp;
select * from emp_temp;

-- 테이블에 날짜 데이터 입력하기
insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (9999, '홍길동','PRESIDENT', null, '2001/01/01', 5000, 1000, 10);
select * from emp_temp;

insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (1111, '성춘향','MANAGER', 9999, '2001/01/05', 4000, null, 20);
select * from emp_temp;

insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (2111, '이순신','MANAGER', 9999, to_date('07/01/2001', 'dd/mm/yyyy'), 4000, null, 20);
select * from emp_temp;

insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (3111, '심청이','MANAGER', 9999, sysdate, 4000, null, 30);
select * from emp_temp;

-- DDL : create, alter, drop 

-- 서브쿼리를 사용하여 한 번에 여러 데이터 추가하기 
insert into emp_temp
select * from emp where deptno = 10;
select * from emp_temp;

-- table에 있는 데이터를 수정하는 update
-- update 하기전에 select로 where 조건이 정확한지 확인하고
--where를 그대로 복사해서 update에 붙여넣도록 하장!
create table dept_temp2
as select * from dept;
select * from dept_temp2;

update dept_temp2
set loc = 'SEOUL';
select * from dept_temp2;

-- 수정한 내용을 되돌리는 rollback 
rollback;
select * from dept_temp2;

-- 데이터 일부분만 수정할 때 where를 꼭 사용해야 한다 
update dept_temp2
set dname = 'DATABASE',
loc = 'SEOUL'
where deptno = 40;
select * from dept_temp2;

create table emp_temp2
as select * from emp;
select * from emp_temp2;

select * from emp_temp2
where job = 'MANAGER';

delete emp_temp2
where job = 'MANAGER';
select * from emp_temp2;

-- emp_temp에서 
-- 급여가 1000이하인 사원의 급여를 3% 인상 하시오 
select ename, sal, sal*1.03 from emp_temp2
where sal <= 1000;

update emp_temp2
set sal = sal*1.03
where sal <= 1000;

delete emp_temp2;
select * from emp_temp2;

rollback;

-- 문제 1
select ename, empno from emp;
select ename, rpad (substr(empno, 1, 2), length(empno), '*') as empno from emp
order by empno desc;

-- 문제 2
select e.empno, e.ename, d.dname, d.loc from
emp e left outer join dept d on (e.deptno = d.deptno)
order by dname desc;

select * from dict;
select * from user_tables;

select * from USER_CONSTrAINTS;

-- index 색인
-- 오름차순, 내림차순 따로 관리
create index idx_emp_sal
on emp(sal);
select * from user_indexes;

drop index idx_emp_sal;

-- 강제 힌트 
select /*+ index(idx_emp_sal) */
* from emp e
order by empno desc;

-- plan 
-- sql developer에서는 상단 세번째 아이콘 "계획설명"

create index idx_emp_empno_desc
on emp ( empno desc );

select max(empno)+1 from emp_temp2;

insert into emp_temp2 (empno, ename)
values ( (select max(empno)+1 from emp_temp2), '신입2');
select * from emp_temp2;

-- 시퀀스 sequence
create table tb_user (
    user_id number,
    user_name varchar2(30)
);
select * from tb_user;  -- tb_user라는 테이블 생성

create sequence seq_user;   -- 시퀀스 생성

select seq_user.nextval from dual;
select seq_user.currval from dual;

insert into tb_user (user_id, user_name)
values (seq_user.nextval, '유저명1');
insert into tb_user (user_id, user_name)
values (seq_user.nextval, '유저명2');

insert into tb_user (user_id, user_name)
values (seq_user.nextval, '유저명3');
select * from tb_user;

create sequence seq_test 
start with 10000    -- 시작할 숫자(기본값 : 1) , 10000부터 시작하겠다는 뜻
increment by 100;   -- 증감 숫자(기본값 : 1) , 100씩 증가한다는 뜻 

-- nextval을 한 번도 사용하지 않은 경우 currval 사용 불가 
select seq_test.currval from dual;
select seq_test.nextval from dual;

-- 14장
-- primary key, pk : 주요키, 중요키, 기본키...
-- not null + unique 조건
-- 생성과 동시에 index도 생성해줌 
-- create table에서는 primary key를 딱 하나만 지정
-- 2개 이상의 컬럼을 primary key 지정 하려면 alter 사용 
create table table_pk(
    login_id varchar2(20) primary key,
    login_pwd varchar2 (20) not null,
    tel varchar2(20)
);
SELECT * from user_constraints
where table_name = 'TABLE_PK';

select * from user_indexes;

create table table_pk2(
    login_id varchar2(20) constraint pk_table_pk2 primary key,
    login_pwd varchar2 (20) not null,
    tel varchar2(20)
);
SELECT * from user_constraints
where table_name = 'TABLE_PK2';

-- error
insert into table_pk (login_id, login_pwd, tel)
values (null, null, null);

-- error
insert into table_pk (login_id, login_pwd, tel)
values ('id', null, null);

insert into table_pk (login_id, login_pwd, tel)
values ('id', 'pw', null);

-- error
insert into table_pk (login_pwd, tel)
values ('pw', null);

create table table_pk3(
    login_id varchar2(20),
    login_pwd varchar2 (20),
    tel varchar2(20),
    
    primary key (login_id, login_pwd)
);
insert into table_pk3
values ('id1','pw1',null);
insert into table_pk3
values ('id1','pw2',null);
select * from table_pk3;

create table dept_fk (
    deptno1 number primary key,
    dname varchar2(14)
);
-- foreign key, fk : 외래키, 참조키 
-- 대상이 되는 테이블의 컬럼과 같은 타입으로 지정해야 한다 
-- 컬럼명은 서로 달라도 관계 없다(보통은 같게 한다) 
-- 대상이 되는 컬럼은 pk여야 한다 
create table emp_fk (
    empno number primary key,
    ename varchar2(10),
    deptno number references dept_fk(deptno1)
    -- deptno number references dept_fk 만약 컬럼이 같다면 컬럼명 생략 가능 
);
insert into dept_fk values (100, '1강의실');

create table emp_fk2 (
    empno number primary key,
    ename varchar2(10),
    deptno number,
    
    foreign key(deptno) references dept_fk(deptno1)
);

-- dept_fk에 101이라는 컬럼은 없기 때문에 error
insert into emp_fk values (1, '이름', 101);

insert into emp_fk values (1, '이름', 100);

-- emp_fk에서 100을 참조하고 있기 때문에 수정,삭제 불가 
update emp_fk set deptno = 101;
update dept_fk set deptno1 = 101;
delete dept_fk;
truncate table dept_fk;

delete emp_fk;
update dept_fk set deptno1 = 101;

create table table_default(
    login_id varchar2(20),
    login_pwd varchar2(20),
    tel varchar2(20) default '000-0000'
);
insert into table_default values ('id', 'pw', '010-1233-4567');
insert into table_default (login_id, login_pwd)
values ('id2', 'pw2');
select * from table_default;



----------------------- 8/8 시험 ---------------------------
CREATE TABLE market (
	mid	number(4)		NOT NULL,
	mname	varchar2(20)		NULL,
	madr	varchar2(20)		NULL,
	mpn	number(15)		NULL,
	menuid	number(4)		NOT NULL
);

CREATE TABLE menu (
	menuid	number(4)		NOT NULL,
	burger	varchar2(20)		NULL,
	potato	varchar2(20)		NULL,
	cola	varchar2(20)		NULL
);

CREATE TABLE muser (
	muid	number(4)		NOT NULL,
	museradr	varchar2(20)		NULL,
	muserpn	number(15)		NULL
);

CREATE TABLE info (
	iId	number(4)		NOT NULL,
	iTime	date		NULL,
	price	number(4)		NULL,
	menuid	number(4)		NOT NULL,
	mid	number(4)		NOT NULL,
	cocid	number(4)		NOT NULL,
	rid	number(4)		NOT NULL,
	tofid	number(4)		NOT NULL,
	muid	number(4)		NOT NULL
);

CREATE TABLE request (
	rid	number(4)		NOT NULL,
	rRe	varchar2(20)		NULL
);

CREATE TABLE tof (
	tofid	number(4)		NOT NULL,
	true	varchar2(20)		NULL,
	false	varchar2(20)		NULL
);

CREATE TABLE coc (
	cocid	number(4)		NOT NULL,
	cash	varchar2(20)		NULL,
	card	varchar2(20)		NULL
);

ALTER TABLE market ADD CONSTRAINT PK_MARKET PRIMARY KEY (
	mid
);

ALTER TABLE menu ADD CONSTRAINT PK_MENU PRIMARY KEY (
	menuid
);

ALTER TABLE muser ADD CONSTRAINT PK_USER PRIMARY KEY (
	muid
);

ALTER TABLE info ADD CONSTRAINT PK_INFO PRIMARY KEY (
	iId
);

ALTER TABLE request ADD CONSTRAINT PK_REQUEST PRIMARY KEY (
	rid
);

ALTER TABLE tof ADD CONSTRAINT PK_TOF PRIMARY KEY (
	tofid
);

ALTER TABLE coc ADD CONSTRAINT PK_COC PRIMARY KEY (
	cocid
);

select * from market;
insert into market values (1111, '맘스터치', '조치원역', 01012345678, 2222);

select * from menu;
insert into menu values (2222, '싸이버거', '치즈감자', '제로콜라');
update menu set burger = '5000원';
update menu set potato = '3000원';
update menu set cola = '2000원';

select * from muser;
insert into muser values (3333, '천안시 대흥동 ', 01023456789);

select * from request;
insert into request values (4444, '감사합니다');

select * from coc;
insert into coc values (5555, '현금결제', '카드결제');

select * from tof;
insert into tof values (6666, '결제완료', '미결제');

select * from info;
insert into info values 
(9999, sysdate, 5500, 2222, 1111, 5555, 4444, 6666, 3333); 
update info set price=5000;

