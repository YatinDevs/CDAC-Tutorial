db.employees.find()

db.employees.find(
{DEPARTMENT_ID:{$in:[40.50]}},
{FIRST_NAME:1,DEPARTMENT_ID:1,SALARY:1}
).sort({DEPARTMENT_ID:1})

/*
display the firstname , job id, hiredate of employee who works as an IT programmer or a st_clerk ,sa_man and their salary is greater than 7000
 */


db.employees.find(
{JOB_ID:{$in:["IT_PROG","ST_CLERK","SA_MAN"]},SALARY:{$gt:7000}},
{FIRST_NAME:1,JOB_ID:1,HIRE_DATE:1,_id:0}
).sort({DEPARTMENT_ID:1})

/*
$ and operator 

db.employees.find({$and:[{},{}]},{})

*/
db.employees.find(
{$and:[{JOB_ID:{$in:["IT_PROG","ST_CLERK","SA_MAN"]}},{SALARY:{$gt:7000}}]},
{FIRST_NAME:1,JOB_ID:1,HIRE_DATE:1,_id:0}
).sort({DEPARTMENT_ID:1})

/*
display the firstname , job id, hiredate of employee who do not works as an IT programmer or a st_clerk ,sa_man and their salary is greater than 7000
 */
 db.employees.find(
 {JOB_ID:{$nin:["IT_PROG","ST_CLERK","SA_MAN"]},SALARY:{$gt:7000}},
{FIRST_NAME:1,JOB_ID:1,HIRE_DATE:1,_id:0}
).sort({DEPARTMENT_ID:1})

/*
$ and operator 

db.employees.find({$and:[{},{}]},{})

*/
db.employees.find(
{$and:[{JOB_ID:{$nin:["IT_PROG","ST_CLERK","SA_MAN"]}},{SALARY:{$gt:7000}}]},
{FIRST_NAME:1,JOB_ID:1,HIRE_DATE:1,_id:0}
).sort({DEPARTMENT_ID:1})

/*
display the first documeent of collection 
*/
db.employee.findOne()
db.employee.find().limit(1)

/*
display the detail of employees working id depart 30
*/

db.employees.find({DEPARTMENT_ID:30})

/*
display the detail of employees who are not working in DEPARTMENT_ID 30
*/


db.employees.find({DEPARTMENT_ID:{$ne:30}})

db.employees.find(
{
$and:
[
{DEPARTMENT_ID:{$ne:50}},
{DEPARTMENT_ID:{$ne:30}}
]
},
{FIRST_NAME:1,DEPARTMENT_ID:1,SALARY:1}
)
 
/* 
display the employees whose salary is greater than 5000 and less than 10000 
*/

db.employees.find(
{$and:
[{SALARY:{$gt:5000}},
{SALARY:{$lt:10000}}]
},
{FIRST_NAME:1,DEPARTMENT_ID:1,SALARY:1}
).sort({SALARY:1})

db.employees.find(
{SALARY:{$gte:5000,$lte:10000}},
{FIRST_NAME:1,SALARY:1})

/*
 display the list of emp whose name starts with SALARY
*/

db.employees.find(
{FIRST_NAME:{$regex:'S.*'}})

db.employees.find(
{FIRST_NAME:/^Sh/})

db.employees.find(
{FIRST_NAME:/a$/})

db.employees.find(
{JOB_ID:/^IT/})

db.employees.find(
{FIRST_NAME:/.*an./})


db.employees.find(
{FIRST_NAME:{$regex:'s$'}})

/*
db.employees.update({EMPLOYEE_ID:101},{$set:{ename:"ADITYA"}})
*/

/*
update the salary of the employee to 12000 whose employee id =103

update employee set salary=12000
where employee_id=103
*/

db.employees.update({EMPLOYEE_ID:103},{$set:{ SALARY:12000}})

db.emp.update({},{$set:{ename:"aaa"}})

db.emp.update({emp_id:102},{$set:{ename:"bbb"}},{upsert:true})


db.emp.update({emp_id:103},{$set:{ename:"aaa"}},{upsert:true})

db.emp.update({emp_id:103},{$set:{experience:4}})
/*
increment a key value
*/


db.emp.update({emp_id:103},{$inc:{experience:5}})
db.emp.find()

db.employees.find({EMPLOYEE_ID:104})

/*
select * from employees where EMPLOYEE_ID =101 ;
*/

/*
update the salary of the employee to 15000 whose employee id=104

update employee set salary=15000
where employee_id = 104;
*/
db.employees.update({EMPLOYEE_ID:104},{$set: {SALARY:15000}})

db.employees.update({JOB_ID:'SA_MAN'},{$set:{EMAIL_ID:"*****"}})
db.employees.find({JOB_ID:'SA_MAN'})

db.employees.update({JOB_ID:'SA_MAN'},{$set:{EMAIL_ID:"*****"}},{multi:true})
//-------------------------
// will consider all document
db.emp.update({},{$set:{phone_no:9457158975}},{multi:true})
db.emp.find()
/*
increment a key value
*/


db.emp.update({emp_id:103},{$inc:{experience:5}})

db.employees.count()

/*
select sum(SALARY) from employees.
*/


db.emp.update({emp_id:105},{$set:{ename:"akaka"}},{upsert:true})

db.emp.update({emp_id:111},{$set:{ename:"siddhi",phone_no:9457158975,email:"abc@gmail.com",salary:15000}},{upsert:true})

db.emp.update({emp_id:{$in:[104,105]}},{$set:{experience:9}},{multi:true})


db.employees.aggregate([
{$group:{_id:"$DEPARTMENT_ID",
totalsal:{$sum:"$SALARY"}}
}])

db.employees.aggregate([
{$group:{_id:"$JOB_ID",
totalsal:{$sum:"$SALARY"}}
}])

/*
select sum(salary),departmentid
from employees group by department id
*/

/* 
select sum(salary)
from employee
*/

db.employees.aggregate([
{$group:{_id:"",
totalsal:{$sum:"$SALARY"}}
}])


db.employees.aggregate([{$group:{_id:"$DEPARTMENT_ID",total:{$sum:"$SALARY"}}}
,{$sort:{total:1}}])


/* 
find the minimum salary of all employees for each manager in the descending order
*/
db.employees.aggregate([{$group:{_id:"$MANAGER_ID",total:{$min:"$SALARY"}}}
,{$sort:{total:-1}}])

db.employees.find()

