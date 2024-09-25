CREATE DATABASE p1_retail_db;
Select * from sales
-- see NULLS
Select * from Sales
where 
transactions_id	is NULL or sale_date  is NULL
or sale_time is NULL or customer_id is NULL
or	gender is NULL or age is NULL or category is NULL 
or quantiy	is NULL or price_per_unit is NULL
or	cogs is NULL or	total_sale is NULL 
-- delete NULLS 
delete from sales 
where 
transactions_id	is NULL or sale_date  is NULL
or sale_time is NULL or customer_id is NULL
or	gender is NULL or age is NULL or category is NULL 
or quantiy	is NULL or price_per_unit is NULL
or	cogs is NULL or	total_sale is NULL 
--1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'
select * from sales
where sale_date = '2022-11-05';
--2 Write a SQL query to retrieve all transactions where the category is 'Clothing'
--and the quantity sold is more than 4 in the month of Nov-2022
select * from sales
where category='Clothing'
and quantiy>=4
and sale_date between '2022-11-1'and '2022-11-30';
--4 Write a SQL query to calculate the total sales (total_sale) for each category
SELECT category,SUM(total_sale) as sum_sales FROM sales
GROUP BY category;
--5 Write a SQL query to find all transactions where the total_sale is greater than 1000
select * from sales
where total_sale>1000;
--6 Write a SQL query to find the total number of transactions (transaction_id)
--made by each gender in each category
SELECT category,gender,COUNT(*) AS total_trans
FROM sales
GROUP BY category, gender;
--7 Write a SQL query to find the top 5 customers based on the highest total sales
select top 5 customer_id,sum(total_sale)as total_sales from sales 
group by customer_id
order by total_sales 
--8 Write a SQL query to find the number of unique customers
--who purchased items from each category
select category,count (DISTINCT customer_id)as count_id_unique
from sales
group by category
-- Final 
