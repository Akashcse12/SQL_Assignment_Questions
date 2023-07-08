create database Employee;
use Employee;
create table employeetable(EMPLOYEE_ID int,FIRST_NAME varchar(255),LAST_NAME varchar(255),SALARY int,JOINING_DATE date,DEPARTMENT varchar(255));
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(1,"Venkatesh","S",100000,20150828,"BANKING");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(2,"Ragavi","P",75000,20150828,"BUSINESS");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(3,"Gopinath","C",50000,20160302,"PHARMA");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(4,"Dinesh","G",50000,20160302,"INSURANCE");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(5,"Saibabu","E",40000,20170708,"SOFTARE");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(6,"Hasan","S",29000,20170708,"MANUFACTURING");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(7,"Diviya","P",33000,20170708,"HEALTHCARE");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(8,"Aravindan","R",40000,20170708,"HEALTHCARE");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(9,"Sathish","MD",45000,20160302,"AUTOMOBILE");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(10,"Prasanth","PKP",34000,20160302,"INSURANCE");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(11,"Vijay","R",25684,20160302,"BUSINESS");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) values(12,"Sivakumar","K",54789,20160302,"SOFTWARE");
select * from employeetable;       									-- Q1
alter table employeetable add primary key(EMPLOYEE_ID);
select FIRST_NAME,LAST_NAME from employeetable;   					-- Q2
select FIRST_NAME as EMPLOYEE_NAME from employeetable;     			-- Q3
select upper(FIRST_NAME) as FIRST_NAME from employeetable;   		-- Q4
select lower(FIRST_NAME) as FIRST_NAME from employeetable;  		-- Q5
select distinct DEPARTMENT from employeetable;   					-- q6
select substring(FIRST_NAME,1,3) from employeetable; 				-- q7
select position('a' in "Ragavi") as position;   				   	-- q8
 select trim(FIRST_NAME) from employeetable;                        -- q9 and q10
 select length(FIRST_NAME) from employeetable;                      -- q11
 select replace(first_name,"a","$") from employeetable;             -- q12
 select concat(first_name,'_',last_name) from employeetable;        -- q13
 select first_name,year(joining_date),month(joining_date),day(joining_date) from employeetable;  -- q14
 select * from employeetable order by first_name asc;					-- q15
 select * from employeetable order by first_name desc;					-- q16
 select * from employeetable order by first_name asc,SALARY desc;		-- q17
 select * from employeetable where first_name = "Dinesh";				-- q18
 select * from employeetable where first_name  = "dinesh" or "roy";		-- q19
 select * from employeetable where first_name  <> "dinesh" or "roy";	-- q20
 select * from employeetable where first_name like "s%";				-- q21
 select * from employeetable where FIRST_NAME like "%v%";				-- q22
 select * from employeetable where FIRST_NAME like "%n";				-- q23
 select * from employeetable where FIRST_NAME like "%n" and char_length(first_name)=4;  -- q24
 select * from employeetable where FIRST_NAME like "j%" and char_length(first_name)=4;  -- q25
 select * from employeetable where SALARY >=60000;                                      -- q26
 select * from employeetable where SALARY <=80000;                                      -- q27
 select * from employeetable where SALARY >=50000 and SALARY <=80000;                   -- q28
 select * from employeetable where FIRST_NAME  in ("venkatesh","ragavi");               -- q29
 /* sql date functions*/
 select * from employeetable where  year(joining_date)  = 2015;                         -- q30
 select * from employeetable where month(joining_date)  = "January";                    -- q31
 select * from employeetable where date(joining_date)<20170101;                         -- q32
 select * from employeetable where date(joining_date)>20160131;                         -- q33
	-- q34 no
 select date(joining_date) from employeetable;                                          -- q35
 select microsecond(joining_date) from employeetable;
 select count(joining_date)joining_date from employeetable group by JOINING_DATE having JOINING_DATE ="2017-07-08";
 
 create table incentives(EMP)