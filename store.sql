-- struktura databaze

CREATE TABLE store(
id int primary key
, store_name varchar(50) NOT NULL);
CREATE TABLE product(
id int primary key
, product_name varchar(50) NOT NULL);
CREATE TABLE stock(
store_id int references store(id) ON UPDATE CASCADE ON DELETE CASCADE
,product_id int references product(id) ON UPDATE CASCADE ON DELETE CASCADE
, amount int NOT NULL DEFAULT 0);

-- indexy
CREATE INDEX fk_store_id_idx ON stock(store_id);
CREATE INDEX fk_product_id_idx ON stock(product_id);

-- vlozeni sample dat
INSERT INTO store VALUES(0, 'Obchod 1');
INSERT INTO store VALUES(1, 'Obchod 2');
INSERT INTO store VALUES(2, 'Obchod 3');

INSERT INTO product VALUES(0, 'Produkt 1');
INSERT INTO product VALUES(1, 'Produkt 2');
INSERT INTO product VALUES(2, 'Produkt 3');
INSERT INTO product VALUES(3, 'Produkt 4');
INSERT INTO product VALUES(4, 'Produkt 5');

INSERT INTO stock VALUES(0,0,5);
INSERT INTO stock VALUES(0,1,3);
INSERT INTO stock VALUES(0,2,4);
INSERT INTO stock VALUES(0,3,0);
INSERT INTO stock VALUES(0,4,2);

INSERT INTO stock VALUES(1,0,1);
INSERT INTO stock VALUES(1,1,2);
INSERT INTO stock VALUES(1,2,3);
INSERT INTO stock VALUES(1,3,4);
INSERT INTO stock VALUES(1,4,5);

INSERT INTO stock VALUES(2,0,5);
INSERT INTO stock VALUES(2,1,4);
INSERT INTO stock VALUES(2,2,3);
INSERT INTO stock VALUES(2,3,2);
INSERT INTO stock VALUES(2,4,1);
