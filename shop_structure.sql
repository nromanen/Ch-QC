CREATE TABLE "country" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "city" (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "country_id" bigint
);

CREATE TABLE "employee" (
  "id" serial PRIMARY KEY,
  "person_id" bigint,
  "birth_date" date,
  "hire_date" date,
  "address" varchar,
  "note" text,
  "chief_id" bigint
);

CREATE TABLE "person" (
  "id" serial PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "city_id" bigint
);

CREATE TABLE "category" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "product" (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "price" real,
  "country_id" bigint,
  "category_id" bigint
);

CREATE TABLE "order" (
  "id" serial PRIMARY KEY,
  "employee_id" bigint,
  "order_date" date,
  "shipped_date" date,
  "person_id" bigint,
  "city_delivery_id" bigint
);

CREATE TABLE "order_items" (
  "id" serial PRIMARY KEY,
  "product_id" bigint,
  "quantity" real,
  "order_id" bigint,
  "historical_price" real
);

ALTER TABLE "city" ADD FOREIGN KEY ("country_id") REFERENCES "country" ("id");

ALTER TABLE "person" ADD FOREIGN KEY ("city_id") REFERENCES "city" ("id");

ALTER TABLE "employee" ADD FOREIGN KEY ("person_id") REFERENCES "person" ("id");

ALTER TABLE "employee" ADD FOREIGN KEY ("chief_id") REFERENCES "person" ("id");

ALTER TABLE "product" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

ALTER TABLE "order" ADD FOREIGN KEY ("employee_id") REFERENCES "employee" ("id");

ALTER TABLE "order" ADD FOREIGN KEY ("person_id") REFERENCES "person" ("id");

ALTER TABLE "order_items" ADD FOREIGN KEY ("product_id") REFERENCES "product" ("id");

ALTER TABLE "order_items" ADD FOREIGN KEY ("order_id") REFERENCES "order" ("id");

ALTER TABLE "product" ADD FOREIGN KEY ("country_id") REFERENCES "country" ("id");