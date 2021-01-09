Alter Table Tenancy_histories Drop Column [Customer_Segment]
Alter Table Tenancy_histories Add Customer_Segment[varchar](255)
Update Tenancy_histories SET Customer_Segment = 'Grade A' where rent > 10000
Update Tenancy_histories SET Customer_Segment = 'Grade C' where rent < 7500
Update Tenancy_histories SET Customer_Segment = 'Grade B' where rent <= 10000 AND rent >=7500
SELECT p.profile_id, p.first_name + ' ' + p.last_name As Full_Name, p.phone, p.[city(hometown)], t.Customer_Segment 
from Profiles p
Full join
Tenancy_histories t
On p.profile_id = t.profile_id
