/*using INNER JOIN to find info of friends who have both fav color and movie */
select c.friend,c.color,m.movie 
from fav_color as c
join fav_movie as m
on c.friend=m.friend;
