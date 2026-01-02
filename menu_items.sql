USE restaurant_db;
-- 1. View the menu_items table.
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu.
SELECT COUNT(*) FROM menu_items;

-- 3. What are the least and most expensive items on the menu? 
SELECT * FROM menu_items
ORDER BY Price DESC;

SELECT * FROM menu_items
ORDER BY Price;

-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*) FROM menu_items
WHERE Category = 'Italian';

-- 5. What are the least and most expensive Asian dishes on the menu?
SELECT * FROM menu_items
WHERE Category = 'Asian'
ORDER BY Price DESC;

SELECT * FROM menu_items
WHERE Category = 'Asian'
ORDER BY Price;

-- 6. How many dishes are in each category? 
SELECT category, COUNT(item_name) AS num_dishes
FROM menu_items
GROUP BY category;

-- 7. What is the average dish price within each category? 
SELECT category, AVG(price) AS average_price
FROM menu_items
GROUP BY category;