# SQL-Works
Google data Analytics 
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that
are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and
returned to any other station in the system anytime. 

Ask:In this case study I am asuumed as a Junior Data Analyst of maketing team.The finance department at Cyclistic has determined that Members are the more profitable customer segment and have tasked the marketing department with creating a campaign aimed at converting Casuals to Annual Members. To help them complete this business task.The marketing team has to find the answer to How do annual members and casual riders use Cyclistic bikes differently?
Prepare: As Jr.Analyst I will analyze Cyclistic bike trip data for all 12 months in 2021. The data is relaible and stored in company DB in CSV format seperated by months.
Data Cleaning : 
- checked ride_id as a primary key and had no duplicates
- Ensure rideable type. There are 3 types classic, docked and electric bike, where in docked is classic bike type sos changed the name
- start and end date/time : trip which has less than a minute and more than 1 day is removed.
-  start and end station : classic bikes must have start and end docking station but not the electric bike. so classic bikes which has no end or start station rows has to be removed
-  members/casual : checked dcolumns indicates either of the member status.


