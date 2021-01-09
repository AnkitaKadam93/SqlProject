SELECT house_id, house_type, bhk_details, bed_count, beds_vacant, furnishing_type From Houses
where house_id IN (SELECT TOP 1 WITH TIES house_id From Houses ORDER BY (bed_count - Beds_vacant) DESC)