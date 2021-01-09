CREATE VIEW [vw_tenant] AS
SELECT p.profile_id, rent, move_in_date, house_type, beds_vacant, description, city
FROM Profiles p
Full Join 
Tenancy_histories t 
ON p.profile_id = t.profile_id
Full Join
Houses h
ON t.house_id = h.house_id
Full Join
Addresses a
On h.house_id = a.house_id
where (move_in_date > '20150130') AND (bed_count IS NOT NULL)
