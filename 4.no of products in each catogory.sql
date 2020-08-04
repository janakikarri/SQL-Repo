SELECT pc.Name as Category,count(p.ProductID ) as "No of Products"
FROM
production.ProductSubcategory ps
JOIN
production.Product p
ON
ps.ProductSubcategoryID =p.ProductSubcategoryID
JOIN
Production.ProductCategory pc
ON
ps.ProductCategoryID=pc.ProductCategoryID
GROUP BY
pc.ProductCategoryID,pc.Name

