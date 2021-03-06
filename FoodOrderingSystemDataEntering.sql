use [FoodOrderingSystem];

insert into [dbo].[customer_name_details]([name],[email]) values 
('john','john@gmail.com'),
('mark','mark@gmail.com'),
('kevin','kevin@gmail.com'),
('madu','madu@gmail.com'),
('levi','levi@gmail.com'),
('ash','ash@gmail.com'),
('sam','sam@gmail.com'),
('ana','ana@gmail.com'),
('bella','bella@gmail.com'),
('ima','ima@gmail.com');

insert into [dbo].[customer]([phone],[email],[location],[password],[cardnumber]) values 
(0771237767,'john@gmail.com','1,main street,pettah','hai123',null),
(0778459871,'mark@gmail.com','11,perera street,kandy','abcd',111125648945),
(0779842578,'kevin@gmail.com','3,galle street,kandy','qwerty',254789632512),
(0779965820,'madu@gmail.com','3,central street,pettah','jig1',null),
(0773365875,'levi@gmail.com','4,kandy street,kandy','zxcvb',985478210321),
(0779857123,'ash@gmail.com','102,flower street,jaffna','sl456',854796325102),
(0771239587,'sam@gmail.com','50,cross street,sigiriya','world123',null),
(0774477998,'ana@gmail.com','22,main street,negombo','hello44',656897123402),
(0779851444,'bella@gmail.com','9,duplication street,colombo','love123',null),
(0772255880,'ima@gmail.com','1,high level street,galle','kind007',null);

insert into [dbo].[restaurant_location_details]([email],[location]) values 
('kfcwattala@gmail.com','wattala'),
('kfckotahena@gmail.com','kotahena'),
('kfcfort@gmail.com','fort'),
('McDkotahena@gmail.com','kotahena'),
('McDkollupitiya@gmail.com','kollupitiya'),
('McDjaela@gmail.com','jaela'),
('burgerkingkotahena@gmail.com','kotahena'),
('burgerkingarcade@gmail.com','arcade'),
('burgerkingfort@gmail.com','fort'),
('pizzahutunionplace@gmail.com','unionplace');

insert into [dbo].[restaurant]([name],[bank_account],[password],[email]) values 
('kfcwattala',123456789101,'hai123','kfcwattala@gmail.com'),
('kfckotahena',789456123012,'abcd','kfckotahena@gmail.com'),
('kfcfort',546325102547,'qwerty','kfcfort@gmail.com'),
('McDkotahena',654720136985,'kind007','McDkotahena@gmail.com'),
('McDkollupitiya',000023547896,'jig1','McDkollupitiya@gmail.com'),
('McDjaela',258963147089,'zxcvb','McDjaela@gmail.com'),
('burgerkingkotahena',321789654023,'sl456','burgerkingkotahena@gmail.com'),
('burgerkingarcade',917302985412,'world123','burgerkingarcade@gmail.com'),
('burgerkingfort',664488775512,'hello44','burgerkingfort@gmail.com'),
('pizzahutunionplace',771122559988,'love123','pizzahutunionplace@gmail.com');

insert into [dbo].[food]([name],[quantity],[restaurant_name]) values 
('egg rice',5,'kfcwattala'),
('fried chicken',2,'kfckotahena'),
('roast chicken',2,'kfcfort'),
('ice cream',10,'McDkotahena'),
('chicken burger',1,'McDkollupitiya'),
('chicken shawarma',3,'McDjaela'),
('king chicken burger',1,'burgerkingkotahena'),
('egg whopper',4,'burgerkingarcade'),
('grilled chicken',3,'burgerkingfort'),
('chicken pizza',5,'pizzahutunionplace'),
('chicken rice',3,'kfcwattala'),
('chicken wrap',1,'kfckotahena'),
('hot drumlets',2,'kfcfort'),
('crispy chicken',5,'McDkotahena'),
('big mac',4,'McDkollupitiya'),
('french fries',3,'McDjaela'),
('big king',3,'burgerkingkotahena'),
('vegi burger',7,'burgerkingarcade'),
('chicken royale',5,'burgerkingfort'),
('sausage pizza',3,'pizzahutunionplace');

select * from [dbo].[food_name]
insert into [dbo].[food_name]([name],[price],[type],[restaurant_name]) values 
('egg rice',550,'non-veg','kfcwattala'),
('fried chicken',1200,'non-veg','kfckotahena'),
('roast chicken',1500,'non-veg','kfcfort'),
('ice cream',80,'veg','McDkotahena'),
('chicken burger',400,'non-veg','McDkollupitiya'),
('chicken shawarma',500,'non-veg','McDjaela'),
('king chicken burger',1200,'non-veg','burgerkingkotahena'),
('egg whopper',450,'non-veg','burgerkingarcade'),
('grilled chicken',1500,'non-veg','burgerkingfort'),
('chicken pizza',1800,'non-veg','pizzahutunionplace'),
('chicken rice',700,'non-veg','kfcwattala'),
('chicken wrap',700,'non-veg','kfckotahena'),
('hot drumlets',350,'non-veg','kfcfort'),
('crispy chicken',500,'non-veg','McDkotahena'),
('big mac',850,'non-veg','McDkollupitiya'),
('french fries',320,'veg','McDjaela'),
('big king',790,'non-veg','burgerkingkotahena'),
('vegi burger',400,'veg','burgerkingarcade'),
('chicken royale',500,'non-veg','burgerkingfort'),
('sausage pizza',1550,'non-veg','pizzahutunionplace');


insert into [dbo].[food_details]([name],[ingredients],[restaurant_name]) values 
('egg rice','rice','kfcwattala'),
('egg rice','egg','kfcwattala'),
('egg rice','vegetables','kfcwattala'),
('fried chicken','chicken','kfckotahena'),
('fried chicken','oil','kfckotahena'),
('fried chicken',',masala','kfckotahena'),
('roast chicken','chicken','kfcfort'),
('roast chicken','oil','kfcfort'),
('roast chicken','bbq','kfcfort'),
('ice cream','milk','McDkotahena'),
('ice cream','sugar','McDkotahena'),
('ice cream','flavoring','McDkotahena'),
('chicken burger','chicken','McDkollupitiya'),
('chicken burger','bun','McDkollupitiya'),
('chicken burger','sauce','McDkollupitiya'),
('chicken shawarma','chicken','McDjaela'),
('chicken shawarma','oil','McDjaela'),
('chicken shawarma','rotti','McDjaela'),
('king chicken burger','chicken','burgerkingkotahena'),
('king chicken burger','masala','burgerkingkotahena'),
('king chicken burger','bun','burgerkingkotahena'),
('egg whopper','egg','burgerkingarcade'),
('egg whopper','bun','burgerkingarcade'),
('egg whopper','cheese','burgerkingarcade'),
('grilled chicken','chicken','burgerkingfort'),
('grilled chicken','grill','burgerkingfort'),
('grilled chicken','masala','burgerkingfort'),
('chicken pizza','chicken','pizzahutunionplace'),
('chicken pizza','pizza','pizzahutunionplace'),
('chicken pizza','seasoning','pizzahutunionplace'),
('chicken rice','chicken','kfcwattala'),
('chicken rice','rice','kfcwattala'),
('chicken wrap','chicken','kfckotahena'),
('chicken wrap','wrap','kfckotahena'),
('chicken wrap','salad','kfckotahena'),
('hot drumlets','chicken','kfcfort'),
('crispy chicken','chicken','McDkotahena'),
('big mac','chicken','McDkollupitiya'),
('big mac','bun','McDkollupitiya'),
('french fries','potato','McDjaela'),
('french fries','salt','McDjaela'),
('big king','chicken','burgerkingkotahena'),
('big king','bun','burgerkingkotahena'),
('big king','mayanoise','burgerkingkotahena'),
('vegi burger','bun','burgerkingarcade'),
('chicken royale','chicken','burgerkingfort'),
('chicken royale','bun','burgerkingfort'),
('sausage pizza','sausage','pizzahutunionplace'),
('sausage pizza','pizza','pizzahutunionplace'),
('sausage pizza','sauce','pizzahutunionplace');

insert into [dbo].[orders]([customer_phone]) values 
(0771237767),
(0778459871),
(0779842578),
(0779965820),
(0773365875),
(0779857123),
(0771239587),
(0774477998),
(0779851444),
(0772255880),
(0771237767),
(0778459871),
(0779842578),
(0779965820),
(0773365875),
(0779857123),
(0771239587),
(0774477998),
(0779851444),
(0772255880);

insert into [dbo].[order_details]([id],[total_price],[date],[time],[customer_phone]) values 
(1,7500,'2021-05-17','10:30:10',0771237767),
(2,8900,'2021-05-17','12:10:10',0778459871),
(3,1890,'2021-05-16','14:25:10',0779842578),
(4,5200,'2021-05-16','10:10:10',0779965820),
(5,2250,'2021-05-16','18:22:40',0773365875),
(6,800,'2021-05-17','21:18:01',0779857123),
(7,1050,'2021-05-15','09:30:12',0771239587),
(8,9875,'2021-05-15','15:37:55',0774477998),
(9,4360,'2021-05-14','12:12:10',0779851444),
(10,990,'2021-05-14','13:15:53',0772255880),
(11,5000,'2021-04-10','20:30:10',0771237767),
(12,9000,'2021-04-15','15:10:10',0778459871),
(13,2090,'2021-04-16','16:25:10',0779842578),
(14,1200,'2021-02-16','17:10:10',0779965820),
(15,1050,'2021-03-16','14:22:40',0773365875),
(16,4000,'2021-01-17','22:18:01',0779857123),
(17,1150,'2021-03-15','08:30:12',0771239587),
(18,8505,'2021-04-15','19:37:55',0774477998),
(19,1020,'2021-04-14','10:12:10',0779851444),
(20,1000,'2021-02-14','11:15:53',0772255880);

insert into [dbo].[order_food_details]([order_id],[food_name],[customer_phone],[restaurant_name]) values 
(1,'egg rice',0771237767,'kfcwattala'),
(2,'fried chicken',0778459871,'kfckotahena'),
(3,'roast chicken',0779842578,'kfcfort'),
(4,'ice cream',0779965820,'McDkotahena'),
(5,'chicken burger',0773365875,'McDkollupitiya'),
(6,'chicken shawarma',0779857123,'McDjaela'),
(7,'king chicken burger',0771239587,'burgerkingkotahena'),
(8,'egg whopper',0774477998,'burgerkingarcade'),
(9,'grilled chicken',0779851444,'burgerkingfort'),
(10,'chicken pizza',0772255880,'pizzahutunionplace'),
(11,'chicken rice',0771237767,'kfcwattala'),
(12,'chicken wrap',0778459871,'kfckotahena'),
(13,'hot drumlets',0779842578,'kfcfort'),
(14,'crispy chicken',0779965820,'McDkotahena'),
(15,'big mac',0773365875,'McDkollupitiya'),
(16,'french fries',0779857123,'McDjaela'),
(17,'big king',0771239587,'burgerkingkotahena'),
(18,'vegi burger',0774477998,'burgerkingarcade'),
(19,'chicken royale',0779851444,'burgerkingfort'),
(20,'sausage pizza',0772255880,'pizzahutunionplace');


insert into [dbo].[order_food]([order_id],[food_restaurant_name],[order_customer_phone],[customer_phone]) values 
(1,'kfcwattala',0771237767,0771237767),
(2,'kfckotahena',0778459871,0778459871),
(3,'kfcfort',0779842578,0779842578),
(4,'McDkotahena',0779965820,0779965820),
(5,'McDkollupitiya',0773365875,0773365875),
(6,'McDjaela',0779857123,0779857123),
(7,'burgerkingkotahena',0771239587,0771239587),
(8,'burgerkingarcade',0774477998,0774477998),
(9,'burgerkingfort',0779851444,0779851444),
(10,'pizzahutunionplace',0772255880,0772255880);

insert into [dbo].[past_orders]([order_id],[payment_type],[complain],[order_customer_phone],[customer_phone],[rating]) values 
(11,'cash',null,0771237767,0771237767,4),
(12,'card',null,0778459871,0778459871,5),
(13,'card','late delivery',0779842578,0779842578,3),
(14,'cash','food taste is bad',0779965820,0779965820,2),
(15,'card',null,0773365875,0773365875,5),
(16,'card','wrong order',0779857123,0779857123,1),
(17,'cash',null,0771239587,0771239587,4),
(18,'card','late delivery',0774477998,0774477998,3),
(19,'cash',null,0779851444,0779851444,3),
(20,'cash','late delivery',0772255880,0772255880,3);

insert into [dbo].[past_orders_details]([order_id],[date],[time],[order_customer_phone],[customer_phone]) values 
(11,'2021-05-14','13:15:53',0771237767,0771237767),
(12,'2021-04-10','20:30:10',0778459871,0778459871),
(13,'2021-04-15','15:10:10',0779842578,0779842578),
(14,'2021-04-16','16:25:10',0779965820,0779965820),
(15,'2021-02-16','17:10:10',0773365875,0773365875),
(16,'2021-03-16','14:22:40',0779857123,0779857123),
(17,'2021-01-17','22:18:01',0771239587,0771239587),
(18,'2021-04-15','19:37:55',0774477998,0774477998),
(19,'2021-04-14','10:12:10',0779851444,0779851444),
(20,'2021-02-14','11:15:53',0772255880,0772255880);

insert into [dbo].[payment]([order_id],[customer_phone]) values 
(1,0771237767),
(2,0778459871),
(3,0779842578),
(4,0779965820),
(5,0773365875),
(6,0779857123),
(7,0771239587),
(8,0774477998),
(9,0779851444),
(10,0772255880);

insert into [dbo].[payment_details]([id],[type],[card_number],[order_id],[customer_phone]) values 
(1,'cash',null,1,0771237767),
(2,'card',111125648945,2,0778459871),
(3,'card',254789632512,3,0779842578),
(4,'cash',null,4,0779965820),
(5,'card',985478210321,5,0773365875),
(6,'card',854796325102,6,0779857123),
(7,'cash',null,7,0771239587),
(8,'card',656897123402,8,0774477998),
(9,'cash',null,9,0779851444),
(10,'cash',null,10,0772255880);

insert into [dbo].[delivery_rider_details]([phone],[name],[email],[address],[bank_account],[license_number]) values 
(0771547898,'ruby','ruby@gmail.com','10,first road,kelaniya',548756321548,5203654895),
(0779548984,'jacob','jacob@gmail.com','25,main road,colombo',023014562399,2320145798),
(0778456654,'smith','smith@gmail.com','2,low road,batticaloa',365231452012,5621482000),
(0785365489,'steve','steve@gmail.com','41,side road,ratnapura',112256940771,4545632102),
(0756478952,'peter','peter@gmail.com','32,galle road,galle',654710321421,4785984762),
(0775689546,'noah','noah@gmail.com','69,bridge road,dambulla',843651002315,6523189710),
(0778695235,'alan','alan@gmail.com','47,main road,pettah',798321005564,4679821033),
(0773365489,'james','james@gmail.com','1,bird road,kandy',669985412014,5245651230),
(0775461234,'lucas','lucas@gmail.com','25,cross road,hikkaduwa',325987775514,6571302458),
(0773258641,'ethan','ethan@gmail.com','658,second road,colombo',726540988823,4566213304);

insert into [dbo].[delivery_rider]([vehicle_number],[phone]) values 
('BAA8585',0771547898),
('DDD8888',0779548984),
('ABC6598',0778456654),
('DEF3210',0785365489),
('AAB5420',0756478952),
('AAD0023',0775689546),
('DAA8930',0778695235),
('AAD0234',0773365489),
('BBB6514',0775461234),
('ABD0023',0773258641);

insert into [dbo].[deliverydetails]([order_id],[vehicle_number],[customer_phone]) values 
(1,'BAA8585',0771237767),
(2,'DDD8888',0778459871),
(3,'ABC6598',0779842578),
(4,'DEF3210',0779965820),
(5,'AAB5420',0773365875),
(6,'AAD0023',0779857123),
(7,'DAA8930',0771239587),
(8,'AAD0234',0774477998),
(9,'BBB6514',0779851444),
(10,'ABD0023',0772255880);
select * from [dbo].[deliverydetails]

insert into [dbo].[deliverydetailsdestination]([id],[destination],[eta],[vehicle_number],[customer_phone],[order_id]) values 
(1,'1,main street,pettah','11:00:00','BAA8585',0771237767,1),
(2,'11,perera street,kandy','12:40:00','DDD8888',0778459871,2),
(3,'3,galle street,kandy','14:50:00','ABC6598',0779842578,3),
(4,'3,central street,pettah','10:40:00','DEF3210',0779965820,4),
(5,'4,kandy street,kandy','18:55:00','AAB5420',0773365875,5),
(6,'102,flower street,jaffna','21:50:00','AAD0023',0779857123,6),
(7,'50,cross street,sigiriya','09:40:00','DAA8930',0771239587,7),
(8,'22,main street,negombo','16:10:00','AAD0234',0774477998,8),
(9,'9,duplication street,colombo','12:40:00','BBB6514',0779851444,9),
(10,'1,high level street,galle','14:00:00','ABD0023',0772255880,10);


