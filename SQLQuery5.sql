create table Roll(
Roll_Id int identity(1,1) primary key,
Roll_Name varchar(50),
Created_Date datetime,
Modified_Date datetime,
Created_By varchar(50),
Modified_By varchar(50)
)
select * from Roll

insert into Roll (Roll_Name, Created_Date, Modified_Date)
values ('Admin',  GETDATE(), GETDATE()),
('Principal', GETDATE(), GETDATE()),
('Vice_principal', GETDATE(), GETDATE()),
('Staff', GETDATE(), GETDATE()),
('Account_dep', GETDATE(), GETDATE()),
('Student', GETDATE(), GETDATE())


/*--------------*/
create table User_Profile(
User_id int identity(1,1) primary key,
Roll_number int,
First_Name varchar (50),
Last_Name varchar(50),
Email varchar(50) unique,
Contact_No bigint unique,
Address varchar(150),
City varchar(50),
User_Name varchar(50),
User_Password varchar(50),
Create_Date datetime,
Modified_Date datetime,
Created_By varchar(50),
Modified_By varchar(50)
)
select* from User_Profile

insert into User_Profile(Roll_number,First_Name,Last_Name,Email,Contact_No,Address,City,User_Name,User_Password,Create_Date,Modified_Date,Created_By)
values(7877,'chandra','mohan','chandru007@gmail.com',9362812101,'vallular street','Puducherry','chandra123','chan@123',GETDATE(),GETDATE(),'Admin'),
(5214,'arun','kumar','arun123@gmail.com',8201248523,'murugan nagar','tamilnadu','arun525','kum@525',GETDATE(),GETDATE(),'Admin'),
(9632,'ravi', 'kumar','ravi098@gmail.com', 8601475231,'krishna nagar','puducherry','kumar343','ravi@232',GETDATE(),GETDATE(),'Admin'),
(7412,'sakthi', 'mugesh', 'sakthi567@gmail.com', 9643075102,'kumaran street','tamilnadu','sakthi890','mug@098',GETDATE(),GETDATE(),'Admin'),
(2871,'raja', 'ram','raja789@gmail.com',8521039745,'rkn street','puducherry','raja567','ram@876',GETDATE(),GETDATE(),'Admin')

/*---------------------*/

create table Mark_Details(
User_id int identity(1,1) primary key,
Roll_Number int,
First_Name varchar (50),
Last_Name varchar(50),
Tamil_Mark int,
English_Mark int,
Maths_Mark int,
Science_Mark int,
Social_Mark int,
Total_Mark int,
Created_Date datetime,
Modified_Date datetime,
Modified_By varchar(50)
)
select * from Mark_Details

insert into Mark_Details(Roll_Number,First_Name,Last_Name,Tamil_Mark,
English_Mark,Maths_Mark,Science_Mark,Social_Mark,Total_Mark,Created_Date,Modified_Date)
values (7877,'chandra','mohan',80,75,96,91,85,427,GETDATE(),GETDATE()),
(5214,'arun','kumar',69,86,75,85,90,405,GETDATE(),GETDATE()),
(9632,'ravi', 'kumar',55,85,74,79,91,384,GETDATE(),GETDATE()),
(7412,'sakthi', 'mugesh',95,55,62,51,72,335,GETDATE(),GETDATE()),
(2871,'raja', 'ram',78,92,49,88,90,397,GETDATE(),GETDATE())
/*-----------------*/

select * from Roll
select* from User_Profile
select * from Mark_Details
/*------------*/


/*Create View*/
create view View_Query
As
select User_Profile.Roll_number,User_Profile.First_Name,
Mark_Details.Roll_Number,Mark_Details.User_id,Mark_Details.Total_Mark
from User_Profile 
inner join Mark_Details  
on User_Profile.User_id=Mark_Details.User_id;
/*-----------------*/




