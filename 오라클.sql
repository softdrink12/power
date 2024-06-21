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
select substr(job, 1, length(job) / 2) from emp;
select substr(job, (length(job)+1) / 2 + 1, 100) from emp;
select lpad ( substr(job, (length(job)+1) / 2 + 1, 100),;
select job from emp;
