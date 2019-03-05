--#1
SELECT * FROM "customers"
JOIN "addresses" ON "addresses"."customer_id" = "customers"."id"
;
--#2
SELECT * FROM "line_items"
JOIN "orders" ON "line_items"."order_id" = "orders"."id"
JOIN "products" ON "line_items"."product_id" = "products"."id";
--#3
SELECT "warehouse"."warehouse" FROM "warehouse_product"
JOIN "warehouse" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'cheetos';
-- DELTA
--#4
SELECT "warehouse"."warehouse" FROM "warehouse_product"
JOIN "warehouse" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'diet pepsi'
-- ALPHA
-- DELTA
-- GAMMA
--#5
SELECT "customers"."first_name", count("orders"."address_id")  FROM "orders"
JOIN "addresses" ON "addresses"."customer_id" = "orders"."address_id"
JOIN "customers" ON "customers"."id" = "addresses"."customer_id"
GROUP BY "customers"."first_name";
--#6
SELECT count(*) FROM "customers"
--#7
SELECT count(*) FROM "products"
--#8
SELECT  sum("warehouse_product"."on_hand") FROM "warehouse_product"
JOIN "warehouse" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'diet pepsi'
;
