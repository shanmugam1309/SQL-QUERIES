use student_details;

create table Mark_details(
student_id int identity(1,1) primary key,
first_name varchar (50),
last_name varchar(50),
email varchar(50) unique,
parent_contact_no bigint unique,
id int,
Foreign key(id)References admin(ID),
roll_no int,
Tamil_Mark int,
English_Mark  int,
Maths_Mark int,
Science_Mark int,
Social_Mark int,
Total_Mark int,
mark_Percent int,
create_date datetime,
modified_date datetime
)

select * from Mark_details

insert into Mark_details
values ('chandra','mohan','chandru007@gmail.com',9362812101, 2, 7077, 52, 71, 62, 77, 58, 320, 64, CURRENT_TIMESTAMP, GETDATE()),
('arun', 'kumar', 'arun123@gmail.com', 8201248523, 1, 4521, 74, 55, 84, 70, 90, 374, 69, CURRENT_TIMESTAMP, GETDATE()),
('ravi', 'kumar', 'ravi098@gmail.com', 8601475231, 3, 7896, 50, 49, 75, 81, 92, 347, 66, CURRENT_TIMESTAMP, GETDATE()),
('sakthi', 'mugesh', 'sakthi567@gmail.com', 9643075102, 2,  4215, 80, 57, 94, 72, 93, 396, 72, CURRENT_TIMESTAMP, GETDATE()),
('raja', 'ram', 'raja789@gmail.com',8521039745, 1, 1235, 60, 79, 68, 80, 94, 381, 70, CURRENT_TIMESTAMP, GETDATE()),
('john', 'deo', 'john343@gmail.com', 9852001540, 3, 7219, 80, 94, 79, 82, 69, 404, 79,  CURRENT_TIMESTAMP,  GETDATE())


update Mark_details
set Tamil_Mark=95, id=1, modified_date=GETDATE()
where student_id=3;




