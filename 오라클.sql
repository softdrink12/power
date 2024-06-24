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


