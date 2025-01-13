-- TOTAL CAPSTONE PROFIT
use capstone;
select sum(profit) as 
total_profit
from `order details`;

-- PROFIT PER CATEGORY
select Category,
sum(profit) as total_profit
from `order details`
group by Category;


-- QUANTITY PER CATEGORY
select category, sum(Quantity) as
Total_Quantity
from `order details`
group by Category;

-- TOTAL ORDERS PER CITY
select City, count(`Order ID`) as
Total_sales
from`list of orders`
group by city;

-- AVERAGE PROFIT PER QUANTITY OF CATEGORY
select category, sum(profit)/ sum(Quantity)  as
Avg_Profit_Per_Quantity
from`order details`
group by category;

-- SUM OF QUANTITY BY SUB_CATEGORY
select `Sub Category`,
sum(Quantity) as Total_Quantity
from`order details`
group by `Sub Category`
order by Total_Quantity desc;


-- SUM OF PROFIT BY SUB_CATEGORY
select `Sub Category`,
sum(profit) as Total_profit
from `order details`
group by `Sub Category`
order by Total_profit desc;

-- TOP PERFORMING SUB_CATEGORIES
select `Sub Category`,
sum(profit) as Total_profit
from `order details`
group by`Sub Category`
order by Total_profit desc
limit 5;

-- LEAST PERFORMING SUB-CATEGORIES
select `Sub Category`,
sum(profit) as Total_profit
from `order details`
group by`Sub Category`
order by Total_profit asc
limit 5;

-- LEAST PERFORMING CITY
select city,
count(`Order ID`) as Total_profit
from `list of orders`
group by city
order by Total_profit asc
limit 5;


-- TOP PERFORMING CITY
select city,
count(`Order ID`) as Total_profit
from `list of orders`
group by city
order by Total_profit desc
limit 5;

select count(`Employee ID`) as 
total_employee
from employees_england;