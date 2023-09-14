SELECT  * FROM sql-learning-test.Bikers_New_2021.bikers_all_months limit 10;


# To find out whether the primary key ride_id has no duplicates and has only string value as 16
select length(ride_id),count(*)
from sql-learning-test.Bikers_New_2021.bikers_all_months
group by length(ride_id);

# changing docked bike into classic bike 

update sql-learning-test.Bikers_New_2021.bikers_all_months
set rideable_type=replace(rideable_type,'docked_bike','classic_bike')
where rideable_type is not null;


select rideable_type from sql-learning-test.Bikers_New_2021.bikers_all_months
where rideable_type="docked_bike";

# finding less than 1 min and more than a day ride to delete those rows( 163630 rows)
select * from sql-learning-test.Bikers_New_2021.bikers_all_months
where timestamp_diff(ended_at,started_at,minute)<=1 or
timestamp_diff(ended_at,started_at,minute)>=1440 ;

delete  from sql-learning-test.Bikers_New_2021.bikers_all_months
where timestamp_diff(ended_at,started_at,minute)<=1 or
timestamp_diff(ended_at,started_at,minute)>=1440 ;

#4. Check the start/end station name/id columns for naming inconsistencies
select start_station_name,count(*)
from sql-learning-test.Bikers_New_2021.bikers_all_months
group by start_station_name
order by start_station_name;

select end_station_name	,count(*)
from sql-learning-test.Bikers_New_2021.bikers_all_months
group by end_station_name	
order by end_station_name	; 

select rideable_type,count(*) as num_ride
from sql-learning-test.Bikers_New_2021.bikers_all_months
where start_station_name is NULL or end_station_name is NULL or end_station_id is NULL or start_station_id is NULL
group by rideable_type;

select count(1)
from sql-learning-test.Bikers_New_2021.bikers_all_months
where rideable_type="classic_bike" and (start_station_name is NULL or end_station_id is NULL) ;


delete 
from sql-learning-test.Bikers_New_2021.bikers_all_months
where rideable_type= "classic_bike" and (start_station_name is NULL or end_station_id is NULL) ;


update sql-learning-test.Bikers_New_2021.bikers_all_months
set rideable_type=replace(rideable_type,'electric_bike','on the lock')
where rideable_type="electric_bike" and(start_station_name is NULL or end_station_id is NULL );

#check any null values in lattitude and longtitude columns and remove it
select * from sql-learning-test.Bikers_New_2021.bikers_all_months
where start_lat IS NULL or start_lng IS NULL OR
end_lat IS NULL OR
end_lng IS NULL;

# confirming whether there are only tow2 type of memebere(memeber?casual)
select distinct(member_casual)
from sql-learning-test.Bikers_New_2021.bikers_all_months;

#Aggregate_trip as 
Alter table sql-learning-test.Bikers_New_2021.bikers_all_months
Add column Ride_day int,
Add column Ride_month string;


/* converting on the lock bike as a elecrtic bike*/

select count(*) from 
sql-learning-test.Bikers_New_2021.bikers_all_months
where rideable_type= "electric_bike"; 

select * from
sql-learning-test.Bikers_New_2021.bikers_all_months;

update sql-learning-test.Bikers_New_2021.bikers_all_months
set rideable_type=replace(rideable_type, "on the lock" , 'electric_bike')
where rideable_type = 'on the lock';
