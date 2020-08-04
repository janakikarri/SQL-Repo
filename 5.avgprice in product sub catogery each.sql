SELECT sc.ProductSubcategoryID,AVG(p.ListPrice) AS avgprice,sc.name
FROM
Production.Product p
JOIN
Production.ProductSubcategory sc
ON
p.ProductSubcategoryID=sc.ProductSubcategoryID
GROUP BY
sc.ProductSubcategoryID,sc.name