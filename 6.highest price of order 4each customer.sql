SELECT pp.FirstName,pp.LastName,Max(sod.LineTotal) as TopPurchase,soh.OrderDate
FROM
sales.SalesOrderHeader soh
JOIN
sales.SalesOrderDetail sod
ON soh.SalesOrderID=sod.SalesOrderID
JOIN
sales.Customer sc
on soh.CustomerID= sc.CustomerID
join person.Person pp on sc.PersonID=pp.BusinessEntityID
where soh.OrderDate>='2011-01-01' and soh.OrderDate<'2012-01-01'
group by sc.CustomerID,pp.FirstName,pp.LastName,soh.OrderDate
order by soh.OrderDate asc

--soh.SalesOrderID,soh.CustomerID,sod.LineTotal,sod.OrderQty,sc.PersonID,pp.FirstName,pp.MiddleName,pp.LastName