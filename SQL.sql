
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
      select sales, count(*)
      from 

        select count(*)
  FROM [PC Data].[dbo].[pc_data]

-- 2. Count the number of sales per Continent.
       select continent, count(sales) as TotalSales
       from pc_data
       group by continent
-- 3. Count the number of sales per Country or State.
       select sales, count(*)
       from
       group by continent 
-- 4. List all distinct Shop Name values.
-- 5. Find the average Sale Price.
-- 6. Find the highest and lowest Sale Price.
-- 7. Count the number of sales by Payment Method.
-- 8. Count the number of sales by Channel (Online vs Offline).
-- 9. Count the number of sales by Priority level.
-- 10. Count the number of distinct PC Make values.

-- INTERMEDIATE QUESTIONS
          select top 3 *
          FROM [PC Data].[dbo].[pc_data]
-- 11. Calculate total revenue (SUM of Sale Price).
         select sum(sale_price) as total_revenue
         from pc_data
-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
         select sum(sale_price - Cost_Price) as total_profit
         from pc_data
-- 13. Find the average Discount Amount.
         select avg (cast(Discount_Amount as decimal(18,2))) as average_discount
         from pc_data
-- 14. Calculate total Finance Amount issued.
          select sum(finance_amount) as total_finance_amount
          from pc_data
-- 15. Find total revenue per PC Make.
          select pc_make, sum(sale_price) as Total_per_pc_mkae
          from pc_data
          group by pc_make
-- 16. Find average Sale Price per Storage Type.
          select Storage_Type, avg (cast(sale_price as decimal(18,2))) as average_storage_type
          from pc_data
          group by Storage_Type
-- 17. Calculate total revenue per Shop Name.
          select Shop_Name, sum(sale_price) as total_revenue_per_shop
          from pc_data
          group by Shop_Name
-- 18. Calculate total revenue per Sales Person Name.
         select Sales_Person_Name, sum(sale_price) as total_revenue_per_person
         from pc_data
         group by Sales_Person_Name
-- 19. Find average Credit Score per Payment Method.
          select Payment_Method, avg(cast(Credit_Score as decimal (18,2))) as total_revenue_per_person
          from pc_data
          group by Payment_Method
-- 20. Calculate total Cost of Repairs per Sales Person Department.
         select Sales_Person_Department, sum (cast(Cost_of_Repairs as bigint)) as cost_of_repair
         from pc_data
         group by Sales_Person_Department


         
-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.

select shop_name, sum(sale_price - Cost_Price) as profit
from pc_data
group by Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
select sale_price,sum ((Sale_Price - Cost_Price) / Sale_Price) as profit_margin
from pc_data
group by sale_price

-- 23. Determine which Continent has the highest total revenue.
       
-- 24. Calculate average Sale Price per RAM size.
  select RAM,avg (cast(sale_price as decimal (18,2))) as avg_sale_price
  from pc_data
  group by RAM
-- 25. Find the PC Model with the highest Sale Price.
select top 1 pc_model, Sale_Price
from pc_data
order by  Sale_Price desc 

-- 26. Calculate the average number of days between Purchase Date and Ship Date.

-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

