CREATE TABLE users( 
	"id" serial NOT NULL,
	"name" varchar(50) NOT NULL,
	"password" TEXT NOT NULL,
	"email" TEXT NOT NULL UNIQUE
); 
	
CREATE TABLE products (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"amount" integer DEFAULT '0',
	"price" numeric NOT NULL,
	"categoryId" INTEGER NOT NULL,
	"pictureId" INTEGER NOT NULL,
	"sizeId" INTEGER NOT NULL  
);

 

CREATE TABLE categoryes (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL UNIQUE,
	"productId" INTEGER NOT NULL  
);


CREATE TABLE "size" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL
);



CREATE TABLE picture (
	"id" serial NOT NULL,
	"url" TEXT NOT NULL,
	"productId" INTEGER NOT NULL
	 
);



CREATE TABLE "order" (
	"id" serial NOT NULL,
	"userId" INTEGER NOT NULL,
	"orderProductId" INTEGER NOT NULL,
	"price" numeric NOT NULL,
	"date" DATE NOT NULL,
	"status" TEXT NOT NULL
);



CREATE TABLE orderProduct (
	"id" serial NOT NULL,
	"productId" INTEGER NOT NULL,
	"orderId" INTEGER NOT NULL,
	"quantity" int NOT NULL
);



CREATE TABLE address (
	"id" serial NOT NULL,
	"useId" INTEGER NOT NULL,
	"streetName" TEXT NOT NULL,
	"number" TEXT NOT NULL,
	"complement" TEXT NOT NULL,
	"cep" TEXT NOT NULL,
	"cityId" INTEGER NOT NULL
);



CREATE TABLE  city (
	"id" serial NOT NULL,
	"stateId" INTEGER NOT NULL,
	"name" TEXT NOT NULL
);



CREATE TABLE "state" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL 
);