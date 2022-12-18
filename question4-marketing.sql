--  Identify and suggest the top 5 most commonly used hashtags on the platform

select tag_name, count(tag_name) as count_tag
from tags
group by id
order by id desc
 limit 5;
