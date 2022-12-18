-- Provide how many times does average user posts on Instagram. 
-- Also, provide the total number of photos on Instagram/total number of users

SELECT 
     (
        (SELECT COUNT(id)FROM photos)/(SELECT COUNT(id) FROM users)
     )
        as total_no_of_photos_by_total_no_of_users;
