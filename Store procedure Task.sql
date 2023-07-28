/*Create Database*/
Create Database Twilight
use Twilight
/*------------*/

/*Create Table Roll*/
create table Rolls(
Roll_Id int identity(1,1) primary key,
Roll_Name varchar(50),
Created_Date datetime,
Modified_Date datetime,
Created_By varchar(50),
Modified_By varchar(50)
)
Select * From Rolls

/*Insert Values*/
insert into Rolls (Roll_Name, Created_Date, Modified_Date)
values ('Admin',  GETDATE(), GETDATE()),
('Principal', GETDATE(), GETDATE()),
('Vice_principal', GETDATE(), GETDATE()),
('Staff', GETDATE(), GETDATE()),
('Account_dep', GETDATE(), GETDATE()),
('Student', GETDATE(), GETDATE())
/*--------------*/

/*Create table User_Profile*/
create table User_Profiles(
User_id int identity(1,1) primary key,
Roll_number int,
First_Name varchar (50),
Last_Name varchar(50),
Roll_Id int,
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
select* from User_Profiles

/*Insert Values*/
insert into User_Profiles(Roll_number,First_Name,Last_Name,Roll_Id,Email,Contact_No,Address,City,User_Name,
User_Password,Create_Date,Modified_Date,Created_By)
values
(7877,'Chandra','Mohan',1,'chandru007@gmail.com',9362812101,'Vallular Street','Puducherry','Chandra123','Chan@123',GETDATE(),GETDATE(),'Admin'),
(5214,'Arun','Kumar',3,'arun123@gmail.com',8201248523,'Murugan Nagar','Tamilnadu','Arun525','kum@525',GETDATE(),GETDATE(),'Vice_Principal'),
(9632,'Ravi', 'Kumar',2,'ravi098@gmail.com', 8601475231,'Krishna Nagar','Puducherry','Kumar343','Ravi@232',GETDATE(),GETDATE(),'Principal'),
(7412,'Sakthi', 'Mugesh',4,'sakthi567@gmail.com', 9643075102,'Kumaran Street','Tamilnadu','Sakthi890','Mug@098',GETDATE(),GETDATE(),'Staff'),
(2871,'Raja', 'Ram',1,'raja789@gmail.com',8521039745,'RKN Street','Puducherry','Raja567','Ram@876',GETDATE(),GETDATE(),'Admin'),
(8821,'John','Deo',1,'john123@gmail.com',9360107501,'kannan Nagar','Puducherry','Deo123','John@321',GETDATE(),GETDATE(),'Admin'),
(5519,'Ram','Prabu',3,'ram@567gmail.com',9852013548,'Gopal Street','Tamilnadu','Ram456','Prabu@654',GETDATE(),GETDATE(),'Vice_Principal'),
(4215,'Kirshna','Raj',5,'krishna@098gmail.com',8620749501,'Pillalyar Nagar','Puducherry','Krishna009','Raj@098',GETDATE(),GETDATE(),'Staff'),
(8007,'Anbu','Mani',3,'anbu231@gmail.com',8201496337,'MKN Street','Tamilnadu','Anbu789','Mani@987',GETDATE(),GETDATE(),'Vice_Principal'),
(5741,'Barathi','Raja',2,'barathi567@gmai.com',9501743025,'Amman Nagar','Puducherry','Barathi221','Raja@675',GETDATE(),GETDATE(),'Principal'),
(8547,'Bala','Murugan',4,'bala221@gmail.com',9852014785,'MMN Street','Tamilnadu','Bala321','Murg@123',GETDATE(),GETDATE(),'Staff'),
(3003,'Kamala','Kannan',1,'kam111@gmail.com',8400321450,'DMK Nagar','Tamilnadu','Kamal333','Kannan@321',GETDATE(),GETDATE(),'Admin'),
(4087,'Suriya','Kumar',2,'suriya111@gmail.com',8521063745,'Sagar Street','Puducherry','Suriya212','Kumar@221',GETDATE(),GETDATE(),'Principal'),
(7788,'Selva','Kumar',3,'Selva099@gmail.com',8702135194,'Makal Street','Tamilnadu','Selva323','Kum@101',GETDATE(),GETDATE(),'Vice_Principal'),
(5119,'Mohan','Raj',4,'mohan777@gmail.com',9852147852,'Eagle Street','Puducherry','Mohan434','Raj@777',GETDATE(),GETDATE(),'Staff')
/*------------------*/

/*Create Table Mark_Details*/
create table Mark_Detail(
User_id int identity(1,1) primary key,
Roll_Number int,
First_Name varchar (50),
Last_Name varchar(50),
Roll_Id int,
Tamil_Mark int,
English_Mark int,
Maths_Mark int,
Science_Mark int,
Social_Mark int,
Total_Mark int,
Created_Date datetime,
Modified_Date datetime,
Created_By varchar(50),
Modified_By varchar(50)
)
Select * From Mark_Detail

Insert Into Mark_Detail (Roll_Number,First_Name,Last_Name,Roll_Id,Tamil_Mark,English_Mark,Maths_Mark,Science_Mark,
Social_Mark,Total_Mark,Created_Date,Modified_Date,Created_By)
values 
(7877,'chandra','mohan',1,80,75,96,91,85,427,GETDATE(),GETDATE(),'Admin'),
(5214,'arun','kumar',3,69,86,75,85,90,405,GETDATE(),GETDATE(),'Vice_Principal'),
(9632,'ravi', 'kumar',2,55,85,74,79,91,384,GETDATE(),GETDATE(),'Principal'),
(7412,'sakthi', 'mugesh',4,95,55,62,51,72,335,GETDATE(),GETDATE(),'Staff'),
(2871,'raja', 'ram',1,78,92,49,88,90,397,GETDATE(),GETDATE(),'Admin'),
(8821,'John','Deo',1,55,85,71,69,91,371,GETDATE(),GETDATE(),'Admin'),
(5519,'Ram','Prabu',3,85,78,59,89,95,406,GETDATE(),GETDATE(),'Vice_Principal'),
(4215,'Kirshna','Raj',5,91,90,76,69,90,416,GETDATE(),GETDATE(),'Staff'),
(8007,'Anbu','Mani',3,59,89,92,87,96,423,GETDATE(),GETDATE(),'Vice_Principal'),
(5741,'Barathi','Raja',2,80,59,72,70,50,331,GETDATE(),GETDATE(),'Principal'),
(8547,'Bala','Murugan',4,72,89,95,90,85,431,GETDATE(),GETDATE(),'Staff'),
(3003,'Kamala','Kannan',1,70,59,49,68,81,327,GETDATE(),GETDATE(),'Admin'),
(4087,'Suriya','Kumar',2,91,72,80,69,85,397,GETDATE(),GETDATE(),'Principal'),
(7788,'Selva','Kumar',3,50,85,79,62,88,364,GETDATE(),GETDATE(),'Vice_Principal'),
(5119,'Mohan','Raj',4,89,75,69,94,59,386,GETDATE(),GETDATE(),'Staff')
/*------------------*/

Select * From Rolls
select* from User_Profiles
Select * From Mark_Detail

/*------------------*/
/*Task Joins*/
Create Procedure SP_TableJoin
As
Begin
	Set nocount on;
	Select 
		User_Profiles.Roll_number, User_Profiles.First_Name, User_Profiles.Last_Name, Rolls.Roll_Name, User_Profiles.Email,
		Mark_Detail.Roll_Number, Mark_Detail.Total_Mark, Mark_Detail.Created_Date, Mark_Detail.Created_By
	From User_Profiles
	Inner join Rolls On User_Profiles.Roll_Id=Rolls.Roll_Id
	Inner Join Mark_Detail On Rolls.Roll_Id=Mark_Detail.Roll_Id
	--Order By User_Profiles.First_Name ASC
End;
Exec SP_TableJoin

/* Task (Store Procedure Filter)*/
Create Procedure Filter (@First_Name varchar(50), @Roll_Number int)
As
Begin
	Select 
		User_id,
		Roll_Number,
		First_Name,
		Last_Name,
		Email,
		Contact_No,
		Address,
		City,
		User_Name,
		User_Password,
		Create_Date,
		Modified_Date,
		Created_By,
		Modified_By
	From 
		User_Profiles
	Where
		First_Name = @First_Name AND
        Roll_number = @Roll_Number;
End;
Exec Filter @First_Name='Selva', @Roll_Number=7788;
/*-----------------*/

/*Task Pagination*/
CREATE PROCEDURE Pagination(@PageNumber INT,@PageSize INT)
AS
BEGIN
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;

    SELECT * FROM User_Profiles
    ORDER BY User_id 
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END
EXEC Pagination @PageNumber = 3, @PageSize = 5;
/*--------------------*/S