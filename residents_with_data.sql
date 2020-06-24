select c.name, string_agg(s.description, ', ') as services
from customers c 
left join customers_services cs on c.id = cs.customer_id 
left join services s on cs.service_id = s.id 
group by c.id;

select c.name, s.description as services
from customers c 
left join customers_services cs on c.id = cs.customer_id 
left join services s on cs.service_id = s.id 
group by c.id;