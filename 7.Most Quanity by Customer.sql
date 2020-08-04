SELECT Sum(sod.OrderQty) as Quantity, pp.FirstName,pp.LastName
FROM
sales.SalesOrderDetail sod
JOIN
sales.SalesOrderHeader soh
ON
sod.SalesOrderID=soh.SalesOrderID
JOIN
sales.customer sc
ON
soh.customerID=sc.CustomerID
JOIN
person.Person pp
ON
sc.personID=pp.BusinessEntityID
group by soh.CustomerID,pp.FirstName,pp.LastName
order by Quantity desc


--MAX(sod.OrderQty) AS productQuantity,MAX(sod.LineTotal) AS productTotalPrice,sod.ProductID,pp.FirstName,pp.LastName