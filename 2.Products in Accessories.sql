SELECT p.name
FROM
production.ProductsubCategory ps
JOIN
production.product p ON
ps.ProductCategoryID=p.ProductsubCategoryID
JOIN
production.ProductCategory pc ON
ps.ProductCategoryID=pc.ProductCategoryID
WHERE
pc.Name like 'Accessories'
