 create table department
 (
 department_id  int primary key,
 department_name varchar(50) not null
 );

 insert into department values(1,'human resources'),
					   (2,'ACCOUNT AND FINANACE'),		
					   (3,'MARKETING'),
					   (4,'INFORMATION TECHNOLOGY'),
					   (5,'OUTSTANFING'),
					   (6,'SATFFING');			
 
 select * from department;
 select gender,employee_name,department_name from employee1,department where employee1.department_id=1
and department.department_id=6;

 create table employee1
 (employee_id  int identity(1501,1),
 employee_name  varchar(50) not null,
 department_id int ,
 gender  char not null, 
 emp_address nvarchar(50) not null,
 contact_no  numeric not null,
 mail_id  nvarchar(100) not null,
 date_birth datetime not null,
 date_joined datetime,
 photo  image,
 constraint pk_emp_profile primary key (employee_id, contact_no),
 constraint fk_emp_job foreign key (department_id) references department(department_id),
 constraint ck_emp_gender check (gender in ('m','f'))
 );
 select * from employee1
 insert into employee1(employee_name,department_id,gender,emp_address,contact_no,mail_id,date_birth,date_joined)
					values('vaibhav',2,'m','marina beach',12222,'vk@gmail.com','','2019-12-31')
					

delete from employee1
where employee_id=1502

 create table mysalary 
 (employee_id int,
 contact_no numeric not null,
 basic_pay numeric,
 house_rent_allownace money,
 dearness_allownace money,
 variable_allownace money,
 total_allowance money,
 gross_salary money,
 income_tax money,
 professional_tax money,
 total_deduction money,
 net_salary money,
 constraint fk_employee_salary foreign key (employee_id, contact_no) references employee1 (employee_id,contact_no)
 );
 alter mysalary add mysalary.basic_pay numeric not null;

 insert into mysalary(employee_id,basic_pay,house_rent_allownace,dearness_allownace,variable_allownace,total_allowance,gross_salary,income_tax,professional_tax,total_deduction,net_salary)
  values (1503,99956678,12000,4000,2000,4000,16000,20000,8000,1000,1000,26000)
 
 create view studentvu 
 as select * from employee1;

 select *from mysalary

 drop view studentvu

 select * from employee1 
 where department_id is not null

select * from employee1
where photo is null 

select * from employee1
where date_birth is not null

select * from employee1

select employee_id,photo, isnull(photo,'Not available') as availability 
from employee1 
where photo is null


select photo, nullif('Not applicable',photo) as applicable 
from employee1 
where photo is null

select employee_id,photo, coalesce('Not applicable',photo,'could not found') as applicable 
from employee1 
where photo is null

select * from employee1
where department_id=(select department_id from employee1 where gender='m')


create table test2
(id int identity(1000,2) primary key,
name varchar(20),
salary money
)


create table test3
(id int primary key,
name varchar(20),
salary money
)


insert into test3(id,,salary) values('vaibhav',20000),
										
										('kushal',21000),
										('sheriff',22000),
										('sandy',23000),
										('lilla',24000)

										
select * from test1 

select * from test1 where salary=
(select min(salary) as minu from (select top 3 salary from test1 order by salary desc) test1)


select * from test1
where name like '%l%'


select * into copy
from test1

select * from test1

select * from copy

alter table copy 
add rid int

update copy
set rid=5 where id=1008






create table e_detail
( em_id int identity(1000,1) primary key,
  name varchar(20)
  )

insert into e_detail (name) values('vaibhav'),
							('kushal'),
							('sheriff'),
							('sandy')	




create table e_salary
( em_id int identity(1000,1) primary key,
  salary money,
  foreign key (em_id) references e_detail(em_id)
  )

insert into e_salary (salary) values(10000),
									(12000),
									(15000),
									(20000)


create table e_salary1
( e_id int identity(1000,1) primary key,
  salary money,
  foreign key (e_id) references e_detail(em_id)
  )

insert into e_salary1 (salary) values(10000),
									(12000),
									(15000),
									(20000)


select * from e_detail
select * from e_salary


select a.em_id,a.name,b.salary from e_detail a, e_salary b
where a.em_id=(select em_id from e_salary where salary=(select max(salary)as maxi from e_salary)) 
and b.salary=(select max(salary) from e_salary)

