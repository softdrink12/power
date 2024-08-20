CREATE TABLE tbl_todo (
   tno      number,
   title    varchar2(100) not null,
   duedate    date not null,
   finished char(1)   
);

select * from tbl_todo;

create sequence seq_todo;

insert into tbl_todo (tno, title, duedate, finished)
    values (seq_todo.nextval, 'test3', '2024-08-14', 'N');
insert into tbl_todo (tno, title, duedate, finished)
    values (seq_todo.nextval, 'test4', '2024-08-15', 'Y');

drop table tbl_todo;
drop sequence seq_todo;

commit;

select * from tbl_todo
where tno = 2;

select * from emp;

select * from emp2;

create table emp2
as select * from emp;

select * from emp2 where empno = empno and ename=ename;


