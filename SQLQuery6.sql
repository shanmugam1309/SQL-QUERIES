use student_details;

create table admin(
id int identity(1,1) primary key,
name varchar(50),
email varchar(50),
is_active int,
created_date datetime,
)

select * from admin

insert into admin
values('praba', 'praba123@gmail.com', 1, GETDATE()),
('jana', 'jana789@gmail.com', 1, GETDATE()),
('prian', 'prian121@gmail.com', 1, GETDATE())

/*-------------------------*/
/*create database*/
create database student_details;
use student_details;

/*create table*/
create table details(
student_id int identity(1,1) primary key,
student_name varchar (50),
roll_no int,
school_name varchar(50),
city varchar(50),
join_date  datetime,
modified_date datetime 
)

select * from details

/*insert table*/
insert into details
values('chandru', 7077, 'kamarajar_high_school', 'pondicherry', CURRENT_TIMESTAMP, GETDATE()),
('arun', 4521, 'kamarajar_high_school', 'tamil_nadu', CURRENT_TIMESTAMP, GETDATE()),
('ravi', 7896, 'kamarajar_high_school', 'tamil_nadu', CURRENT_TIMESTAMP, GETDATE()),
('moorthy', 4215, 'kamarajar_high_school', 'pondicherry', CURRENT_TIMESTAMP, GETDATE()),
('raj', 1235, 'kamarajar_high_school', 'pondicherry', CURRENT_TIMESTAMP, GETDATE()),
('sathish', 7219, 'kamarajar_high_school', 'tamil_nadu', CURRENT_TIMESTAMP, GETDATE())

/*update*/
update details
set student_name='kumar',modified_date=GETDATE()
where student_id=3

/*delete*/
delete from details
where student_id=4 ;

/*------------------------*/
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
set English_Mark=95, id=2, modified_date=GETDATE()
where student_id=2;
/*-----------------------*/

select * from admin
select * from details
select * from Mark_details

/*joins*/

/*inner joins*/
select details.student_id, Mark_details.first_name, Mark_details.last_name, details.roll_no, Mark_details.Total_Mark
from details
inner join Mark_details on details.student_id=Mark_details.student_id;

/*left join*/
select details.student_id, details.student_name, details.roll_no, Mark_details.parent_contact_no, Mark_details.mark_Percent
from details
left join Mark_details on details.student_id=Mark_details.id;

/*right join*/
select Mark_details.student_id, Mark_details.first_name, Mark_details.last_name, Mark_details.email, Mark_details.mark_Percent, details.student_id, details.city, details.join_date
from details
right join Mark_details on details.student_id=Mark_details.student_id;

/*full join*/
select details.student_id, details.student_name, details.roll_no, details.city, details.join_date, Mark_details.student_id, Mark_details.parent_contact_no, Mark_details.Total_Mark
from details
full join  Mark_details on  details.student_id=Mark_details.student_id;

/*self join*/
select a.first_name, a.last_name, b.parent_contact_no, b.roll_no
from Mark_details a
join Mark_details b on a.student_id=b.id;



