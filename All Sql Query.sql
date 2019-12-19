--Create Database
Create Database Simple5
Use [Simple5]
GO

--Create Table
Create Table tblPerson
(
Id int Identity(1,1) Not Null,
Name varchar(55) Not Null,
Gamil Varchar(55) Not NUll,
GenderId int null


)

Create Table tblGender
(
Id int Identity(1,1) Not null,
Name Varchar(55) Null
)


--Insert to Table
Insert Into tblGender (Name) values ( 'Male')
Insert Into tblPerson(Name,Gamil,GenderId,Age) values ('Rajesh','r@gmail.com',3,102)


--ADD Primary key in Existing Table
Alter Table tblPerson
Add primary key(Id)
Alter Table tblGender
Add primary key(Id)


--Add Foreign key in Existing Table
Alter Table tblPerson add Constraint Fk_tblPerson_GenderId
Foreign key (GenderId) references tblGender(Id)

Insert Into tblGender (Name) values ('Female')
Insert Into tblGender (Name) Values ('Unknown')

--Add Default Constraint in Existing Table
Alter Table tblPerson
Add Constraint DF_tblPerson_GenderId
Default 1 For GenderId

--Add Column
Alter Table tblPerson
Add Age int 
 --Drop Column
Alter table tblPerson
Drop Column Age

--Delete All Data From Column
Delete from tblPerson

--Add Column with not Null in Existing Table
Alter Table tblPerson
Add Age int not Null



--Add Check Constraint 
Alter table tblPerson
Add Constraint CK_tblPerson_Age Check  (Age>0 And Age<110)


--Day 2 tutorial 8
Create Table Test1
( 
Id int Identity(1,1),
Value nvarChar(22)
)
Create Table Test2
(
Id int Identity(1,1),
Value nvarchar(20)
)
Select * from Test1
SElect * from Test2

Insert Into Test1(Value) values('x')

-- return Last Generated Id from table

Select Scope_Identity()
SELECT @@IDENTITY

--return Last Id from table any Section
Select IDENT_CURRENT('Test2')


--Make Trigger
Create Trigger trForInsert on Test1 for Insert
as
Begin
       Insert into Test2 values('yyyy')
End
Select * From tblGender
Select * From tblPerson

--Add Unique Key Constraint
Alter table tblPerson
Add Constraint UQ_tblperson_email Unique (Gamil)

--Delete row From table
Delete From tblPerson where Id = 8

Insert Into tblPerson (Name,Gamil,GenderId,Age) values ('Rajesh','rr@gmail.com',2,40)

--Drop Contstraint 
Alter Table tblPerson
Drop Constraint UQ_tblperson_email 


Use[Simple5]
GO

--order By Dessending
Select * from tblPerson Order by Name DESC
Select * from tblPerson Order by Age ASC

-- return top rows
Select top 2 * from tblperson
-- percent table
Select  top 50 percent* from tblPerson

Alter table tblPerson
add Salary  int
--Delete Column
Alter table tblPerson 
Drop Column Salary


--set Null TO NOt null In Existing Column
Alter table tblPerson
alter Column Salary int NOT NULL

--Use minimun and Maximun 
SElect Min(Salary)  From tblPerson
Select Max(Salary) from tblPerson
Select Sum (Salary) from tblPerson

--group By 
Select City, sum(Salary) as totalSalary
from tblPerson Group By City


Select City,Age,Sum(Salary) as totalSalary
from tblPerson Group By City ,Age 

--Here show the result of 3 person age and city  is same.  Must use group By
Select City,Age,Sum(Salary) as totalSalary,Count(Id) as [Total Person]
from tblPerson Group By City,Age

--count of number
Select Count(Id) from tblPerson

--felter the groups
Select City,Age, Sum(Salary) as totalSalary,Count(Id) as TotalPerson
from tblPerson 
where Age= 50
Group By City,Age

--Having 
Select City,Age,Sum(Salary) as totalSalary,Count(Id) as TotalPerson
from tblPerson
Group By City,Age
Having Age=50

Select City,Age,Sum(Salary) as totalSalary,Count(Id) as TOtalPerson
from tblPerson
Group By City,Age
Having sum(Salary)>86000

--Create Department Table and Employee
Create Table Employee
(
Id int identity(1,1) not Null Primary Key,
Name varchar(55) Not Null,
Gender varchar(55) Not NULL,
Salary int Not NUll,
DepartmentId int NUll
)
Create Table Department
(
Id int Identity(1,1) not NULL Primary Key,
Name varchar(55) not NUll,
Location varChar(55) Not Null,
Depa
rtmentHead varchar(55) Null
)
Select * from Department
Select * from Employee

Alter Table Employee 
Add Constraint FK_employee_DepartmentId
foreign key(DepartmentId) references Department(Id)

--Rename Column Name
EXEC sp_RENAME 'Department.Name','DepartmentName','COLUMN'

Insert Into Employee (Name,Gender,Salary) values('Sara','Female',82000)
Insert Into Department (Name,Location,DepartmentHead) values ('BBA','RUET','RS Roy')
--Join
Select Name,Gender,Salary,DepartmentName
from Employee 
Join Department 
on Employee.Id = Department.Id


