-- Find the 5 oldest users of the Instagram from the database provided 
select id,username as Most_Loyal_Users, created_at
from users
order by created_at asc
limit 5;
