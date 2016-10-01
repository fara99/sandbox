CREATE TABLE store(id integer primary key, store_name varchar(50));
CREATE TABLE product(id integer primary key, product_name varchar(50));
CREATE TABLE stock(store_id integer references store(id),product_id integer references product(id), amount integer);
CREATE UNIQUE INDEX fk_store_id_idx ON stock(store_id);
CREATE UNIQUE INDEX fk_product_id_idx ON stock(product_id);
