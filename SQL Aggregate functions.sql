/*Aggregate function sum(),count(),max(),min() */
select sum(tickets) as sum_of_tickets,
count(tickets) as total_num_tickets
from purchase;

select max(tickets) as max_tickets_purchased, min(tickets) as min_tickets_purchased
from purchase;
