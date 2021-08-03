use [FoodOrderingSystem];
/*Outputs total number of sales on date 2021-05-17 by all restaurants */
select count(*) as TotalSales from [dbo].[order_details] od where od.date = '2021-05-17';

/*Select the customer name and phone who ordered using the card number 111125648945*/

select [name],[phone] 
from [dbo].[customer_name_details] cnd 
full join [dbo].[customer] c 
on cnd.email = c.email 
right join [dbo].[payment_details] pd 
on pd.customer_phone=c.phone 
where pd.card_number = 111125648945;

/*Select the name and address of the delivery rider who delivered order with id 1*/  

select [name],[address] 
from [dbo].[delivery_rider_details]
where [phone] in
(select [phone] 
from [dbo].[delivery_rider] 
where [vehicle_number] in
(select [vehicle_number] 
from [dbo].[deliverydetails] 
where [order_id]=1));

/*Find the restaurant name and bank accounts in kotahena sorted by their names is ascending order*/

select r.[name],[bank_account] 
from [dbo].[restaurant] r 
full join [dbo].[restaurant_location_details] rld 
on r.email = rld.email 
where rld.location like '%kotahena%' 
order by r.name asc;

/*Select the name,customer and order id for orders with complains*/

select [name],[customer_phone],[order_id] 
from [dbo].[customer_name_details] cnd 
inner join [dbo].[customer] c on cnd.email = c.email 
right join [dbo].[past_orders] po 
on c.phone = po.customer_phone 
where po.complain is not null 
order by cnd.name desc;

select * from [dbo].[customer_name_details]
select * from [dbo].[customer]
select * from [dbo].[restaurant_location_details]
select * from [dbo].[restaurant]
select * from [dbo].[food]
select * from [dbo].[food_details]
select * from [dbo].[food_name]
select * from [dbo].[orders]
select * from [dbo].[order_details]
select * from [dbo].[order_food]
select * from [dbo].[order_food_details]
select * from [dbo].[past_orders]
select * from [dbo].[past_orders_details]
select * from [dbo].[payment]
select * from [dbo].[payment_details]
select * from [dbo].[delivery_rider_details]
select * from [dbo].[delivery_rider]
select * from [dbo].[deliverydetails]
select * from [dbo].[deliverydetailsdestination]




