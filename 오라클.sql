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
order by sal asc;

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

-- and�� ����(or���� ������ ����)
-- or�� ����(and���� ������ ����)
select * from emp
where job = 'CLERK' and deptno = 30 or deptno = 20;

select * from emp
where job = 'CLERK' and (deptno = 30 or deptno = 20);

select * from emp
where sal >= 2000 and sal < 3000;

-- �� ������ 
select * from emp
-- where sal != 3000;
-- where sal ^= 3000;
where sal <> 3000;

-- NOT ������ 
select * from emp
where not(sal >= 2000 and sal < 3000);

-- in ������
-- or, and�� �ߺ��ؼ� ����ϴ� ��� in �����ڸ� ����ؼ� or, and�� ������ �� �ִ� 
select * from emp 
where job in ('MANAGER', 'SALESMAN', 'CLERK')
order by job;

select * from emp 
where job not in ('MANAGER', 'SALESMAN', 'CLERK')
order by job;

-- between A and B ������
-- �� �̸� between '�ּڰ�' and '�ִ�';
select * from emp
where sal between 2000 and 3000;

