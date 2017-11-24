CREATE DATABASE PHONGVU
USE PHONGVU
CREATE TABLE CUSTOMER
(
IDCustomer nvarchar(10) PRIMARY KEY,
Name nvarchar(30),
Phone nvarchar(10) check (len(Phone) between 7 and 10),
Diachi nvarchar(30),
Email nvarchar(30)
)
CREATE TABLE ORDERS 
(
IDOrder nvarchar(10) PRIMARY KEY,
IDCustomer nvarchar(10) FOREIGN KEY REFERENCES CUSTOMER,
Datebuy date check (year(Datebuy)< year(getdate())),
Datetake date
)
CREATE TABLE PRODUCT
(
IDProduct nvarchar(10) PRIMARY KEY,
Name nvarchar(30),
Quantity int,
Price int,
Warranty nvarchar(10)
)
CREATE TABLE ORDERDETAIL
(
IDOrder nvarchar(10) FOREIGN KEY REFERENCES ORDERS,
IDProduct nvarchar(10) FOREIGN KEY REFERENCES PRODUCT,
Quantity int,
Price int,
PRIMARY KEY (IDOrder, IDProduct)
)
------
INSERT CUSTOMER
VALUES ('C01','NGUYEN VAN ANH','8457895','PHU QUOC','Anh@yahoo.com')
INSERT CUSTOMER
VALUES ('C02','HA HONG LINH','9567886','TAN BINH','Hhl@yahoo.com')
INSERT CUSTOMER
VALUES ('C03','LE MINH TIEN','9485627','TAN PHU','Lmt@yahoo.com')
INSERT CUSTOMER
VALUES ('C04','TRAN TRI MINH','9584635','TAN BINH','Ttm@yahoo.com')
INSERT CUSTOMER
VALUES ('C05','NGUYEN THI DUNG','9574586','TAN PHU','Ntd@yahoo.com')
INSERT CUSTOMER
VALUES ('C06','LE HOANG NAM','9157834','HAI PHONG','Lhn@yahoo.com')
INSERT CUSTOMER
VALUES ('C07','TRAN VAN CHIEU','8895477','LONG AN','Tvc@yahoo.com')
INSERT CUSTOMER
VALUES ('C08','NGUYEN HUU PHUOC','8958476','PHU QUOC','Nhp@yahoo.com')
INSERT CUSTOMER
VALUES ('C09','DUONG VAN THANH','9758452','TAN BINH','Tan@yahoo.com')
INSERT CUSTOMER
VALUES ('C10','DO ANH DUONG','8456248','PHU QUOC','Sax@yahoo.com')
INSERT CUSTOMER
VALUES ('C11','NGUYEN MINH HUNG','9155465','LONG AN','Nmh@yahoo.com')
INSERT CUSTOMER
VALUES ('C12','NGUYEN VAN KHOA','8954824','BINH PHUONG','Nvk@yahoo.com')
INSERT CUSTOMER
VALUES ('C13','TRAN MINH TRI','8658963','TAN BINH','Tmt@yahoo.com')
INSERT CUSTOMER
VALUES ('C14','NGUYEN QUOC KHANH','9542483','BINH PHUOC','Nqk@yahoo.com')
INSERT CUSTOMER
VALUES ('C15','PHAN HUYNH TAN','8647523','TAN PHU','Pht@yahoo.com')
INSERT CUSTOMER
VALUES ('C16','TRAN THE LOC','8625467','LONG AN','Ttl@yahoo.com')
INSERT CUSTOMER
VALUES ('C17','DUONG HOANG LOC','9356482','PHU QUOC','Dhl@yahoo.com')
INSERT CUSTOMER
VALUES ('C18','DO PHAM HIEU','8795246','AN GIANG','Dph@yahoo.com')
INSERT CUSTOMER
VALUES ('C19','VO THINH PHAT','8365489','SOC TRANG','Vtp@yahoo.com')
INSERT CUSTOMER
VALUES ('C20','HO TRAN TRUNG','9536482','CA MAU','Htt@yahoo.com')

------

INSERT PRODUCT
VALUES('P01', 'LaptopAsus', '1200', '1000', N'3 years')
INSERT PRODUCT
VALUES('P02', 'LaptopDELL', '1600', '1100', N'3 years')
INSERT PRODUCT
VALUES('P03', 'LaptopHP', '1300', '1200', N'2 years')
INSERT PRODUCT
VALUES('P04', 'LaptopVaio', '1000', '1500', N'2 years')
INSERT PRODUCT
VALUES('P05', 'LaptopMac', '700', '2000', N'1 years')
INSERT PRODUCT
VALUES('P06', 'KEYBOARDK188', '2000', '900', N'1 years')
INSERT PRODUCT
VALUES('P07', 'KEYBOARDK660B', '1500', '750', N'1 years')
INSERT PRODUCT
VALUES('P08', 'KEYBOARDK180C', '1200', '600', N'1 years')
INSERT PRODUCT
VALUES('P09', 'KEYBOARDARMOR2', '1700', '700', N'1 years')
INSERT PRODUCT
VALUES('P010', 'KEYBOARDGTX890', '1000', '800', N'1 years')
INSERT PRODUCT
VALUES('P11', 'MOUSEOZONE3K', '1100', '500', N'1 years')
INSERT PRODUCT
VALUES('P12', 'MOUSEGXT25', '1150', '800', N'1 years')
INSERT PRODUCT
VALUES('P13', 'MOUSEG51', '1500', '700', N'1 years')
INSERT PRODUCT
VALUES('P14', 'MOUSEG50', '1400', '650', N'1 years')
INSERT PRODUCT
VALUES('P15', 'MOUSEG11', '1200', '750', N'1 years')
INSERT PRODUCT
VALUES('P16', 'CAMERADCS6010L', '1000', '900', N'1 years')
INSERT PRODUCT
VALUES('P17', 'CAMERADCS5222L', '800', '700', N'1 years')
INSERT PRODUCT
VALUES('P18', 'CAMERADCS960L', '850', '850', N'1 years')
INSERT PRODUCT
VALUES('P19', 'CAMERADCS2132L', '900', '750', N'1 years')
INSERT PRODUCT
VALUES('P20', 'CAMERAKXH13PWNZA', '1100', '800', N'1 years')

-----


INSERT ORDERS 
VALUES('OD01','C01', '2000/05/12', '2001/01/25')
INSERT ORDERS 
VALUES('OD02','C01', '2000/06/01', '2001/01/25')
INSERT ORDERS 
VALUES('OD03','C01', '2000/05/21', '2001/01/25')
INSERT ORDERS 
VALUES('OD04','C01', '2000/07/10', '2001/01/25')
INSERT ORDERS 
VALUES('OD05','C01', '2000/08/30', '2001/01/25')
INSERT ORDERS 
VALUES('OD06','C02', '2000/05/21', '2001/03/20')
INSERT ORDERS 
VALUES('OD07','C02', '2000/05/30', '2001/03/20')
INSERT ORDERS 
VALUES('OD08','C02', '2000/02/20', '2001/03/20')
INSERT ORDERS 
VALUES('OD09','C02', '2000/03/05', '2001/03/20')
INSERT ORDERS 
VALUES('OD10','C02', '2000/07/10', '2001/03/20')
INSERT ORDERS 
VALUES('OD11','C03', '2000/09/10', '2001/03/25')
INSERT ORDERS 
VALUES('OD12','C03', '2000/06/15', '2001/03/25')
INSERT ORDERS 
VALUES('OD13','C03', '2000/09/04', '2001/03/25')
INSERT ORDERS 
VALUES('OD14','C03', '2000/07/11', '2001/03/25')
INSERT ORDERS 
VALUES('OD15','C03', '2000/11/30', '2001/03/25')
INSERT ORDERS 
VALUES('OD16','C04', '2000/07/06', '2001/04/03')
INSERT ORDERS 
VALUES('OD17','C04', '2000/09/08', '2001/04/03')
INSERT ORDERS 
VALUES('OD18','C04', '2000/10/12', '2001/04/03')
INSERT ORDERS 
VALUES('OD19','C04', '2000/11/22', '2001/04/03')
INSERT ORDERS 
VALUES('OD20','C04', '2000/01/07', '2001/04/03')
INSERT ORDERS 
VALUES('OD21','C05', '2000/03/25', '2001/04/25')
INSERT ORDERS 
VALUES('OD22','C05', '2000/09/20', '2001/04/25')
INSERT ORDERS 
VALUES('OD23','C05', '2000/02/10', '2001/04/25')
INSERT ORDERS 
VALUES('OD24','C05', '2000/07/18', '2001/04/25')
INSERT ORDERS 
VALUES('OD25','C05', '2000/06/02', '2001/04/25')
INSERT ORDERS 
VALUES('OD26','C06', '2000/07/30', '2001/04/30')
INSERT ORDERS 
VALUES('OD27','C06', '2000/04/26', '2001/04/30')
INSERT ORDERS 
VALUES('OD28','C06', '2000/02/01', '2001/04/30')
INSERT ORDERS 
VALUES('OD29','C06', '2000/08/12', '2001/04/30')
INSERT ORDERS 
VALUES('OD30','C06', '2000/07/22', '2001/04/30')
INSERT ORDERS 
VALUES('OD31','C07', '2000/08/12', '2001/05/02')
INSERT ORDERS 
VALUES('OD32','C07', '2000/07/30', '2001/05/02')
INSERT ORDERS 
VALUES('OD33','C07', '2000/06/21', '2001/05/02')
INSERT ORDERS 
VALUES('OD34','C07', '2000/04/20', '2001/05/02')
INSERT ORDERS 
VALUES('OD35','C07', '2000/12/11', '2001/05/02')
INSERT ORDERS 
VALUES('OD36','C08', '2000/11/20', '2001/05/15')
INSERT ORDERS 
VALUES('OD37','C08', '2000/10/30', '2001/05/15')
INSERT ORDERS 
VALUES('OD38','C08', '2000/09/22', '2001/05/15')
INSERT ORDERS 
VALUES('OD39','C08', '2000/12/22', '2001/05/15')
INSERT ORDERS 
VALUES('OD40','C08', '2000/05/23', '2001/05/15')
INSERT ORDERS 
VALUES('OD41','C09', '2000/05/11', '2001/05/29')
INSERT ORDERS 
VALUES('OD42','C09', '2000/08/13', '2001/05/29')
INSERT ORDERS 
VALUES('OD43','C09', '2000/09/26', '2001/05/29')
INSERT ORDERS 
VALUES('OD44','C09', '2000/02/22', '2001/05/29')
INSERT ORDERS 
VALUES('OD45','C09', '2000/01/09', '2001/05/29')
INSERT ORDERS 
VALUES('OD46','C10', '2000/10/05', '2001/06/01')
INSERT ORDERS 
VALUES('OD47','C10', '2000/11/03', '2001/06/01')
INSERT ORDERS 
VALUES('OD48','C10', '2000/12/04', '2000/06/01')
INSERT ORDERS 
VALUES('OD49','C10', '2000/06/15', '2000/06/01')
INSERT ORDERS 
VALUES('OD50','C10', '2000/06/02', '2000/06/01')
INSERT ORDERS 
VALUES('OD51','C11', '2000/05/13', '2001/06/10')
INSERT ORDERS 
VALUES('OD52','C11', '2000/06/19', '2001/06/10')
INSERT ORDERS 
VALUES('OD53','C11', '2000/08/17', '2001/06/10')
INSERT ORDERS 
VALUES('OD54','C11', '2000/09/11', '2001/06/10')
INSERT ORDERS 
VALUES('OD55','C11', '2000/12/01', '2001/06/10')
INSERT ORDERS 
VALUES('OD56','C12', '2000/06/23', '2001/06/20')
INSERT ORDERS 
VALUES('OD57','C12', '2000/07/15', '2001/06/20')
INSERT ORDERS 
VALUES('OD58','C12', '2000/01/29', '2001/06/20')
INSERT ORDERS 
VALUES('OD59','C12', '2000/09/18', '2001/06/20')
INSERT ORDERS 
VALUES('OD60','C12', '2000/08/27', '2001/06/20')
INSERT ORDERS 
VALUES('OD61','C13', '2000/11/15', '2001/06/30')
INSERT ORDERS 
VALUES('OD62','C13', '2000/12/11', '2001/06/30')
INSERT ORDERS 
VALUES('OD63','C13', '2000/10/20', '2001/06/30')
INSERT ORDERS 
VALUES('OD64','C13', '2000/06/04', '2001/06/30')
INSERT ORDERS 
VALUES('OD65','C13', '2000/05/09', '2001/06/30')
INSERT ORDERS 
VALUES('OD66','C14', '2000/05/12', '2001/07/05')
INSERT ORDERS 
VALUES('OD67','C14', '2000/10/25', '2001/07/05')
INSERT ORDERS 
VALUES('OD68','C14', '2000/12/10', '2001/07/05')
INSERT ORDERS 
VALUES('OD69','C14', '2000/03/11', '2001/07/05')
INSERT ORDERS 
VALUES('OD70','C14', '2000/01/12', '2001/07/05')
INSERT ORDERS 
VALUES('OD71','C15', '2000/06/10', '2001/07/12')
INSERT ORDERS 
VALUES('OD72','C15', '2000/07/24', '2001/07/12')
INSERT ORDERS 
VALUES('OD73','C15', '2000/02/13', '2001/07/12')
INSERT ORDERS 
VALUES('OD74','C15', '2000/04/28', '2001/07/12')
INSERT ORDERS 
VALUES('OD75','C15', '2000/03/02', '2001/07/12')
INSERT ORDERS 
VALUES('OD76','C16', '2000/09/26', '2001/07/21')
INSERT ORDERS 
VALUES('OD77','C16', '2000/06/04', '2001/07/21')
INSERT ORDERS 
VALUES('OD78','C16', '2000/04/30', '2001/07/21')
INSERT ORDERS 
VALUES('OD79','C16', '2000/02/01', '2001/07/21')
INSERT ORDERS 
VALUES('OD80','C16', '2000/05/05', '2001/07/21')
INSERT ORDERS 
VALUES('OD81','C17', '2000/05/12', '2001/08/11')
INSERT ORDERS 
VALUES('OD82','C17', '2000/11/12', '2001/08/11')
INSERT ORDERS 
VALUES('OD83','C17', '2000/12/30', '2001/08/11')
INSERT ORDERS 
VALUES('OD84','C17', '2000/10/08', '2001/08/11')
INSERT ORDERS 
VALUES('OD85','C17', '2000/09/18', '2001/08/11')
INSERT ORDERS 
VALUES('OD86','C18', '2000/06/15', '2001/08/20')
INSERT ORDERS 
VALUES('OD87','C18', '2000/04/26', '2001/08/20')
INSERT ORDERS 
VALUES('OD88','C18', '2000/12/20', '2001/08/20')
INSERT ORDERS 
VALUES('OD89','C18', '2000/10/23', '2001/08/20')
INSERT ORDERS 
VALUES('OD90','C18', '2000/07/24', '2001/08/20')
INSERT ORDERS 
VALUES('OD91','C19', '2000/06/05', '2001/09/10')
INSERT ORDERS 
VALUES('OD92','C19', '2000/07/25', '2001/09/10')
INSERT ORDERS 
VALUES('OD93','C19', '2000/04/26', '2001/09/10')
INSERT ORDERS 
VALUES('OD94','C19', '2000/05/24', '2001/09/10')
INSERT ORDERS 
VALUES('OD95','C19', '2000/09/01', '2001/09/10')
INSERT ORDERS 
VALUES('OD96','C20', '2000/04/05', '2001/09/30')
INSERT ORDERS 
VALUES('OD97','C20', '2000/08/03', '2001/09/30')
INSERT ORDERS 
VALUES('OD98','C20', '2000/11/20', '2001/09/30')
INSERT ORDERS 
VALUES('OD99','C20', '2000/12/02', '2001/09/30')
INSERT ORDERS 
VALUES('OD100','C20', '2000/06/12', '2001/09/30')



INSERT ORDERDETAIL
VALUES('OD01','P01','5','5000')
INSERT ORDERDETAIL
VALUES('OD02','P04','7','10500')
INSERT ORDERDETAIL
VALUES('OD03','P06','12','10800')
INSERT ORDERDETAIL
VALUES('OD04','P11','12','6000')
INSERT ORDERDETAIL
VALUES('OD05','P16','10','7000')
INSERT ORDERDETAIL
VALUES('OD06','P02','8','88000')
INSERT ORDERDETAIL
VALUES('OD07','P07','5','3750')
INSERT ORDERDETAIL
VALUES('OD08','P09','3','2100')
INSERT ORDERDETAIL
VALUES('OD09','P14','6','4200')
INSERT ORDERDETAIL
VALUES('OD10','P16','8','5600')
INSERT ORDERDETAIL
VALUES('OD11','P03','5','6000')
INSERT ORDERDETAIL
VALUES('OD12','P07','3','2250')
INSERT ORDERDETAIL
VALUES('OD13','P10','3','2400')
INSERT ORDERDETAIL
VALUES('OD14','P15','2','1500')
INSERT ORDERDETAIL
VALUES('OD15','P20','5','4000')
INSERT ORDERDETAIL
VALUES('OD16','P04','10','15000')
INSERT ORDERDETAIL
VALUES('OD17','P06','10','9000')
INSERT ORDERDETAIL
VALUES('OD18','P12','10','8000')
INSERT ORDERDETAIL
VALUES('OD19','P16','9','8100')
INSERT ORDERDETAIL
VALUES('OD20','P18','1','850')
INSERT ORDERDETAIL
VALUES('OD21','P05','1','2000')
INSERT ORDERDETAIL
VALUES('OD22','P08','1','600')
INSERT ORDERDETAIL
VALUES('OD23','P14','1','650')
INSERT ORDERDETAIL
VALUES('OD24','P16','1','900')
INSERT ORDERDETAIL
VALUES('OD25','P17','1','700')
INSERT ORDERDETAIL
VALUES('OD26','P01','3','3000')
INSERT ORDERDETAIL
VALUES('OD27','P07','2','1500')
INSERT ORDERDETAIL
VALUES('OD28','P09','1','700')
INSERT ORDERDETAIL
VALUES('OD29','P13','3','2100')
INSERT ORDERDETAIL
VALUES('OD30','P20','3','2400')
INSERT ORDERDETAIL
VALUES('OD31','P03','2','2400')
INSERT ORDERDETAIL
VALUES('OD32','P01','4','4000')
INSERT ORDERDETAIL
VALUES('OD33','P05','6','12000')
INSERT ORDERDETAIL
VALUES('OD34','P02','8','8800')
INSERT ORDERDETAIL
VALUES('OD35','P03','10','12000')
INSERT ORDERDETAIL
VALUES('OD36','P07','12','9000')
INSERT ORDERDETAIL
VALUES('OD37','P09','10','7000')
INSERT ORDERDETAIL
VALUES('OD38','P06','8','7200')
INSERT ORDERDETAIL
VALUES('OD39','P08','4','2400')
INSERT ORDERDETAIL
VALUES('OD40','P10','10','8000')
INSERT ORDERDETAIL
VALUES('OD41','P15','7','5250')
INSERT ORDERDETAIL
VALUES('OD42','P13','3','2100')
INSERT ORDERDETAIL
VALUES('OD43','P11','5','2500')
INSERT ORDERDETAIL
VALUES('OD44','P12','9','7200')
INSERT ORDERDETAIL
VALUES('OD45','P14','7','4550')
INSERT ORDERDETAIL
VALUES('OD46','P16','8','7200')
INSERT ORDERDETAIL
VALUES('OD47','P17','4','2800')
INSERT ORDERDETAIL
VALUES('OD48','P18','6','5100')
INSERT ORDERDETAIL
VALUES('OD49','P19','7','5250')
INSERT ORDERDETAIL
VALUES('OD50','P20','5','4000')
INSERT ORDERDETAIL
VALUES('OD51','P01','3','3000')
INSERT ORDERDETAIL
VALUES('OD52','P02','1','1100')
INSERT ORDERDETAIL
VALUES('OD53','P04','2','3000')
INSERT ORDERDETAIL
VALUES('OD54','P06','2','1800')
INSERT ORDERDETAIL
VALUES('OD55','P10','3','2100')
INSERT ORDERDETAIL
VALUES('OD56','P03','2','2400')
INSERT ORDERDETAIL
VALUES('OD57','P05','3','600')
INSERT ORDERDETAIL
VALUES('OD58','P11','2','1000')
INSERT ORDERDETAIL
VALUES('OD59','P14','2','1300')
INSERT ORDERDETAIL
VALUES('OD60','P15','1','750')
INSERT ORDERDETAIL
VALUES('OD61','P03','6','7200')
INSERT ORDERDETAIL
VALUES('OD62','P01','7','7000')
INSERT ORDERDETAIL
VALUES('OD63','P16','4','3600')
INSERT ORDERDETAIL
VALUES('OD64','P18','5','4250')
INSERT ORDERDETAIL
VALUES('OD65','P20','4','3200')
INSERT ORDERDETAIL
VALUES('OD66','P09','3','2100')
INSERT ORDERDETAIL
VALUES('OD67','P07','5','3750')
INSERT ORDERDETAIL
VALUES('OD68','P12','7','5600')
INSERT ORDERDETAIL
VALUES('OD69','P15','8','6000')
INSERT ORDERDETAIL
VALUES('OD70','P11','2','1000')
INSERT ORDERDETAIL
VALUES('OD71','P06','2','1000')
INSERT ORDERDETAIL
VALUES('OD72','P09','1','1000')
INSERT ORDERDETAIL
VALUES('OD73','P07','6','1000')
INSERT ORDERDETAIL
VALUES('OD74','P18','3','2550')
INSERT ORDERDETAIL
VALUES('OD75','P20','7','5600')
INSERT ORDERDETAIL
VALUES('OD76','P15','5','3750')
INSERT ORDERDETAIL
VALUES('OD77','P14','6','3900')
INSERT ORDERDETAIL
VALUES('OD78','P11','9','4500')
INSERT ORDERDETAIL
VALUES('OD79','P16','8','7200')
INSERT ORDERDETAIL
VALUES('OD80','P20','5','4000')
INSERT ORDERDETAIL
VALUES('OD81','P16','6','5400')
INSERT ORDERDETAIL
VALUES('OD82','P19','5','3750')
INSERT ORDERDETAIL
VALUES('OD83','P17','4','2800')
INSERT ORDERDETAIL
VALUES('OD84','P10','5','4000')
INSERT ORDERDETAIL
VALUES('OD85','P07','7','5250')
INSERT ORDERDETAIL
VALUES('OD86','P01','5','5000')
INSERT ORDERDETAIL
VALUES('OD87','P04','6','9000')
INSERT ORDERDETAIL
VALUES('OD88','P08','4','2400')
INSERT ORDERDETAIL
VALUES('OD89','P09','7','5250')
INSERT ORDERDETAIL
VALUES('OD90','P05','8','16000')
INSERT ORDERDETAIL
VALUES('OD91','P10','6','4800')
INSERT ORDERDETAIL
VALUES('OD92','P14','5','3750')
INSERT ORDERDETAIL
VALUES('OD93','P18','2','1700')
INSERT ORDERDETAIL
VALUES('OD94','P17','3','2100')
INSERT ORDERDETAIL
VALUES('OD95','P20','4','3200')
INSERT ORDERDETAIL
VALUES('OD96','P09','6','4200')
INSERT ORDERDETAIL
VALUES('OD97','P13','5','3500')
INSERT ORDERDETAIL
VALUES('OD98','P18','8','6800')
INSERT ORDERDETAIL
VALUES('OD99','P12','9','7200')
INSERT ORDERDETAIL
VALUES('OD100','P11','8','4000')

---Query
--1. Lấy ra danh sách tất cả các khách hàng trong cơ sỡ dữ liệu
select *
from CUSTOMER
--2. lấy ra danh sách tất cả các khách hàng có địa chỉ ở Phú Quốc
select *
from CUSTOMER C
where c.Diachi like 'PHU QUOC'
--3. Lấy ra danh sách sản phẩm có trong cơ sỡ dữ liệu
select *
from PRODUCT
--4. Lấy ra danh sách các sản phẩm có giá trên 900$
select *
from PRODUCT D
where d.Price >= 900
--5. Lấy ra danh sách các sản phẩm có số lượng lơn hơn 900
select *
from PRODUCT D
where d.Quantity >= 900
--6. Lấy ra danh sách các sản phẩm là Laptop
select *
from PRODUCT D
where d.Name like '%Laptop%'
--7. Lấy ra danh sách các khách hàng có mua hàng vào tháng 3 năm 2000
select c.*, o.Datebuy
from ORDERS o, CUSTOMER c
where o.IDCustomer = c.IDCustomer
and o.Datebuy like '%2001-03-%'
--8. Lấy ra danh sách khách hàng mua trên 10 món hàng
select c.*, od.IDProduct,p.Name, od.Quantity
from ORDERDETAIL od, ORDERS o, CUSTOMER c, PRODUCT p
where od.IDOrder = o.IDOrder
and o.IDCustomer = c.IDCustomer
and p.IDProduct = od.IDProduct
and od.Quantity >= 10
--9. Lấy ra danh sách tất cả các khách hàng sắp xếp số lượng hàng đã mua theo thứ tự giảm dần theo từng món hàng
select c.*, od.IDProduct,p.Name, od.Quantity
from ORDERDETAIL od, ORDERS o, CUSTOMER c, PRODUCT p
where od.IDOrder = o.IDOrder
and o.IDCustomer = c.IDCustomer
and p.IDProduct = od.IDProduct
order by od.Quantity desc
--10. Lấy ra danh sách khách hàng đã mua sản phẩm là 'MOUSE' kèm theo số lượng đã mua
select c.*, od.IDProduct,p.Name, od.Quantity
from ORDERDETAIL od, ORDERS o, CUSTOMER c, PRODUCT p
where od.IDOrder = o.IDOrder
and o.IDCustomer = c.IDCustomer
and p.IDProduct = od.IDProduct
and p.Name like '%MOUSE%'
--11. Lấy ra danh sách tất cả các khách hàng sắp xếp số lượng hàng đã mua theo thứ tự giảm dần tổng tất cả số hàng
select c.Name, c.IDCustomer, SUM(od.Quantity) as TongSL
from ORDERDETAIL od, ORDERS o, CUSTOMER c, PRODUCT p
where od.IDOrder = o.IDOrder
and o.IDCustomer = c.IDCustomer
and p.IDProduct = od.IDProduct
group by c.Name, c.IDCustomer
order by TongSL desc
--12. Lấy ra danh sách khách hàng và tổng tiền họ đã mua sản phẩm sắp xếp theo thứ tự giảm dần tổng tiền
select c.Name, c.IDCustomer, SUM(od.Price*od.Quantity) as TongTien
from ORDERDETAIL od, ORDERS o, CUSTOMER c, PRODUCT p
where od.IDOrder = o.IDOrder
and o.IDCustomer = c.IDCustomer
and p.IDProduct = od.IDProduct
group by c.Name, c.IDCustomer
order by TongTien desc
--12. Lấy ra danh sách khách hàng và tổng tiền họ đã mua với tổng tiền > 200000 và sắp xếp theo thứ tự tăng dần
select c.Name, c.IDCustomer, SUM(od.Price*od.Quantity) as TongTien
from ORDERDETAIL od, ORDERS o, CUSTOMER c, PRODUCT p
where od.IDOrder = o.IDOrder
and o.IDCustomer = c.IDCustomer
and p.IDProduct = od.IDProduct
group by c.Name, c.IDCustomer having SUM(od.Price*od.Quantity) > 200000
order by TongTien asc
--13. Lấy ra danh sách sản phẩm có giá bán thấp hơn hoặc bằng giá mua
select p.IDProduct, p.Name, p.Price as GiaMua, od.Price as GiaBan
from ORDERDETAIL od, PRODUCT p
where p.IDProduct = od.IDProduct
and od.Price <= p.Price
--14. Lấy ra danh sách sản phẩm đã bán trong tháng 6 năm 2000 tổng tiền đã bán sản phẩm sắp xếp giảm dần
select p.Name,p.IDProduct, o.Datebuy, SUM(od.Price*od.Quantity) as TongTien
from ORDERDETAIL od, ORDERS o, PRODUCT p
where od.IDOrder = o.IDOrder
and p.IDProduct = od.IDProduct
and o.Datebuy like '%2000-06-%'
group by p.Name, p.IDProduct, o.Datebuy
order by TongTien desc
--15. Lấy ra danh sách sản phẩm được bán trong ít hóa đơn nhất
select p.Name,p.IDProduct, o.Datebuy, SUM(od.Quantity) as SL
from ORDERDETAIL od, ORDERS o, PRODUCT p
where od.IDOrder = o.IDOrder
and p.IDProduct = od.IDProduct
group by p.Name, p.IDProduct, o.Datebuy having SUM(od.Quantity) <= all
(
	select SUM(od.Quantity) as SL
	from ORDERDETAIL od, ORDERS o, PRODUCT p
	where od.IDOrder = o.IDOrder
	and p.IDProduct = od.IDProduct
	group by p.Name, p.IDProduct, o.Datebuy
)
-- PROC
--1.viet cau lenh in ra tong so loai mat hang ma @idc da mua
CREATE PROC dsmh @idc nvarchar(5)
AS
BEGIN
	SELECT c.Name, c.IDCustomer, p.IDProduct, p.Name
	FROM PRODUCT p,ORDERDETAIL od , ORDERS o, CUSTOMER c
	WHERE P.IDProduct = od.IDProduct 
	and o.IDOrder = od.IDOrder
	and o.IDCustomer = c.IDCustomer
	and c.IDCustomer = @idc
END

EXEC dsmh 'C02'
--2. viết câu lệnh in ra các mặt hàng có tại cty có giá lớn hơn @price
CREATE PROC dsmh1 @price int
AS
BEGIN
	select *
	from PRODUCT D
	where d.PRICE >= @price
END

EXEC dsmh1 '1000'

--3. viết câu lệnh in ra các mặt hàng có tại cty có số lượng lớn hơn @quan
CREATE PROC dsmh2 @quan int
AS
BEGIN
	select *
	from PRODUCT D
	where d.QUANTITY >= @quan
END

EXEC dsmh2 '2000'

--TRIGGER
CREATE TRIGGER editCustomer on CUSTOMER
AFTER UPDATE
AS
	Begin
		If UPDATE (Name)
			BEGIN RAISERROR ('Can not edit Name of Customer', 16,1)
			ROLLBACK TRANSACTION
			RETURN
			END
	END
	--Kiem chung
UPDATE CUSTOMER
SET Name='ABCXYZ'
WHERE IDCustomer= 'C01'

DROP TRIGGER editCustomer1

--check insert
CREATE TRIGGER CheckInsert ON PRODUCT
AFTER INSERT
AS
BEGIN
 IF (
	(SELECT Price FROM inserted)+ (SELECT Price FROM inserted) = 0
	)
	BEGIN 
	RAISERROR ('Price must not be 0', 16,1)
			ROLLBACK TRANSACTION
			RETURN
	END
END
--check update
CREATE TRIGGER CheckUpdate ON PRODUCT
AFTER UPDATE
AS
BEGIN
 IF (
	(SELECT Price FROM inserted)+ (SELECT Price FROM inserted) = 0
	)
	BEGIN 
	RAISERROR ('Price must not be 0', 16,1)
			ROLLBACK TRANSACTION
			RETURN
	END
END
