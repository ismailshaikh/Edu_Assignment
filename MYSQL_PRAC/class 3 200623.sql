use classicmodels;

select * from products limit 10;

SELECT productcode,
	productname,
	textdescription 
FROM products 
JOIN productlines USING (productline);

DESC orders;

SELECT 
	o.orderNumber,
    o.status,
    SUM(quantityOrdered * priceEach)
FROM orders o
INNER JOIN orderdetails od
ON o.orderNumber = od.orderNumber
GROUP BY 1,2;

/*
Task
2 TABLE  customer table and orders
how many status are null

*/


select * from customers limit 10;

select * from orders limit 10;
-- -----------------------------------------------------------------------
select c.customerNumber, c.customerName, o.comments
from customers c
join orders o 
on c.customerNumber=o.customerNumber
where isnull(o.comments);

-- -------------------------------------------------------
select count(c.customerNumber) as count_of_null,o.status
from customers c
left join orders o 
on c.customerNumber=o.customerNumber
where isnull(o.status);

-- -------------------------------------------------------
-- self Join

select a.customerName,b.customerName, a.city
from customers a, customers b
where a.customerNumber <> b.customerNumber
and a.city = a.city
order by a.city desc;


select a.city, count(a.customerName) 
from customers a, customers b
where a.city = a.city
group by a.city
order by 2 desc;

-- -------------------------------------------------------------

select * from employees limit 10;
-- -------------------------------------------------------------
select e.firstname,
	e.jobtitle,
    m.firstname as lead_person,
    m.jobtitle as lead_designation
from employees e
join employees m
on m.employeeNumber = e.reportsTo;

-- --------------------------------------------------------------------
-- SQL  Functions
-- aggregate function
-- sum()

-- count()
select count(creditlimit) from customers;

-- avg()
-- min()
-- max()

select min(creditLimit), max(creditLimit) from customers;

-- Having
-- Groupby

select avg(quantiyOrdered * priceEach)
from orders;

-- --------------------------------------------------
SELECT 
	city, 
	count(customerName)
FROM classicmodels.customers
where city = "Las Vegas";

-- -------------------------------------------------------
SELECT 
	city, 
	count(customerName)
FROM classicmodels.customers
group by 1
having city = "Las Vegas";
-- ---------------------------------------------------------------------------
-- Scalar Function
-- concat() , ||
select concat(city,",",state,",",country) as full_address from customers;

select concat(firstname," ",lastname) as full_name from employees;
select upper(concat(firstname," ",lastname)) as full_name from employees;
select lower(concat(firstname," ",lastname)) as full_name from employees;
select trim(concat(firstname," ",lastname)) as full_name from employees;
-- ---------------------------------------------------------------------------

-- upper()
-- lower()
-- trim()


select now() as cdt;

select (shippedDate-orderDate) as date_taken from orders order by date_taken desc;



