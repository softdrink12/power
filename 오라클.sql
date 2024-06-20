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
order by sal asc;

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

select * from emp
where deptno = 30;

select * from emp
where empno = 7782;

select * from emp
where sal >= 2000
order by sal desc;

select * from emp
where ename = 'KING';

select * from emp
where deptno = 30
and job = 'SALESMAN';

select * from emp
where job = 'CLERK' and deptno = 30;

-- and는 논리곱(or보다 순위가 높다)
-- or는 논리합(and보다 순위가 낮다)
select * from emp
where job = 'CLERK' and deptno = 30 or deptno = 20;

select * from emp
where job = 'CLERK' and (deptno = 30 or deptno = 20);

select * from emp
where sal >= 2000 and sal < 3000;

-- 비교 연산자 
select * from emp
-- where sal != 3000;
-- where sal ^= 3000;
where sal <> 3000;

-- NOT 연산자 
select * from emp
where not(sal >= 2000 and sal < 3000);

-- in 연산자
-- or, and를 중복해서 써야하는 경우 in 연산자를 사용해서 or, and를 생략할 수 있다 
select * from emp 
where job in ('MANAGER', 'SALESMAN', 'CLERK')
order by job;

select * from emp 
where job not in ('MANAGER', 'SALESMAN', 'CLERK')
order by job;

-- between A and B 연산자
-- 열 이름 between '최솟값' and '최댓값';
select * from emp
where sal between 2000 and 3000;

