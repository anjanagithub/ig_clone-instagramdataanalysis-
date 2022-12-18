-- Find the users who have never posted a single photo on Instagram

select u.id ,u.username as Inactive_users,u.created_at
from users as u
left join photos as p
on u.id=p.user_id
where p.user_id is null
order by u.username;