select profile_id, first_name+ ' '+ last_name as Full_Name , phone from dbo.Profiles where profile_id=(SELECT top 1 profile_id from dbo.Tenancy_histories order by DATEDIFF(dd, move_in_date, move_out_date) DESC) 