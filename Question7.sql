Update Referrals
Set valid_till=DATEADD(MM,1,valid_till) 
where ref_id In (Select referrer_id From Referrals GROUP BY referrer_id HAVING COUNT(referrer_id) > 2)