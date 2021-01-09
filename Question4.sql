SELECT DISTINCT p.first_name + ' ' + p.last_name as full_name, p.email, p.phone, r.Bonus, p.referral_code
From Profiles p 
Full Join 
(SELECT referrer_id, SUM(referrer_bonus_amount) As Bonus from Referrals GROUP BY referrer_id) AS r 
On p.profile_id = r.referrer_id
where profile_id In (Select referrer_id From Referrals GROUP BY referrer_id HAVING COUNT(referrer_id) > 1)