-- create the database
create database company;
-- delete the database
drop database company;

-- to use this data base
use company;
use cdac;

-- creating the table row-record column-field
create table employeeInfo(
Id int not null auto_increment primary key,
Emp_name varchar(30) not null,
Address varchar(300) not null,
City varchar(50) not null,
Age int Not null,
DOJ date not null,
Designation varchar(50) Not null,
Salary decimal(15,2)not null,
Mobile varchar(10) not null);

-- to look the data table info fully created
select * from employeeInfo;

-- delete the table
drop table employeeInfor;

-- alter table 
-- altering table adding new column field of email
alter table employeeInfor
add Email varchar(30);

-- to look the data table info fully created
select * from employeeInfor;

-- to delete the column in table or field in table
alter table employeeInfor
drop Email;


-- to look the data table info fully created
select * from employeeInfor;

-- insert data in the table
insert into employeeInfor(
Emp_name,
Address,
City,
Age,
DOJ,
Designation,
Salary,
Mobile)
Values(
'Sunil Kumar',
'104,Street No.12',
'Jaipur',
 23,
'2020-05-03',
'Manager',
42000.00,
'9593952592');
insert into employeeInfor(
Emp_name,
Address,
City,
Age,
DOJ,
Designation,
Salary,
Mobile)
Values(
'Yatin Chaudhari',
'101,Street No.16',
'Maharashtra',
 25,
'2021-05-03',
'Programmer',
52000.00,
'9594515799');
insert into employeeInfor(
Emp_name,
Address,
City,
Age,
DOJ,
Designation,
Salary,
Mobile)
Values(
'Snehal Kumar',
'107,Street No.293',
'Thane',
 22,
'2020-02-01',
'Programmer',
35000.00,
'9454647561');
insert into employeeInfor(
Emp_name,
Address,
City,
Age,
DOJ,
Designation,
Salary,
Mobile)
Values(
'Aditya Gaikwad',
'111,Street No.69',
'Pune',
 26,
'2019-11-05',
'Sr.Programmer',
50000.00,
'9564275648');
insert into employeeInfor(
Emp_name,
Address,
City,
Age,
DOJ,
Designation,
Salary,
Mobile)
Values(
'Priya Kumar',
'104,Street No.12',
'Jaipur',
 27,
'2020-05-03',
'Manager',
48000.00,
'9593952592');
insert into employeeInfor(
Emp_name,
Address,
City,
Age,
DOJ,
Designation,
Salary,
Mobile)
Values(
'Satish Kumar',
'104,Street No.12',
'Jaipur',
 23,
'2020-05-03',
'Manager',
42000.00,
'9593952592');

-- select -using select and getting particular columns form table through select command
select Emp_name,Mobile from employeeInfor;

-- select with  Where
select Emp_name,Mobile 
from employeeInfor
WHERE Designation= 'Programmer';

select Emp_name,Mobile,Designation,Salary
from employeeInfor
where Salary>45000.00;

select Emp_name,Mobile,Designation,Salary,Age
from employeeInfor
where Age>18;

-- Sql Update to make changes if entered wrong data or to make any changes

update employeeInfor
set Address = 'P79,Block No.5 '
Where ID = 6;

update employeeInfor
set Emp_name = 'Nightmare Raju'
Where ID = 6;

-- to look the data table info fully created
select * from employeeInfor;


-- will delete particular mention data id
delete from employeeInfor
where ID =6;


-- will delete all info only structure will be there
delete from employeeInfor;


-- delete the table
drop table employeeInfor;

-- The Sql AND operator
 
Select ID,Emp_name,Mobile,Designation,Salary
from EmployeeInfor
Where Designation = 'Programmer' and Age>23;


Select ID,Emp_name,Mobile,Designation,Salary
from EmployeeInfor
Where Designation = 'Programmer' and City = 'Maharashtra';

-- The Sql OR operator

Select ID,Emp_name,Mobile,Designation,Salary
from EmployeeInfor
Where Designation = 'Programmer' or Age>23;

Select ID,Emp_name,Mobile,Designation,Salary
from EmployeeInfor
Where Salary>20000 or City = 'Maharashtra';

--  the Sql Not Operator 
Select ID,Emp_name,Mobile,Designation,Salary
from EmployeeInfor
Where not Designation = 'Manager';

-- the Sql Like Operator
select * from employeeInfor
where city like 'J%';

-- - j% -start with
select * from employeeInfor
where Emp_name like 'S%';

-- %s end with 
select * from employeeInfor
where Emp_name like '%i';

-- Not Like operator

select * from employeeInfor
where Emp_name not like '%r';

-- the sql in operator

select * from employeeInfor
where City in('Maharashtra','Thane');

-- Not in operator 

select * from employeeInfor
where City NOt in('Maharashtra','Thane');


select * from employeeInfor
where Designation in('Programmer');


-- between operator
select * from employeeInfor
where Salary Between 30000 and 45000 ;

select * from employeeInfor
where ID Between 3 and 5  ;


select * from employeeInfor
where DOJ Between '2019-11-11 'and '2021-11-11'  ;

-- the Sql Select TOP clause Operator/  limit
-- select top clause to show specify the no of record from table 
-- not all database system support the select top clause mysql supports the limit clause

select * from employeeInfor
LIMIT 3;

-- the sql order by clause
-- sort the column data in ascending or descending order
-- ascending
select * from employeeInfor
order by Emp_name,Salary;
-- descending
select * from employeeInfor
order by Emp_name Desc;

-- WOrking with SQl Functions

-- count Function
select count(Emp_name)
from employeeInfor;

select count(Designation)
from employeeInfor;

-- SUM function
select SUM(salary)
From EmployeeInfor;

-- AVerage

select Avg(salary)
from EmployeeInfor;

-- minimum functiom
select Emp_name,min(Salary) As lowestSalary
From EmployeeInfor;

-- max function
select Emp_name,max(Salary) As MaximumSalary
From EmployeeInfor;

-- sql joins
-- sql joins is used to combine records from two or more tables 

Create Database companydb;
use companydb;
create table Customer
(
CustomerID int primary key,
CustomerName varchar(20),
City varchar(20)
);

Select * from Customer;

Insert into Customer values (101,'Ashish','kota');
Insert into Customer values (102,'Ajay','Ajmer');
Insert into Customer values (103,'jay','Bundi');
Insert into Customer values (104,'Aman','jhalawar');
Insert into Customer values (105,'Chirag','Udaipur');
Insert into Customer values (106,'Deepka','jodhpur');
Insert into Customer values (107,'Rohan','jaipur');
Insert into Customer values (108,'Dinesh','alwar');
Insert into Customer values (109,'Suresh','kota');
Insert into Customer values (110,'Ankit','jaipur');
Insert into Customer values (112,'Priya','thane');
create table Orders
(
OrderID  int,
CustomerID int primary key,
OrderDate date
);

select * from Orders;

Insert into Orders values (1,101,'2021-01-05');

Insert into Orders values (2,102,'2021-02-10');

Insert into Orders values (3,103,'2021-01-04');
Insert into Orders values (4,104,'2021-03-08');
Insert into Orders values (5,105,'2021-04-09');
Insert into Orders values (6,106,'2021-01-05');
Insert into Orders values (7,107,'2021-05-12');
Insert into Orders values (8,108,'2021-02-05');

Insert into Orders values (9,109,'2021-06-03');
Insert into Orders values (10,110,'2021-01-05');
Insert into Orders values (11,111,'2021-01-05');
Insert into Orders values (12,112,'2021-01-05');

-- inner join Query
select Orders.OrderID,Customer.CustomerName,Orders.OrderDate,Customer.City
from Orders
Inner join Customer on Orders.CustomerID=Customer.CustomerID;

Select Orders.OrderDate,Customer.City
from Orders
inner join Customer on Orders.CustomerID=Customer.CustomerID;

-- the sql Group by
-- the group by statement groups rows that have the same values into rows
-- .we can also use the functions (count(),max,min,sum,avg,with the group by statements.

select Count(designation),sum(salary),designation 
From employeeinfor
group by Designation;

create database hrms;
use hrms;
-- join is technique to retrieve/read/display data from more than one table
-- cross join -> retrieve/read/display data from more than one table without any condition
-- result is cartesian product
-- m no of row in table1 and n rows in table2
-- then output will be m*n  no. of rows
-- display the employee first name and their dept name.
-- firstname is in emp table, dept name is in department table
select first_name,department_name
from employees, departments;
-- out put will be 42*14 = 588 rows

-- 2 Inner join- > this ia join tehnique to retrieve data from mutiple table,
-- but only those rows will come which matches the join condition
-- equijoin
-- display the employee first name and their dept name.
select first_name,department_name,e.department_id
from employees e, departments d
where e.department_id=d.department_id;
-- display the employee first name and their dept name in the ascending order of department_id .
select first_name,department_name,e.department_id
from employees e, departments d
where e.department_id=d.department_id
order by e.department_id;

-- display the employee first name and their dept name of all employees who are working in Finance dept.

select first_name,department_name,e.department_id
from employees e, departments d
where e.department_id=d.department_id
and d.department_name='Finance';

-- old standard(1999)
select first_name,department_name,e.department_id
from employees e inner join departments d
on e.department_id=d.department_id
and d.department_name='Finance';

-- display the employee first name,doj and their dept name of the employee steven.
select e.first_name,e.hire_date,department_name,e.department_id
from employees e, departments d
where e.department_id=d.department_id
and e.first_name='steven';
-- display the employee first name,doj and their dept name of the employee working in dept 5,2,10,11
select e.first_name,e.hire_date,department_name,e.department_id
from employees e, departments d
where e.department_id=d.department_id
and e.department_id in(5,2,10,11);

-- Display the employee last name and department name for all employees who have an a (lowercase) in their last names. 
SELECT last_name, department_name 
FROM employees, departments 
WHERE employees.department_id = departments.department_id 
AND last_name LIKE '%a%';

-- display the emp name and job title of all employee
select e.first_name,j.job_title
from employees e, jobs j
where e.job_id=j.job_id;
-- display the emp name, dept name and their city
select e.first_name,d.department_name,e.department_id,l.city
from employees e, departments d,locations l
where e.department_id=d.department_id
and d.location_id=l.location_id;
-- display the emp name, dept name and their city of those employees who work in Seattle.
select e.first_name,d.department_name,e.department_id,l.city
from employees e, departments d,locations l
where e.department_id=d.department_id
and d.location_id=l.location_id
and l.city='Seattle';

-- display the departname and job title of every employee. 
select e.first_name,d.department_name,e.department_id,j.job_title
from employees e, departments d,jobs j
where e.department_id=d.department_id
and e.job_id=j.job_id; 

-- display the departname and job title of every employee who work as an accountant,public accountant or finance manager
 
select e.first_name,d.department_name,e.department_id,j.job_title
from employees e, departments d,jobs j
where e.department_id=d.department_id
and e.job_id=j.job_id
and job_title in ('accountant','public accountant' ,'finance manager'); 

-- self join
-- when one table/relation has relationship with itself
-- this is called as recussiove relatioship
-- relationship is "one of the employees manages other employee/employees"
-- so 1: M relationship between employee with itself
-- this can be implemented by making manager_id as Foreign key which refers the employee id of the same table
-- A SELF JOIN is a join that is used to join a table with itself.
-- We can perform Self Join using table aliases in the from clause. 



-- Display the manager name of each employee who has a manager. 
-- the below query will not work. result 0 rows
select employee_id,first_name,manager_id			
from employees worker,employees manager	
where manager_id=employee_id;			

-- self join, where we have create two copies of the same table
-- inner join
-- equi join
select worker.first_name,manager.first_name,worker.manager_id,manager.employee_id			
from employees worker,employees manager				
where worker.manager_id=manager.employee_id	;			


--  Display the manager name of Alexander. 

select worker.first_name,manager.first_name,worker.manager_id,manager.employee_id			
from employees worker,employees manager				
where worker.manager_id=manager.employee_id	
and worker.first_name='Alexander'		;

-- outer join
/* the row which do not match the join cndition will also come in output,
matched row will come as well as row which do not match the join cndition will also come in output,


1 left outer join/ left join
2. right outer join/right join
3. Full outer join/ union /union

1. left outer join
*/
use hrms;
-- display the employee first name and their dept name.(only for those who has dept id)
-- so we can do this through inner join
/*as only rows which matches the join condition will be in output */
select first_name,department_name,e.department_id
from employees e left outer join departments d
on e.department_id=d.department_id;

-- can also be written as follows with left join keyword
select first_name,department_name,e.department_id
from employees e left join departments d
on e.department_id=d.department_id;

-- right outer join
-- list all depts whether they have employees or not
-- all rows of right hand side table will come
select first_name,department_name,d.department_id
from employees e right outer join departments d
on e.department_id=d.department_id;

-- can also be written as follows with right join keyword
select first_name,department_name,e.department_id
from employees e right join departments d
on e.department_id=d.department_id;

-- Another example of left outer join 
-- display all employees and their manager name including King, who has no manager. 
-- all rows of employee table whether they have manager or not

select worker.first_name,manager.first_name,worker.manager_id,manager.employee_id			
from employees worker left outer join employees manager				
on worker.manager_id=manager.employee_id	;		

-- full outer join
-- display the all rows of both table

/* the below query will not work as mysql does not support FULL OUTER JOIN Syntax
select first_name,department_name,d.department_id
from employees e full outer join departments d
on e.department_id=d.department_id;
so this concept of full outer join can be done as below
with the concept of union keyword. */

use hrms;
select first_name,department_name,e.department_id
from employees e left outer join departments d
on e.department_id=d.department_id
union
select first_name,department_name,d.department_id
from employees e right outer join departments d
on e.department_id=d.department_id;
-- all 42 rows of employees table and and 3 rows extra from the departments table, so total 45 rows in output



call new_procedure1();
use companydb;
call demo1(102);

