CREATE database Inventory;

USE inventory;

CREATE TABLE Product (
    name VARCHAR(255),
    descr TEXT(255),
    SKU VARCHAR(255),
    category_id INT references Product_Category(id),
    inventory_id INT references Product_Inventory(id),
    price DECIMAL,
    discount_id INT references Discount(id),
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Product_Category (
	id INT,
    name VARCHAR(255),
    descr TEXT(255),
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Product_Inventory (
	id INT,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Discount (
	id INT,
    name VARCHAR(255),
    descr TEXT(255),
    discount_percent DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);