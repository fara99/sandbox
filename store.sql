-- struktura databaze

CREATE TABLE store(id integer primary key, store_name varchar(50));
CREATE TABLE product(id integer primary key, product_name varchar(50));
CREATE TABLE stock(store_id integer references store(id),product_id integer references product(id), amount integer);
CREATE UNIQUE INDEX fk_store_id_idx ON stock(store_id);
CREATE UNIQUE INDEX fk_product_id_idx ON stock(product_id);

-- vlozeni sample dat
INSERT INTO store VALUES(0, 'Obchod 1');
INSERT INTO store VALUES(1, 'Obchod 2');
INSERT INTO store VALUES(2, 'Obchod 3');

INSERT INTO product VALUES(0, 'Produkt 1');
INSERT INTO product VALUES(1, 'Produkt 2');
INSERT INTO product VALUES(2, 'Produkt 3');
