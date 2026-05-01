select region, 
sum(Quantity* UnitPrice) AS Totalamount
from anna_pr
group by region 
order by Totalamount desc
;

select * from anna_pr;

select ProductCategory,
sum(Quantity* UnitPrice)  as Totalsales
from anna_pr
group by ProductCategory
order by Totalsales desc
limit 1;

select ProductCategory,
sum(Quantity* UnitPrice)  as Totalsales
from anna_pr
group by ProductCategory
order by Totalsales desc;

select CustomerName, ProductCategory,
sum( Quantity * UnitPrice) as total_purchase
from anna_pr
group by CustomerName,ProductCategory
order by total_purchase desc
limit 5;

select 
avg( Quantity * UnitPrice) as avg_salesorder
from anna_pr;

select
    date_format(str_to_date( OrderDate,' %m/%d/%y'),
    '%y-%m')as month,
    sum( Quantity * UnitPrice) as Total_sales
from anna_pr
where year(str_to_date( OrderDate, '%m/%d/%y')) = 2024
group by month
 order by  month ;

select 
min(OrderDate), max(OrderDate)
from anna_pr;

select OrderDate from anna_pr;
select distinct year ( OrderDate) as year
from anna_pr
order by year;






