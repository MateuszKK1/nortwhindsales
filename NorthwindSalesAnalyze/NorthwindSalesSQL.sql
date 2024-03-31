select productname,categoryname,od.unitprice,od.quantity,(od.unitprice*od.quantity) as Totalvalue ,o.shipcountry, year(o.orderdate) as OrderYear, Datename(mm,o.orderdate) as NameofMonth,	
c.companyname
from products as p
join [Order Details] as od
on p.productid = od.productid
join orders as o
on o.orderid = od.orderid
join customers as c
on o.customerid = c.customerid
join categories as ca
on p.categoryid = ca.categoryid

