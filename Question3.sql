SELECT DISTINCT P.profile_id, P.first_name,P.last_name, P.phone, P.email, P.[city(hometown)],T.house_id,T.move_in_date,T.move_out_date, T.rent,E.latest_employer, E.occupational_category 
FROM Profiles P 
inner join 
Tenancy_histories T
on P.profile_id = T.profile_id 
inner join 
Employment_details E
on T.profile_id = E.profile_id
inner join Referrals R
on E.profile_id = R.ref_id
where [city(hometown)] in ('Bangalore', 'Pune') AND T.move_in_date>'20150101' AND T.move_out_date<'20160101' ORDER BY T.rent DESC;