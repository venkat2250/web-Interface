CREATE DATABASE truYum;

USE truYum;

CREATE TABLE menu_items(
	menu_id INT PRIMARY KEY,
    menu_name VARCHAR(50) NOT NULL,
    menu_price Decimal(5,2) NOT NULL,
    menu_Active VARCHAR(3) NOT NULL,
    menu_date DATE NOT NULL,
    menu_category VARCHAR(50) NOT NULL,
    menu_free_delivery VARCHAR(10) NOT NULL
);

CREATE TABLE user_details(
	user_id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL
);

CREATE TABLE cart(
	cart_id INT PRIMARY KEY,
    user_id INT REFERENCES user_details(user_id),
    menu_id INT REFERENCES menu_itEms(menu_id)
);