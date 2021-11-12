create table dept(
    deptno  number(2) not null primary key,
    dname    varchar(14),
    loc     varchar(13)
);

create table salgrade(
    grade    number primary key,
    losal   number,
    hisal number
);

create table emp (
    empno number(4) not null primary key,
    ename varchar(10),
    job varchar(9),
    mgr number(4),
    hiredate date,
    sal number(7,2),
    deptno  number(4) not null,
    constraint fk_emp_empno foreign key (mgr) references emp(empno)
    on delete set null deferrable
);

insert into dept values(10, 'Headquater', 'R101');
insert into dept values(20, 'Marketing', 'R102');
insert into dept values(30, 'Sales', 'R103');

insert into salgrade values(1, 700, 1200);
insert into salgrade values(2, 1201, 1400);
insert into salgrade values(3, 1401, 2000);
insert into salgrade values(4, 2001, 3000);
insert into salgrade values(5, 3001, 9999);

insert into emp values(7839,'KING','PRESIDENT',null,to_date('17-11-1981','dd-mm-yyyy'),5000,10);
insert into emp values(7698,'BLAKE','MANAGER',7839,to_date('01-05-1981','dd-mm-yyyy'),2850,30);
insert into emp values(7782,'CLARK','MANAGER',7839,to_date('09-06-1981','dd-mm-yyyy'),2450,10);
insert into emp values(7566,'JONES','MANAGER',7839,to_date('02-04-1981','dd-mm-yyyy'),2975,20);
insert into emp values(7654,'MARTIN','SALESMAN',7698,to_date('28-09-1981','dd-mm-yyyy'),1250,30);
insert into emp values(7499,'ALLEN','SALESMAN',7698,to_date('20-02-1981','dd-mm-yyyy'),1600,30);
insert into emp values(7844,'TURNER','SALESMAN',7698,to_date('08-09-1981','dd-mm-yyyy'),1500,30);
insert into emp values(7900,'JAMES','CLERK',7698,to_date('03-12-1981','dd-mm-yyyy'),950,30);
insert into emp values(7521,'WARD','SALESMAN',7698,to_date('22-02-1981','dd-mm-yyyy'),1250,30);
insert into emp values(7902,'FORD','ANALYST',7566,to_date('03-12-1981','dd-mm-yyyy'),3000,20);
insert into emp values(7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,20);
insert into emp values(7788,'SCOTT','ANALYST',7566,to_date('09-12-1982','dd-mm-yyyy'),3000,20);
insert into emp values(7876,'ADAMS','CLERK',7788,to_date('12-01-1983','dd-mm-yyyy'),1100,20);
insert into emp values(7934,'MILLER','CLERK',7782,to_date('23-01-1982','dd-mm-yyyy'),1300,10);
