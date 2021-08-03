create database FoodOrderingSystem;
use [FoodOrderingSystem];

create table customer_name_details
(email varchar(255),
name varchar(255) not null,
primary key (email)
);

create table customer
(phone int not null,
email varchar(255) unique,
location varchar(255) not null,
password varchar(255) not null,
cardnumber bigint,
primary key (phone)
);
alter table customer
add constraint customer_name_detailsToCustomer
foreign key (email) references customer_name_details(email)
on delete cascade
on update cascade;

create table restaurant_location_details
(email varchar(255) not null,
location varchar(255) not null,
primary key (email)
);

create table restaurant
(name varchar(255) not null,
acc_name varchar(255) not null,
bank_account bigint not null,
password varchar(255) not null,
email varchar(255) not null,
primary key (name)
);
alter table restaurant
add constraint restaurantTorestaurant_location_details
foreign key (email) references restaurant_location_details(email)
on delete cascade
on update cascade;


create table food
(name varchar(255) not null,
quantity int not null,
restaurant_name varchar(255) not null,
primary key (restaurant_name,name)
);
alter table food
add constraint restaurantToFood
foreign key (restaurant_name) references restaurant (name)
on delete cascade
on update cascade;

create table food_details
(name varchar(255) not null,
ingredients varchar(255) not null,
restaurant_name varchar(255) not null,
primary key (name,ingredients)
);
alter table food_details
add constraint foodTofood_details
foreign key (restaurant_name,name) references food (restaurant_name,name)
on delete cascade
on update cascade;

create table food_name
(name varchar(255) not null,
price float not null, 
type varchar(255) not null,
restaurant_name varchar(255) not null,
primary key (name)
);
alter table food_name
add constraint foodTofood_name
foreign key (restaurant_name,name) references food (restaurant_name,name)
on delete cascade
on update cascade;

create table orders
(id int identity(1,1) not null ,
customer_phone int not null,
primary key (id,customer_phone)
);
alter table orders
add constraint customerToorders
foreign key (customer_phone) references customer(phone)
on delete no action
on update no action;

create table order_details
(id int not null,
total_price float not null,
date date not null,
time time not null,
customer_phone int,
primary key (id)
);
alter table order_details
add constraint ordersToorder_details
foreign key (id,customer_phone) references orders(id,customer_phone)
on delete no action
on update no action;

create table order_food
(order_id int not null,
food_restaurant_name varchar(255) not null,
order_customer_phone varchar(255) not null,
customer_phone int not null,
primary key (order_id,food_restaurant_name,order_customer_phone)
);
alter table order_food
add constraint ordersToorder_food
foreign key (order_id,customer_phone) references orders(id,customer_phone) 
on delete no action
on update no action;


create table order_food_details
(order_id int not null,
food_name varchar(255) not null,
customer_phone int not null,
restaurant_name varchar(255) not null,
primary key (order_id,food_name)
);
alter table order_food_details
add constraint ordersToorder_food_details
foreign key (order_id,customer_phone) references orders(id,customer_phone)
on delete no action
on update no action,
constraint foodToorder_food_details
foreign key (restaurant_name,food_name) references food(restaurant_name,name)
on delete no action
on update cascade;

create table past_orders
(order_id int not null,
payment_type varchar(255) not null,
rating int,
complain varchar(255),
order_customer_phone int not null,
customer_phone int not null,
primary key (order_id,order_customer_phone,customer_phone)
);
alter table past_orders
add constraint ordersTopast_orders
foreign key (order_id,order_customer_phone) references orders(id,customer_phone)
on delete no action
on update no action,
constraint customerTopast_orders
foreign key (customer_phone) references customer(phone)
on delete cascade
on update no action;

create table past_orders_details
(order_id int not null,
date date,
time time,
order_customer_phone int not null,
customer_phone int not null,
primary key(order_id));
alter table past_orders_details
add constraint past_ordersTopast_orders_details
foreign key (order_id,order_customer_phone,customer_phone) references past_orders(order_id,order_customer_phone,customer_phone)
on delete cascade
on update cascade;


create table payment
(id int identity(1,1) not null,
order_id int not null,
customer_phone int not null,
primary key (order_id,customer_phone,id)
);
alter table payment
add constraint ordersTopayment
foreign key (order_id,customer_phone) references orders(id,customer_phone)
on delete no action
on update no action;

create table payment_details
(id int not null,
type varchar(255) not null,
card_number bigint,
order_id int not null,
customer_phone int not null,
primary key (id)
);
alter table payment_details
add constraint paymentTopayment_details
foreign key (order_id,customer_phone,id) references payment(order_id,customer_phone,id)
on delete cascade
on update cascade;

create table delivery_rider_details
(phone int not null unique,
name varchar(255) not null,
email varchar(255) unique,
address varchar(255) not null unique,
bank_account bigint not null unique, 
license_number bigint not null unique,
primary key (phone)
);

create table delivery_rider
(vehicle_number varchar(7) not null,
phone int not null unique,
primary key (vehicle_number)
);
alter table delivery_rider
add constraint delivery_rider_detailsTodelivery_rider
foreign key (phone) references delivery_rider_details(phone)
on delete cascade
on update cascade;


create table deliverydetails 
(id int identity(1,1) not null ,
order_id int not null,
vehicle_number varchar(7) not null ,
customer_phone int not null,
primary key (id,order_id,vehicle_number,customer_phone)
);
alter table deliverydetails
add constraint orderTodeliverydetails
foreign key (order_id,customer_phone) references orders(id,customer_phone)
on delete cascade
on update cascade,
constraint delivery_rider_detailsTodeliverydetails
foreign key (vehicle_number) references delivery_rider(vehicle_number)
on delete cascade
on update cascade;

create table deliverydetailsdestination
(id int not null,
destination varchar(255) not null,
eta time not null,
vehicle_number varchar(7) not null ,
customer_phone int not null,
order_id int not null,
primary key (id),
);
alter table deliverydetailsdestination
add constraint deliverydetailsTodeliverydetailsdestination
foreign key (id,order_id,vehicle_number,customer_phone) references deliverydetails(id,order_id,vehicle_number,customer_phone)
on delete cascade
on update cascade;




