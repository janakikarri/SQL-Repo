SELECT p.productid,p.name,SUM(sod.linetotal) AS "totalsales",SUM(sod.orderqty) as quantitysold
FROM production.product p
JOIN
sales.salesorderdetail sod
ON
p.ProductID=sod.ProductID
GROUP BY
p.ProductID,p.name
