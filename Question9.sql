SELECT p.profile_id, first_name + ' ' + last_name as full_name, phone, email, city, house_type, bhk_details
From  referrals r 
Full Join Profiles p on r.referrer_id = p.profile_id 
Full Join Tenancy_histories t On p.profile_id = t.profile_id
Full Join Houses h On h.house_id = t.house_id
Full Join Addresses a On a.house_id = h.house_id
where ref_id IS NULL