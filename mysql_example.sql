#SELECT host, user FROM mysql.user; 
#source report.sql

#(2)
DROP DATABASE salesmanagement;
CREATE DATABASE salesmanagement;
use salesmanagement;
CREATE TABLE product (
	商品番号 CHAR(10) NOT NULL,
    商品名 VARCHAR(60),
    単価 INTEGER,
    PRIMARY KEY(商品番号)
);
CREATE TABLE contactperson (
	担当者番号 CHAR(10) NOT NULL,
    担当者名 VARCHAR(60),
    PRIMARY KEY(担当者番号)
);
CREATE TABLE customer (
	得意先番号 CHAR(10) NOT NULL,
    得意先名 VARCHAR(60),
    連絡先 VARCHAR(11),
    担当者番号 CHAR(10),
    PRIMARY KEY(得意先番号)
);
CREATE TABLE sales (
	売上番号 CHAR(10) NOT NULL,
    得意先番号 CHAR(10),
    売上日 CHAR(10),
    PRIMARY KEY(売上番号)
);
CREATE TABLE salesaccount (
	売上番号 CHAR(10),
	明細番号 INTEGER NOT NULL,
    商品番号 CHAR(10),
    数量 INTEGER,
    PRIMARY KEY(明細番号)
);

ALTER TABLE customer ADD
	CONSTRAINT customerFK001 FOREIGN KEY(担当者番号)
    REFERENCES contactperson(担当者番号);
ALTER TABLE sales ADD
	CONSTRAINT salesFK001 FOREIGN KEY(得意先番号)
    REFERENCES customer(得意先番号);
ALTER TABLE salesaccount ADD
	CONSTRAINT salesaccountFK001 FOREIGN KEY(売上番号)
    REFERENCES sales(売上番号);
ALTER TABLE salesaccount ADD
	CONSTRAINT salesaccountFK002 FOREIGN KEY(商品番号)
    REFERENCES product(商品番号);
#SHOW TABLES;
#SHOW FULL TABLES;
#DESCRIBE product;

#(3)
INSERT INTO product (商品番号,商品名,単価) VALUES ('WA001','中型全自動洗濯機',30000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('WA002','大型全自動洗濯機',50000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('WA003','全自動洗濯乾燥機',80000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('RE001','小型冷蔵庫',25000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('RE002','中型冷蔵庫',40000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('RE003','大型冷蔵庫',70000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('TV020','20型テレビ',25000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('TV040','40型テレビ',65000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('TV050','50型テレビ',140000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('AC001','小型エアコン',50000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('AC002','中型エアコン',70000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('AC003','大型エアコン',110000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('HD001','ヘアドライヤー',12000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('LL001','LED卓上スタンド',9800);
INSERT INTO product (商品番号,商品名,単価) VALUES ('PF001','デジタルフォトフレーム',12300);
INSERT INTO product (商品番号,商品名,単価) VALUES ('VC001','電気掃除機',64800);
INSERT INTO product (商品番号,商品名,単価) VALUES ('AA001','空気清浄機',19800);
INSERT INTO product (商品番号,商品名,単価) VALUES ('AA002','大型空気清浄機',39800);
INSERT INTO product (商品番号,商品名,単価) VALUES ('EF001','卓上型扇風機',4980);
INSERT INTO product (商品番号,商品名,単価) VALUES ('EF002','扇風機',9780);
INSERT INTO product (商品番号,商品名,単価) VALUES ('MO001','電子レンジ',49800);
INSERT INTO product (商品番号,商品名,単価) VALUES ('IH001','IH調理器',26500);
INSERT INTO product (商品番号,商品名,単価) VALUES ('CA001','ビデオカメラ',49800);
INSERT INTO product (商品番号,商品名,単価) VALUES ('PJ001','液晶プロジェクタ',19800);
INSERT INTO product (商品番号,商品名,単価) VALUES ('HP001','たこ焼きもできちゃうホットプレート',7980);
INSERT INTO product (商品番号,商品名,単価) VALUES ('JP001','スマートフォン',90000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('JP002','パソコン',150000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('JP003','スマートウォッチ',50000);
INSERT INTO product (商品番号,商品名,単価) VALUES ('JP004','スマートアシスタント',50000);

INSERT INTO contactperson (担当者番号,担当者名) VALUES ('P001','安藤一郎');
INSERT INTO contactperson (担当者番号,担当者名) VALUES ('P002','加藤次郎');
INSERT INTO contactperson (担当者番号,担当者名) VALUES ('P003','佐藤三郎');
INSERT INTO contactperson (担当者番号,担当者名) VALUES ('P004','田中史朗');
INSERT INTO contactperson (担当者番号,担当者名) VALUES ('P005','木下五郎');

INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C001','第一産業','05011111111','P001');
INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C002','第二興業','05022222222','P001');
INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C003','三ツ星商会','05033333333','P002');
INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C004','四菱堂','05044444444','P003');
INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C005','第五電機','05055555555','P003');
INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C006','六鱗','05066666666','P004');
INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C007','七商事','05077777777','P001');
INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C008','八ホールディングス','05088888888','P002');
INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C009','九新聞','05099999999','P003');

INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S001','C001','2016/04/14');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S002','C002','2016/04/25');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S003','C001','2016/04/24');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S004','C003','2016/04/22');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S005','C004','2016/04/20');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S006','C005','2016/04/13');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S007','C002','2016/04/14');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S008','C004','2016/04/22');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S009','C005','2016/04/18');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S010','C005','2016/04/24');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S011','C002','2016/04/25');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S012','C003','2016/04/15');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S013','C001','2016/04/19');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S014','C003','2016/04/23');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S015','C004','2016/04/23');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S016','C001','2016/04/12');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S017','C002','2016/04/11');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S018','C001','2016/04/22');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S019','C003','2016/04/27');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S020','C004','2016/04/19');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S021','C005','2016/04/04');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S022','C002','2016/04/22');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S023','C004','2016/04/21');
INSERT INTO sales (売上番号,得意先番号,売上日) VALUES ('S024','C006','2016/04/30');

INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S001',1,'RE002',19);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S001',2,'RE001',16);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S001',3,'WA003',17);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S002',4,'WA001',15);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S002',5,'RE001',20);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S003',6,'AC001',16);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S003',7,'LL001',3);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S003',8,'WA002',10);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S003',9,'RE003',20);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S004',10,'WA001',19);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S004',11,'HD001',16);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S004',12,'TV040',19);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S004',13,'HD001',2);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S005',14,'PF001',13);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S005',15,'TV050',18);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S006',16,'LL001',12);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S007',17,'AC002',1);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S007',18,'MO001',6);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S007',19,'EF002',1);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S008',20,'HP001',17);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S008',21,'EF001',13);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S008',22,'PJ001',2);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S009',23,'IH001',13);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S009',24,'VC001',23);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S010',25,'PF001',21);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S010',26,'TV020',24);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S010',27,'AC001',23);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S011',28,'LL001',4);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S011',29,'VC001',3);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S011',30,'TV050',9);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S012',31,'EF001',12);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S012',32,'VC001',1);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S013',33,'HD001',20);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S013',34,'EF002',22);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S013',35,'VC001',18);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S013',36,'HP001',25);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S014',37,'PJ001',22);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S014',38,'TV050',3);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S014',39,'WA003',9);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S014',40,'PJ001',17);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S015',41,'EF001',5);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S015',42,'RE003',22);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S015',43,'PJ001',11);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S015',44,'AC002',4);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S015',45,'VC001',1);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S015',46,'JP001',4);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S016',47,'JP002',3);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S017',48,'JP003',9);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S018',49,'JP004',12);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S019',50,'JP001',1);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S019',51,'JP002',20);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S020',52,'JP003',22);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S020',53,'JP004',18);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S021',54,'JP001',25);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S021',55,'JP002',22);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S022',56,'JP003',3);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S023',57,'JP004',9);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S023',58,'JP001',17);
INSERT INTO salesaccount (売上番号,明細番号,商品番号,数量) VALUES ('S024',59,'JP002',5);

#SELECT * FROM product;

#SELECT * FROM contactperson;

#SELECT * FROM customer;
#SELECT * FROM sales;
#SELECT * FROM salesaccount;

#(4)
INSERT INTO contactperson (担当者番号,担当者名) VALUES ('P006','鈴木十六');
SELECT * FROM contactperson;
UPDATE contactperson SET 担当者名 = '菊池十六' WHERE 担当者番号 = 'P006';
SELECT * FROM contactperson;
DELETE FROM contactperson WHERE 担当者番号 = 'P006';
SELECT * FROM contactperson;

#(5)
#1
SELECT 単価 FROM product WHERE 20000 <= 単価 AND 単価 <= 40000;
#2
SELECT 得意先名, 連絡先 FROM customer;
#3
SELECT 得意先名, 担当者名 FROM contactperson, customer WHERE contactperson.担当者番号=customer.担当者番号;
#4
SELECT product.商品番号, 商品名 FROM product, sales, salesaccount 
	WHERE product.商品番号=salesaccount.商品番号 AND sales.売上番号=salesaccount.売上番号 
    AND '2016/04/15' <= sales.売上日 AND sales.売上日 <= '2016/04/21'; 
#5
SELECT product.商品番号, 商品名 FROM product, sales, salesaccount 
	WHERE product.商品番号=salesaccount.商品番号 AND sales.売上番号=salesaccount.売上番号 
    AND '2016/04/15' <= sales.売上日 AND sales.売上日 <= '2016/04/21' GROUP BY product.商品番号; 
#6
SELECT product.商品番号, 商品名, SUM(数量) AS 売上数量 FROM product, sales, salesaccount 
	WHERE product.商品番号=salesaccount.商品番号 AND sales.売上番号=salesaccount.売上番号 
    AND '2016/04/15' <= sales.売上日 AND sales.売上日 <= '2016/04/21' GROUP BY product.商品番号;
#
##7
SELECT product.商品番号, 商品名, 数量 FROM product, sales, salesaccount 
	WHERE product.商品番号=salesaccount.商品番号 AND sales.売上番号=salesaccount.売上番号 
    AND '2016/04/15' <= sales.売上日 AND sales.売上日 <= '2016/04/21'
    AND salesaccount.数量 > 20;
##8
SELECT SUM(product.単価 * salesaccount.数量) AS 売上金額 FROM product NATURAL JOIN salesaccount
    WHERE salesaccount.売上番号 = 'S001';
#9
SELECT sales.売上日, product.商品名, salesaccount.数量 FROM sales, product, salesaccount 
    WHERE product.商品番号 = salesaccount.商品番号
    AND sales.売上番号 = salesaccount.売上番号
   AND sales.得意先番号 = 'C003'
    AND '2016/04/15' <= sales.売上日 AND sales.売上日 <= '2016/04/21';
#10
SELECT sales.得意先番号, SUM(product.単価 * salesaccount.数量) AS 売上合計金額 FROM product,sales, salesaccount
	WHERE product.商品番号=salesaccount.商品番号 AND sales.売上番号=salesaccount.売上番号 GROUP BY sales.得意先番号;
#11
SELECT contactperson.担当者名, SUM(product.単価 * salesaccount.数量) AS 売上合計金額 FROM product, customer, contactperson ,sales ,salesaccount
	WHERE contactperson.担当者番号 = customer.担当者番号 AND customer.得意先番号 = sales.得意先番号
    AND sales.売上番号=salesaccount.売上番号 GROUP BY contactperson.担当者名;
#12
SELECT customer.得意先名 FROM customer NATURAL JOIN sales WHERE '2016/04/15' <= sales.売上日 AND sales.売上日 <= '2016/04/21'
    GROUP BY customer.得意先名;

#report(2)
SELECT DISTINCT customer.担当者番号 AS customer担当者番号 FROM customer;
SELECT DISTINCT contactperson.担当者番号 AS contactperson担当者番号 FROM contactperson;
SELECT * FROM customer;

INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C010','テンニュース','05000000000','P009');
DELETE FROM contactperson WHERE 担当者番号 = 'P001';

INSERT INTO customer (得意先番号,得意先名,連絡先,担当者番号) VALUES ('C010','テンニュース','05000000000','P003');
DELETE FROM contactperson WHERE 担当者番号 = 'P005';
