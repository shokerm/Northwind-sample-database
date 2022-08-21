--Northwind sample database Exercise

--Ex1
select ProductName,QuantityPerUnit from Products

--Ex2. 
select ProductID,ProductName from Products
where Discontinued = 'false'
order by ProductName

--Ex3
select ProductID,ProductName from Products
where Discontinued = 'true'
order by ProductName

--Ex4
select ProductName,UnitPrice from Products
order by UnitPrice desc

--Ex5
select ProductName,UnitPrice from Products
where UnitPrice < 20
order by UnitPrice desc

--Ex6
select ProductID,ProductName,UnitPrice from Products
where UnitPrice between 15 and 25
order by UnitPrice desc

--Ex7
select ProductName,UnitPrice from Products
where UnitPrice > (select AVG(UnitPrice) from Products)
order by UnitPrice desc

--Ex8
select top (10) ProductName,UnitPrice from Products
order by UnitPrice desc

--Ex9
select count(*)  from Products
GROUP BY Discontinued;

--Ex10
select ProductName,UnitsOnOrder,UnitsInStock from Products
where UnitsInStock < UnitsOnOrder






