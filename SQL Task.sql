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


