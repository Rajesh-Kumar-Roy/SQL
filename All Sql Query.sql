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