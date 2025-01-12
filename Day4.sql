select * from department;
select * from Employee;

--employee 
select *
from Employee
where did is not null

--employee ,departname
--joins left,r,inner,outer,self,impl.
select Employee.*,name --3
from Employee,department --1
where Employee.did=department.id --2

select Employee.* ,name
from Employee inner join department
on Employee.did=department.id

--all employee data ,departname
--all employee which belong to departmnt or not
select *
from Employee left join department
on Employee.did=department.id
--all dept which has employee or not
select *
from Employee right join department
on Employee.did=department.id

select concat(FirstName,' ',LastName)
from department left join Employee
on Employee.did=department.id

---employee,managername
select  concat(emp.FirstName,' ',emp.LastName) as employeename,
concat(manager.FirstName,' ',manager.LastName) as managername
from Employee as emp right join Employee as manager
on emp.ManagerID=manager.id

select Employee.FirstName,m.FirstName
from Employee as m ,Employee
where m.id=Employee.ManagerID

select *
from Employee as manager,Employee
where Employee.ManagerID=manager.id

select Employee.FirstName as emp,m.FirstName as manager
from Employee  ,Employee as m --->
where Employee.ManagerID=m.ID


--all emplpoyee belong to dept or not
--- & all depart has employee or not
select *
from Employee full outer join department
on Employee.did=department.id

select * from Employee,department

select *
from Employee cross join department

--natural
select * from Employee,department
select concat(FirstName,' ',LastName)
select *
from department left join Employee
on Employee.did=department.id
union
select *
from department Right join Employee
on Employee.did=department.id

--count columns,same data types
select FirstName,'Femal'
from Employee
where Gender='F'
union
select 'Male',FirstName
from Employee
where Gender='M'

-------------aggreation
-- dept,count employee,count >3
select ManagerID,department.name,count(*)--5
from Employee,department--deptname,e1 --1
where Employee.did=department.id--2
and department.name='pd'
group by department.name,ManagerID --3
having count(*)>3
order by ManagerID desc--6



