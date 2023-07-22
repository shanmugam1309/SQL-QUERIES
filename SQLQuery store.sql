create procedure Getavgs
as
begin
select
User_profile.Roll_Number, User_Profile.First_Name, User_profile.Last_Name,User_Profile.Email,
mark_Details.Roll_Number, Mark_Details.Total_Mark,Mark_Details.Created_Date
from User_Profile
inner join Mark_Details on User_Profile.Roll_Number=Mark_Details.Roll_Number
end;

exec Getavgs

select * from User_Profile
/*-------------*/

create procedure datas(@User_id 




