create procedure sp_getaverage
as
begin
select * from student_profile
end

exec sp_getaverage

alter procedure sp_getaverage
@mark_percentage int
as
begin
select @mark_percentage from student_profile
where mark_Percentage=@mark_percentage
end

exec sp_getaverage 70
