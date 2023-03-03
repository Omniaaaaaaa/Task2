CREATE DATABASE IF NOT EXISTS market;
CREATE TABLE Customers (
Id int NOT NULL,
firstname varchar(255)NOT NULL,
lastName varchar(255) ,
Age int 
);
ALTER TABLE customers
Add city varchar(255) default 'Egpt';

Alter TABLE customers 
ADD CONSTRAINT PK_customer primary key(Id);

ALTER TABLE orders
ADD FOREIGN KEY (OrdersId) references customers;

CREATE TABLE orders (
OrderId int NOT NULL,
OrderNumber int ,
PersonId int NOT NULL
);

Alter TABLE orders
ADD CONSTRAINT PK_product primary key(OrderId);

CREATE TABLE Products (
ProductId int NOT NULL,
productName varchar(255) NOT NULL,
productline varchar(255) NOT NULL
);

Alter TABLE products
ADD CONSTRAINT PK_product primary key(ProductId);

ALTER TABLE products
ADD FOREIGN KEY (ProductId) references orders(OrderId);


				
                    
                    
                    
