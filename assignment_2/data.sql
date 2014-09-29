INSERT INTO `employee` (`number`, `name`, `salary`, `manager`, `birthyear`, `startyear`)
SELECT number, name, salary, manager, birthyear, startyear
FROM employee

INSERT INTO `sale`(`transaction_id`, `sale_date`, `employee`, `account_number`) VALUES
SELECT transaction_id, sale_date, employee, account_number
FROM sale

INSERT INTO `sale`(`transaction_id`, `item`, `quantity)
SELECT transaction_id, item, quantity
FROM sale

INSERT INTO `department` (`department`, `department_name`, `department_store`, `department_manager`, `city`) 
SELECT department, department_name, department_store, department_manager, city
FROM items_at_department

INSERT INTO `department_item` (`item`, `department`, `qoh`, `item_name`, `item_price`, `floor`) 
SELECT item, department, qoh, item_name, item_price, floor
FROM items_at_department
