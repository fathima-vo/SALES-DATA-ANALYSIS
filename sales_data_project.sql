use sql_project;
update orders
set `order date`=str_to_date(`order date`,'%d-%m-%Y');
alter table orders modify `order date` date;
#list customer who are in pune
select customername from orders where city="pune";
#list all top 10 highest amount orders
select * from details order by amount desc limit 10;
#list all whose payment is credit card
select *  from details where paymentmode="credit card";
#list customers whose order placed in january 2018
select customername from orders where `order date` between '2018-01-01' and '2018-01-31';
#list all order by quantity
select * from details order by quantity;
#find total amount of all orders
select sum(amount)as total_amount from details;
#display customer name, city, category, amount and profit for each order
select o.customername,o.city,d.category, d.amount, d.profit from details as d
join orders as o
on d.`order id`=o.`order id`;
#display all order details along with their customer name
select d.*,o.customername from details as d
left join orders as o
on d. `ORDER ID`=o. `ORDER ID`;
-- Display Order ID, Profit and create a column Profit Type
-- 27 profit is above 500 Good Profit
-- otherwise normal Profit.
select `order id`,profit,
case when profit>500 then "good profit"
else "normal profit"
end as profit_type
from details;
-- Find all orders whose amount is greater than the maximum amount of orders in the Clothing category
select * from details where amount>(select max(amount)as max_amount from details where category="clothing");
-- using a CTE, find the total profit for each state and display the state with the highest total profit.
with state_profit as
(select o.state,sum(d.profit)as total_profit from details as d
join orders as o
on o.`order id`=d.`order id`
group by o.state)
select * from state_profit order by total_profit desc limit 1;
#find the customer who placed the order with minimum amount
select *  from details where profit=(select min(amount)as min_amount from details);
-- create a stored procedure that accepts a category and display all unders to that category
DELIMITER //
create procedure category_details(p_category varchar(20))
begin
select *  from details where  category=p_category;
END //
DELIMITER ;
call category_details('Electronics');
#find the top 3 highest-profit anders from each category
with ranked_data as (select category, profit, rank() over(partition by category order by profit desc)as highest_profit from details)
select * from ranked_data where highest_profit<=3;
#display all records from details under including the unmatched records
select d.*,o.* from details as d
left join orders as o
on d.`order id`=o.`order id`
union
select d.*,o.* from  details as d
right join orders as o
on d.`order id`=o.`order id`;
#find the total number of orders placed by each city
select city, count(*)as total  from orders group by city;
#find the maximum amount and minimum  amount
select max(amount)as maximum_anm, min(amount)as minimum_amo from details;
#find the total quantity purchased by each customer
select o.customername,sum(d.quantity)as total_quantity from details as d
Join orders as o
on d.`order id`=o.`order id`
group by o.customername;
#find the second highest order amount
select amount from details where amount=(select max(amount) from details where amount<(select max(amount) from details));
#find orders whose order amount is greater than the average order amount
select *  from details where amount>(select avg(amount) from details);
#find total profit for each category
select category, sum(profit) as total_profit from details group by category;


