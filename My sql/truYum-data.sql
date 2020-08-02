USE truYum;
         /* 1. View Menu Item List Admin (TYUC001)*/
/* a. Frame insert scripts to add data into menu_item table. Refer View Menu
    Item List Admin screen below for sample data */


INSERT INTO truYum.menu_details VALUES (1, 'Sandwich', 99.00, 'Yes',  '2017-03-15', 'Main Course', 'Yes'),
(2, 'Burger', 129.00, 'Yes',  '2017-12-23', 'Main Course', 'No'),
(3, 'Pizza', 149.00, 'Yes',  '2017-08-21', 'Main Course', 'No'),
(4, 'French Fries', 57.00, 'No',  '2017-07-02', 'Starters', 'Yes'),
(5, 'Chocolate Brownie', 32.00, 'Yes',  '2022-11-02', 'Dessert', 'Yes');

/* b. Frame SQL query to get all menu items  */
SELECT * FROM menu_details;

/* 2. View Menu Item List Customer (TYUC002)
  a. Frame SQL query to get all menu items which after launch date and is
    active.*/
    
SELECT * FROM menu_items
WHERE menu_Active="Yes" AND menu_date <= current_date();

/* 3. Edit Menu Item (TYUC003)
  a. Frame SQL query to get a menu items based on Menu Item Id  */
  
SELECT * FROM menu_items
WHERE menu_id="";

/*  b. Frame update SQL menu_items table to update all the columns values
     based on Menu Item Id */
     
UPDATE menu_items
SET menu_name="", menu_price="",menu_Active="",menu_date="",menu_category="",menu_free_delivery=""
WHERE menu_id="";

/* 4. Add to Cart (TYUC004)
    a. Frame insert scripts for adding data into user and cart tables.In user table
       create two users. Once user will not have any entries in cart, while the
        other will have at least 3 items in the cart */

INSERT INTO user_details
VALUES (1,"venkat"),(2,"fayaz");

INSERT INTO cart
VALUES (1,1,1),(1,2,1),(1,3,1),(2,NULL,2);

/* 5. View Cart (TYUC005)
    a. Frame SQL query to get all menu items in a particular user’s cart */

SELECT  
FROM menu_details m
LEFT JOIN user_details
USING (user_id)
WHERE user_id="";

/* b. Frame SQL query to get the total price of all menu items in a particular
    user’s cart  */
    
SELECT SUM(menu_price)
FROM menu_details
JOIN cart USING(menu_id)
where user_id="";

/* 6. Remove Item from Cart (TYUC006)
   a. Frame SQL query to remove a menu items from Cart based on User Id
      and Menu Item Id */
	
DELETE FROM cart WHERE user_id=" " AND menu_id="";

