-- join table
select p.product_line,p.product_code, o.sales, c.customer_name from products p
join orders o on  p.product_code = o.product_code 
join customers c on o.customer_name = c.customer_name;

-- use aggregate function

select sum(o.sales), p.product_line ,p.product_code from products p
join orders o on  p.product_code = o.product_code 
group by p.product_line
order by sum(o.sales) desc;

select sum(o.sales), c.customer_name from orders o 
join customers c on c.customer_name = o.customer_name 
group by c.customer_name
order by sum(o.sales) desc
limit 5;

select sum(o.sales), c.customer_name ,  p.product_line from orders o 
join customers c on c.customer_name = o.customer_name 
join products p on o.product_code = p.product_code
where c.customer_name = 'Gift Depot Inc.'
group by c.customer_name, p.product_line;

select * from orders
where customer_name = 'Gift Depot Inc.';

select * from location;

select l.country, c.customer_name, o.order_number, o.sales , p.product_line from location l 
join customers c on l.customer_name = c.customer_name
join orders o on c.customer_name = o.customer_name
join products p on o.product_code = p.product_code;

select o.order_number, o.quantity_ordered, o.price_each, p.msrp , o.sales, o.order_date, c.customer_name, p.product_code , p.product_line, l.address, l.postalcode, l.city, l. country, c.lastname, c.firstname, c.deal_size  from location l
join customers c on l.customer_name = c.customer_name
join orders o on c.customer_name = o.customer_name
join products p on o.product_code = p.product_code;