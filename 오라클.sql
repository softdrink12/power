-- ���� �ּ�
/* ���� �ּ�*/
select 
    *  -- * : ��� �÷�
from 
    emp;
-- sql developer �ڵ� ���� ����Ű : ctrl + f7    
select 
    empno, ename, deptno    -- ��ȸ�ϰ� ���� �÷� ��� ����
from 
    emp;    
    
select * from dept;
select * from salgrade;

select deptno from emp;
-- �� �� ���� : ctrl + shift + d 
-- distinct : select���� �ߺ��Ǵ� �ڷḦ �������ش� 
select distinct deptno from emp;
select distinct job from emp;

-- column�� �������� ��� column���� ������ �ߺ��Ǵ� �� �����Ѵ�
-- �Ʒ� �ڵ�� distinct�� deptno�� job�� ������ �� �ߺ��Ǵ� �͵��� ������
select distinct deptno, job from emp;

-- null�� �����ϸ� ������ null�� ���´� 
select ename, sal, sal*12+comm, comm from emp;

-- column�� ��Ī ���
-- ��Ī �ȿ� ���Ⱑ �ִ� ��� "" �����Ұ� 
-- �����ϸ� ���⺸�� _�� �ֱ� 
-- ��Ī �տ��ٴ� as�� ""�� ������ �����ϴ� 
select ename, sal, sal*12+comm as "new_sal", comm from emp;

-- order by : �ش� column���� ����
-- �������� : asc (���� ����) 
-- �������� : desc
select * from emp
order by sal;

select * from emp
order by comm;

select * from emp
order by sal desc;

-- order by ù��°�ŷ� �����ϰ�
-- �� �߿� ���� �� �ִٸ� �����ŷ� ���� 
select * from emp
order by deptno asc, sal desc;

select distinct job from emp
order by job desc;

-- where ������ 
-- where : select������ �����͸� ��ȸ�� ��
-- Ư�� ������ �������� ���ϴ� ���� ����ϴ� �� ��� 
select * from emp
where deptno = 30;
-- deptno�� ���� 30�� �͵鸸 ��ȸ 

select * from emp
where empno = 7782;
-- empno�� ���� 7782�� �͵鸸 ��ȸ

select * from emp
where sal >= 2000
order by sal desc;
-- sal�� ���� 2000�� ũ�ų� ���� ���� ��ȸ 

select * from emp
where ename = 'KING';
-- ename KING�� ���� ��ȸ 

-- and, or ������ 
select * from emp
where deptno = 30
and job = 'SALESMAN';
-- deptno�� ���� 30�� �͵�� job�� ���� SALESMAN�� �͵��� ��ȸ

select * from emp
where job = 'CLERK' and deptno = 30;
-- job�� ���� CLERK�� �͵�� deptno�� ���� 30�� �͵��� ��ȸ

-- and�� ����(or���� ������ ����)
-- or�� ����(and���� ������ ����)
select * from emp
where job = 'CLERK' and deptno = 30 or deptno = 20;

select * from emp
where job = 'CLERK' and (deptno = 30 or deptno = 20);

select * from emp
where sal >= 2000 and sal < 3000;
-- sal�� �� �� 2000�̻��̸鼭 3000�̸��� ���� ��ȸ

-- �� ������ 
select * from emp
-- where sal != 3000;
-- where sal ^= 3000;
where sal <> 3000;
-- ���� ������ ��� � �� �����ڸ� ����� �� �ִ� 

-- NOT ������ 
select * from emp
where not(sal >= 2000 and sal < 3000);
-- not �����ڸ� ����ؼ� 2000�̸��� ���� 3000�̻��� ���� ��ȸ

-- in ������
-- or, and�� �ߺ��ؼ� ����ϴ� ��� in �����ڸ� ����ؼ� or, and�� ������ �� �ִ� 
select * from emp 
where job in ('MANAGER', 'SALESMAN', 'CLERK')
order by job;
-- in �����ڸ� ����ؼ� 'MANAGER', 'SALESMAN', 'CLERK' ���鸸 ��ȸ

select * from emp 
where job not in ('MANAGER', 'SALESMAN', 'CLERK')
order by job;
-- not �����ڿ� in �����ڸ� ����ؼ� 'MANAGER', 'SALESMAN', 'CLERK' ������ �ݴ���
-- 'SCOTT', 'KING', 'FORD'�� ��ȸ

-- between A and B ������
-- �� �̸� between '�ּڰ�' and '�ִ�';
select * from emp
where sal between 2000 and 3000;
-- between �����ڸ� ����ؼ� 2000 �̻�� 3000 ���ϸ� ��ȸ
-- where sal >= 2000 and sal <= 3000 �ڵ�� ����

-- * LIKE ������
-- %�� ��ŵ� ���� ����
select * from emp
where ename like 'S%';
-- ename like 'S%' ���ǽ��� ename�� �� �� �빮�� s�� �����ϴ� �����͸� ��ȸ 

select * from emp
where ename like 'A%';
-- ename like 'S%' ���ǽ��� ename�� �� �� �빮�� A�� �����ϴ� �����͸� ��ȸ

select * from emp
where job like 'C%';
-- job like 'C%' ���ǽ��� job�� �� �� �빮�� c�� �����ϴ� �����͸� ��ȸ 

-- �����(_)�� �� �ѱ����ε� � ���ڴ� ���� ���� 
select * from emp
where ename like '_L%';
-- ename like '_L%' ���ǽ��� ename�� �� �� _L �ι�° ���� L�� �����͸� ��ȸ
-- �տ� ���� �����_�� ������ŭ �ǳ� ��

select * from emp
where ename like '%AM%';
-- � ���ڰ� ���Ե� �����͸� ��ȸ�ϰ� ������ �ۼ�Ʈ(%%)�� �� �� ���δ�

select * from emp
where comm <= 400;

--in null ������
select * from emp
where comm is null;
-- is null �����ڸ� ����ؼ� comm�� ���� null�� �����͸� ��ȸ 

select * from emp
where comm is not null;
-- is not null �����ڸ� ����ؼ� comm�� ���� null�� �ƴ� �����͸� ��ȸ

select empno, ename, sal, deptno from emp
--where deptno = 10 or deptno = 20;
where deptno in (10, 20);

-- ���� ������(union)
-- ���� �ٸ� ��ȸ ������� union���� ������
-- ��, ��ȸ�� column�� ������ Ÿ���� ���ƾ� �Ѵ� 
-- ex) empno(int), ename(str), sal(int), deptno(int)
select empno, ename, sal, deptno from emp
where deptno = 10
union
select empno, ename, sal, deptno from emp
where deptno = 20;

-- union : �ߺ��� �ڷḦ �������� 
select empno, ename, sal, deptno from emp
where deptno = 10
union
select empno, ename, sal, deptno from emp
where deptno = 10;

-- union all : �ߺ��� ���� ���� ������ 
select empno, ename, sal, deptno from emp
where deptno = 10
union all
select empno, ename, sal, deptno from emp
where deptno = 10;

-- ���� 1
select * from emp
--where ename like '____S%';
where ename like '%s';
-- like ������ %�� �����ϸ� ~�� ������ �� ã�� 

-- ���� 2
select empno, ename, job, sal, deptno from emp
where deptno = 30 and job = 'SALESMAN';

-- ���� 3
select empno, ename, job, sal, deptno from emp
where sal > 2000 and deptno in(20, 30)
union 
select empno, ename, job, sal, deptno from emp
where sal > 2000 and deptno in(20, 30);

-- ���� 3
select empno, ename, job, sal, deptno from emp
where deptno in (20, 30) and sal > 2000;

-- ���� 4
select * from emp
where not (sal >= 2000 and sal <= 3000);

-- ���� 5
select ename, empno, sal, deptno from emp
where ename like '%E%' and deptno = 30 and not (sal > 1000 and sal < 2000); 

-- ���� 6
select * from emp 
where comm is null and mgr is not null 
and not ename like '_L%' and job in ('MANAGER', 'CLERK');

-- upper, lower, initcap �Լ�
-- upper : ��ȣ �� ���� �����͸� ��� �빮�ڷ� ��ȯ
-- lower : ��ȣ �� ���� �����͸� ��� �ҹ��ڷ� ��ȯ
-- initcap : ��ȣ �� ���� ������ �� ù ���ڸ� �빮�ڷ� ��ȯ
select ename, upper(ename), lower(ename), initcap(ename) from emp;

-- upper, lower�� ��ҹ��� ���о��� like �� �� ���� 
select * from emp
where lower(ename) like lower('%Mi%');

-- length �Լ�
-- length : ���� ����
select ename, length(ename) from emp;

-- ��� �̸��� ���̰� 5 �̻��� �� ���
select * from emp
where length(ename) >= 5;

-- dual : �ӽ� ���̺�
select length('��'), lengthb('��') from dual;

-- ���ڿ��� �Ϻθ� �����ϴ� substr �Լ�
-- substr : ����� �Ǵ� ����, ������ġ, ������ ����
-- ������ ������ �Ⱦ��ų� �ʹ� ũ�� ������ ���
-- �ڿ������� �� ���� - ���
select job, substr(job, 1, 2),substr(job, 3, 2),substr(job, 5) 
ename,
substr(job, -3, 2),
lower( substr(job, 5, 100) )
from emp;

-- replace �Լ� 
select job, replace(job, 'A', '*') from emp;
-- replace �Լ��� ����Ͽ� job�� �ִ� �빮�� A�� *ǥ�÷� �ٲ���

select job , length(job), length(job) / 2, 
substr(job, (length(job)+1) / 2, 1),
replace(job, substr(job, (length(job)+1) / 2, 1), '*')
from emp;

-- �������� �� ������ Ư�� ���ڷ� ä��� Lpad, Rpad �Լ�
-- lapd, rpad : (����� �Ǵ� ����, ��ü �ڸ���, ä�� ����) ������ �ۼ�
-- ä�� ���� ������ ���鹮�� 
select job, 
lpad(job, 10, '#'),
lpad(job, 4, '#')
from emp;

select job, length(job), 15 - length(job) 
from emp;

-- �� ���ڿ� �����͸� ��ġ�� concat �Լ� 
-- ���ڳ��� ��ġ�� ���
-- ���ڿ� ���ϱ�
select empno || ename || '��' from emp;

-- Ư�� ���ڸ� ����� trim
-- trim : �� �� ���� ���� 
-- �۾� ������ ������ �������� ����
select '   a b c   ', trim('   a b c   ') from dual;

-- �ǽ����� 1
select 
--    '210621-3123456',
--    '210621-3******',
    substr('210621-3123456', 1, 8) as "210621-3123456",
    rpad('210621-3', 14, '*'),
    rpad(substr('210621-3123456', 1, 8), length('210621-3123456'),'*')
from dual;

-- �ǽ����� 2
-- ����� �̸��� �տ� �� �ڸ��� ���̰� �ϰ� �������� *�� ǥ�� 
-- ���� ���� : �� �α��� + '***'
-- ������ �� : WARD -> WA**, MRTIN -> MA****
select rpad (substr(ename, 1, 2), length(ename), '*') from emp;

-- �ǽ����� 3
-- �ձ��� �ϳ��� 
-- WARD -> *ARD, MARTIN -> *ARTIN
select lpad (substr(ename, 2, 100 ), length(ename), '*') from emp;

-- �ǽ� ���� 4
-- �� ��° �۾��� *
-- WARD -> W*RD, MARTIN -> M*RTIN
select rpad (substr(ename, 1, 1 ), 2, '*') || substr(ename, 3, 100) from emp;

-- �ǽ����� 5
-- ��� �۾��� * 
--select rpad (substr(ename, 1, 2 ), 3, '*') || substr(ename, 4, 100) from emp;
select 
--    length(ename) /2 + 1,
    substr(ename, 1, length(ename) /2 - 0.5) || '*' || 
    substr(ename,length(ename) /2 + 1.5)
from emp;

-- ���� �Լ� 
-- trunc : ������ ������ Ư�� ��ġ���� ������ ���� ��ȯ
select trunc(1234.5678), 
trunc(1234.5678, 2),
trunc(1234.5678, -2),
trunc(-12.34)
from dual;

-- ceil, floor : ���� �Էµ� ���ڿ� ����� ū ����, ���� ������ ��ȯ����
select ceil(3.14),
floor(3.14),
ceil(-3.14),
floor(-3.14)
from dual;

-- ��¥ �����͸� �ٷ�� �Լ� 
-- sysdate : ���� ����Ŭ pc�� �ð��� ���´�
-- ���� pc�� 9�ð� ���� ����(���� 0�� ����, �ѱ� +9��)
-- ��¥ ���� �� �Ϻθ� select�� ǥ�� ��
select sysdate, sysdate+1, sysdate-1 from dual;

-- �� ���� ���� ��¥�� ���ϴ� add_months �Լ� 
select sysdate, add_months(sysdate, 3) from dual;

-- column�� +�� ������ ��� ���ڷ� �����ؼ� ������
-- || <- ���ڵ� ���ڷ� ������ 

-- ��¥, ���� �����͸� ���� �����ͷ� ��ȯ �ϴ� to_char �Լ�
select to_char(sysdate+(9/24), 'yyyy"��"mm"��"dd"��" hh24"��"mi"��"ss"��"') as "���糯¥�ð�" from dual;

-- ���� �����͸� ��¥ �����ͷ� ��ȯ�ϴ� to_date �Լ� 
select 
    sysdate - to_date('2024-05-07', 'yyyy-mm-dd')
from dual; 

-- nvl �Լ� 
-- nvl : ù ���� �Է� �����Ͱ� null�� �ƴϸ� �״�� ��ȯ�ϰ�,
-- null �̶�� �� ��° �Է� �����Ϳ� ������ ���� ��ȯ
select comm, nvl(comm, -1), sal, sal + comm, sal + nvl(comm, 0) from emp;

select * from emp
where comm = 0 or comm is null;

select * from emp 
where nvl(comm, 0) = 0;

-- case��
-- if���� ����ϴ� 
select empno, ename, comm,
    case
        when comm is null then '�ش���׾���'
--        when comm = 0 then '�������'
--        when comm > 0 then '����: ' || comm
        else to_char(comm)
    end as "new_comm"
from emp;

select empno, comm,
    case
        when comm is null then 0
        else 1
    end as " new_comm"
from emp;

-- �ǽ����� 2
select empno, ename, sal,
    trunc (sal/21.5, 2) as DAY_pay, 
    round (sal/21.5 / 8 , 1) as TIME_PAY
from emp;

-- �ǽ����� 3
select empno, ename, hiredate,
    to_char(add_months(next_day(hiredate, 2), 3),'yyyy-mm-dd') as "R_JOB",
    nvl(to_char(comm), 'N/A') as comm
from emp;

-- �ǽ����� 4
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

-- �ϳ��� ���� ��� ����� ��� ������ �Լ� 
-- countó�� null�� ���ܵ�
-- count�� *�� ���� ��
select sum(sal), count(sal), count(*), count(comm) from emp;

select count(*) from emp where ename like'%A%';

select max(sal), max(ename), min(hiredate), min(comm), avg(sal) from emp;

-- �μ��� �޿� ���� ǥ�� 
-- deptno, sum, avg
select sum(sal), avg(sal) from emp
where deptno = 10
union all
select sum(sal), avg(sal) from emp
where deptno = 20
union all
select sum(sal), avg(sal) from emp
where deptno = 30;

-- distinctó�� �ߺ��� ����, �з� ����
-- select���� group by�� ���̳� ������ �Լ�(�����Լ� avg, min, max, sum ...)�� �� �� ���� 
select deptno, avg(sal), sum(sal), count(*) from emp
group by deptno;

select deptno, empno, sum(sal) from emp
group by deptno, empno;

select deptno, job, count(*)
from emp
group by deptno, job
order by deptno, job; 

-- having : group by������ ���ȴ�
-- �����Լ��� �������� �ɰ� ���� ��쿡 ���
select deptno, job, avg(sal)
from emp
group by deptno, job
--    having avg(sal) >= 2000;
--    having count(*) >= 2;
    having deptno = 20;
    
-- �ǽ����� 1
select deptno, trunc(avg(sal)), max(sal), min(sal), count(*) from emp
group by deptno;

-- �ǽ����� 2
select job, count(*) from emp
group by job 
    having count(*) >= 3;
    
-- �ǽ����� 3
select to_char(hiredate,'yyyy') as HIRE_YEAR, deptno, count(*) from emp
group by to_char(hiredate,'yyyy'), deptno;

-- �ǽ����� 4
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

-- ���� ���̺��� �ϳ��� ���̺�ó�� ����ϴ� join
-- table 2�� �̻� ��ȸ�� �� ���踦 �� �˷���� ���ϴ� ������ ��µȴ�
-- ��ü table �� -1���� ������ �����ϴ� 
select emp.ename, dept.loc, emp.deptno
from emp, dept
where emp.deptno = dept.deptno
order by empno;

-- table ��Ī ����
-- *�� �÷��� ���� ���� ��� *�� table�� ��������� �Ѵ� 
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

-- using�� �� �� ���� �÷����� �ִ� ��츸 �� �� �ִ� 
select *
from emp join dept using (deptno);

select * 
from emp join dept on (emp.deptno = dept.deptno);
select *
from emp e1 join emp e2 on (e1.mgr = e2.empno);

select *
from emp e1 join emp e2 on (e1.mgr = e2.empno);

-- left outer join : ���� ���̺��� ��� ����ϴ°� �������ش� 
select *
from emp e1 left outer join emp e2 on (e1.mgr = e2.empno);

-- quiz 1 
-- empno, ename, dname, loc ��� : ��� 14��
select empno, ename, dname, loc
from emp, dept
where emp.deptno = dept.deptno;

select empno, ename, dname, loc
from emp join dept using (deptno);

select empno, ename, dname, loc
from emp left outer join dept on(emp.deptno = dept.deptno);

-- quiz 2
-- ���, �̸�, �μ���, �޿������ ��� : ��� 14��
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
-- ��纸�� ������ ���� ����� �̸�, �޿�, �Ŵ��� �̸�, �Ŵ��� �޿� ���

select e1.ename, e1.sal, e2.ename, e2.sal
from emp e1, emp e2
where e1.mgr = e2.empno and e1.sal > e2.sal;

-- �ǽ����� 1
select d.deptno, d.dname, e.empno, e.ename, e.sal
from emp e, dept d
where e.sal > 2000 and e.deptno = d.deptno
order by deptno;

-- �ǽ����� 2
select d.deptno, d.dname, floor(avg(sal)), max(sal),min(sal),count(*) 
from emp e left outer join dept d on (e.deptno = d.deptno) 
group by d.deptno, d.dname;

-- �ǽ����� 3
select d.deptno, d.dname, e.empno, e.ename, e.job, e.sal
from dept d left outer join emp e on (e.deptno =d.deptno)
order by d.deptno;

-- ��������
select sal from emp where ename = 'JONES';

select * from emp 
where sal > (select sal from emp where ename = 'JONES');

-- blake���� ���� ������ �޴� �����
select * from emp
where sal > (select sal from emp where ename = 'BLAKE');

-- JONES�� ���� job�� ������ �ִ� �����
select * from emp
where job = (select job from emp where ename = 'JONES');

-- ��� �޿����� ���� �޴� �����
select * from emp 
where sal > (select avg(sal) from emp);

select * from emp 
where sal in (
    select max(sal) from emp group by deptno
);

-- from���� ����ϴ� �������� 
select *
from (
    select * from emp where deptno = 10
);

select rownum, emp.* 
from emp
--where rownum = 4;
-- order by�� select���� ������ ������ ������ rownum�� ���� �����
order by ename;

-- order by�� ���� ��Ű�� rownum�� �����Ű�� ���
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

-- with��
with e10 as (
    select * from emp where deptno = 10
)
select * from e10;

-- �ǽ����� 1
select job from emp where ename = 'ALLEN';
select job, empno, ename, sal, deptno, dname 
from emp join dept using (deptno)
where job = (select job from emp where ename = 'ALLEN')
order by sal desc;

-- �ǽ����� 2
select avg(sal) from emp;
select e.empno, e.ename, d.dname, e.hiredate, d.loc, e.sal, s.grade 
from emp e, salgrade s, dept d
where sal > (select floor(avg(sal)) from emp) 
and e.sal between losal and hisal 
and e.deptno = d.deptno
order by sal desc, empno;

-- �ǽ����� 3
select e.empno, e.ename, e.job, d.deptno, d.dname, d.loc
from emp e left outer join dept d on (e.deptno = d.deptno)
where e.deptno = 10
and job not in (select job from emp where deptno = 30);

-- �ǽ����� 4
select sal from emp where job = 'SALESMAN';
select e.empno, e.ename, e.sal, s.grade from emp e, salgrade s, dept d
where sal > (select max(sal) from emp where job = 'SALESMAN')
and e.sal between losal and hisal 
and e.deptno = d.deptno
order by empno;

-- 12��
select * from emp;
desc emp;

create table emp_ddl (
    empno number(4),    -- �� �ڸ��� ���ڸ� ���
    ename varchar2(10), -- 10����Ʈ�� ���ڸ� ���
    job varchar2(9),    -- ���Ѻ��� ���� �۾��� ������ �۾���ŭ�� ������ ����
    mgr number(4),
    hiredate date,
    sal number(7, 2),   -- 2�� �Ҽ��� �� ��° �ڸ����� ����� �� �ִ�
    comm number(7, 2),
    deptno number(2)
);

select * from emp_ddl;
desc emp_ddl;

-- ���� ���̺� �� ������ �����͸� �����Ͽ� �� ���̺� �����ϴ� ���
create table dept_ddl
as select * from dept;
select * from dept_ddl;

-- ���� ���̺� �� ������ �Ϻ� �����͸� �����Ͽ� �� ���̺� �����ϱ� 
create table emp_ddl_30
as select empno, ename, sal from emp
where deptno = 30;
select * from emp_ddl_30; 

-- table�� �����ϴ� alter
create table emp_alter
as select * from emp;
select * from emp_alter;

alter table emp_alter
add hp varchar2(20);

-- �� �̸��� �����ϴ� rename
alter table emp_alter
rename column hp to tel;

-- ���� �ڷ����� �����ϴ�modify
alter table emp_alter
modify empno number(5);
desc emp_alter;

-- �ڷ����� ũ�Ⱑ Ŀ���� �� ���������� �پ��� �� �Ұ����ϴ�
alter table emp_alter
modify empno number(4);

-- Ư�� ���� ������ �� ����ϴ� drop 
alter table emp_alter
drop column tel;
select * from emp_alter;

alter table emp_alter
drop column comm;
select * from emp_alter;

-- table �̸��� �����ϴ� rename
rename emp_alter to emp_rename;
select * from emp_rename;

-- truncate : Ư�� ���̺��� ��� �����͸� ������ 
truncate table emp_rename;

-- drop : ���̺� ���� 
drop table emp_rename;

-- 10��
create table dept_temp
as select * from dept;
select * from dept_temp;

-- ���̺� �����͸� �߰��ϴ� insert
-- into�� �����͸� �Է��� ��� ���̺�� �� �Է�
-- values�� �Է��� ������ ����
insert into 
dept_temp (deptno, dname, loc)
values (50, 'DATABASE', 'SEOUL');
select * from dept_temp;

-- table�� �ڿ� ��ȣ()�� �����ϸ� ��� column
insert into dept_temp
values (60, 'NETWORK', 'BUSAN');
select * from dept_temp;

-- table�� null ������ �Է��ϴ� ���
insert into dept_temp
values (70, 'WEB', null);
select * from dept_temp;

-- Ȧ ����ǥ'' <- �̰͵� null�� �������� �׷��� null�� �ۼ��ϱ� 
-- java���� ���� �� Ȧ ����ǥ''�� null�� �ν����� �ʱ� ������ 
insert into dept_temp
values (80, 'WEB', '');
select * from dept_temp;

-- column�� �����ϸ� �ڵ����� null�� ���� 
insert into dept_temp (deptno, loc)
values (90, 'INCHEON');
select * from dept_temp;

create table emp_temp
as select * from emp;
select * from emp_temp;

-- ���̺� ��¥ ������ �Է��ϱ�
insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (9999, 'ȫ�浿','PRESIDENT', null, '2001/01/01', 5000, 1000, 10);
select * from emp_temp;

insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (1111, '������','MANAGER', 9999, '2001/01/05', 4000, null, 20);
select * from emp_temp;

insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (2111, '�̼���','MANAGER', 9999, to_date('07/01/2001', 'dd/mm/yyyy'), 4000, null, 20);
select * from emp_temp;

insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (3111, '��û��','MANAGER', 9999, sysdate, 4000, null, 30);
select * from emp_temp;

-- DDL : create, alter, drop 

-- ���������� ����Ͽ� �� ���� ���� ������ �߰��ϱ� 
insert into emp_temp
select * from emp where deptno = 10;
select * from emp_temp;

-- table�� �ִ� �����͸� �����ϴ� update
-- update �ϱ����� select�� where ������ ��Ȯ���� Ȯ���ϰ�
--where�� �״�� �����ؼ� update�� �ٿ��ֵ��� ����!
create table dept_temp2
as select * from dept;
select * from dept_temp2;

update dept_temp2
set loc = 'SEOUL';
select * from dept_temp2;

-- ������ ������ �ǵ����� rollback 
rollback;
select * from dept_temp2;

-- ������ �Ϻκи� ������ �� where�� �� ����ؾ� �Ѵ� 
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

-- emp_temp���� 
-- �޿��� 1000������ ����� �޿��� 3% �λ� �Ͻÿ� 
select ename, sal, sal*1.03 from emp_temp2
where sal <= 1000;

update emp_temp2
set sal = sal*1.03
where sal <= 1000;

delete emp_temp2;
select * from emp_temp2;

rollback;

-- ���� 1
select ename, empno from emp;
select ename, rpad (substr(empno, 1, 2), length(empno), '*') as empno from emp
order by empno desc;

-- ���� 2
select e.empno, e.ename, d.dname, d.loc from
emp e left outer join dept d on (e.deptno = d.deptno)
order by dname desc;

select * from dict;
select * from user_tables;

select * from USER_CONSTrAINTS;

-- index ����
-- ��������, �������� ���� ����
create index idx_emp_sal
on emp(sal);
select * from user_indexes;

drop index idx_emp_sal;

-- ���� ��Ʈ 
select /*+ index(idx_emp_sal) */
* from emp e
order by empno desc;

-- plan 
-- sql developer������ ��� ����° ������ "��ȹ����"

create index idx_emp_empno_desc
on emp ( empno desc );

select max(empno)+1 from emp_temp2;

insert into emp_temp2 (empno, ename)
values ( (select max(empno)+1 from emp_temp2), '����2');
select * from emp_temp2;

-- ������ sequence
create table tb_user (
    user_id number,
    user_name varchar2(30)
);
select * from tb_user;  -- tb_user��� ���̺� ����

create sequence seq_user;   -- ������ ����

select seq_user.nextval from dual;
select seq_user.currval from dual;

insert into tb_user (user_id, user_name)
values (seq_user.nextval, '������1');
insert into tb_user (user_id, user_name)
values (seq_user.nextval, '������2');

insert into tb_user (user_id, user_name)
values (seq_user.nextval, '������3');
select * from tb_user;

create sequence seq_test 
start with 10000    -- ������ ����(�⺻�� : 1) , 10000���� �����ϰڴٴ� ��
increment by 100;   -- ���� ����(�⺻�� : 1) , 100�� �����Ѵٴ� �� 

-- nextval�� �� ���� ������� ���� ��� currval ��� �Ұ� 
select seq_test.currval from dual;
select seq_test.nextval from dual;

-- 14��
-- primary key, pk : �ֿ�Ű, �߿�Ű, �⺻Ű...
-- not null + unique ����
-- ������ ���ÿ� index�� �������� 
-- create table������ primary key�� �� �ϳ��� ����
-- 2�� �̻��� �÷��� primary key ���� �Ϸ��� alter ��� 
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
-- foreign key, fk : �ܷ�Ű, ����Ű 
-- ����� �Ǵ� ���̺��� �÷��� ���� Ÿ������ �����ؾ� �Ѵ� 
-- �÷����� ���� �޶� ���� ����(������ ���� �Ѵ�) 
-- ����� �Ǵ� �÷��� pk���� �Ѵ� 
create table emp_fk (
    empno number primary key,
    ename varchar2(10),
    deptno number references dept_fk(deptno1)
    -- deptno number references dept_fk ���� �÷��� ���ٸ� �÷��� ���� ���� 
);
insert into dept_fk values (100, '1���ǽ�');

create table emp_fk2 (
    empno number primary key,
    ename varchar2(10),
    deptno number,
    
    foreign key(deptno) references dept_fk(deptno1)
);

-- dept_fk�� 101�̶�� �÷��� ���� ������ error
insert into emp_fk values (1, '�̸�', 101);

insert into emp_fk values (1, '�̸�', 100);

-- emp_fk���� 100�� �����ϰ� �ֱ� ������ ����,���� �Ұ� 
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



----------------------- 8/8 ���� ---------------------------
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
insert into market values (1111, '������ġ', '��ġ����', 01012345678, 2222);

select * from menu;
insert into menu values (2222, '���̹���', 'ġ���', '�����ݶ�');
update menu set burger = '5000��';
update menu set potato = '3000��';
update menu set cola = '2000��';

select * from muser;
insert into muser values (3333, 'õ�Ƚ� ���ﵿ ', 01023456789);

select * from request;
insert into request values (4444, '�����մϴ�');

select * from coc;
insert into coc values (5555, '���ݰ���', 'ī�����');

select * from tof;
insert into tof values (6666, '�����Ϸ�', '�̰���');

select * from info;
insert into info values 
(9999, sysdate, 5500, 2222, 1111, 5555, 4444, 6666, 3333); 
update info set price=5000;

