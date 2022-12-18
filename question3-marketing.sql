 
 -- Identify the winner of the contest and provide their details to the team

select users.id,users.username as Username_of_Winner,users.created_at as Profile_created_date,
       photos.id as Photo_Id,
       count(photo_id) as COUNT_OF_LIKE_ON_Photo
from likes
join photos on photos.id=likes.photo_id
join users on users.id=likes.user_id
group by photos.id
order by COUNT_OF_LIKE_ON_Photo desc
LIMIT 1;
