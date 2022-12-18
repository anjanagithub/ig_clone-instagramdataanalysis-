--  Provide data on users (bots) who have liked every single photo on the site
--  (since any normal user would not be able to do this).
select u.id,u.username, u.created_at,
 count(u.id ) as Like_on_every_single_photo
from users u
join likes l
on u.id=l.user_id
group by u.id
having Like_on_every_single_photo = (select count(id) from photos)
order by u.username;