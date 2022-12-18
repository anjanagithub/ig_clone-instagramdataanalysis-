-- What day of the week do most users register on?
--  Provide insights on when to schedule an ad campaign
select dayname(created_at) AS Day_Of_The_week, COUNT(*) AS Number_of_registrations_done
from users
group by Day_Of_The_week
order by Number_of_registrations_done desc
limit 2;

