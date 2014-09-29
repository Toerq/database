INSERT INTO `employee` (`number`, `name`, `salary`, `manager`, `birthyear`, `startyear`)
SELECT number, name, salary, manager, birthyear, startyear
FROM JohnsonBrothers.employee

INSERT INTO `sale`(`transaction_id`, `sale_date`, `employee`, `account_number`)
SELECT distinct transaction_id, sale_date, employee, account_number
FROM JohnsonBrothers.sale

INSERT INTO `item`(`transaction_id`, `item`, `quantity`)
SELECT transaction_id, item, quantity
FROM JohnsonBrothers.sale

INSERT INTO `department` (`department`, `department_name`, `department_store`, `department_manager`, `city`) 
SELECT distinct department, department_name, department_store, department_manager, city
FROM JohnsonBrothers.items_at_department

INSERT INTO `department_item` (`item`, `department`, `qoh`, `item_name`, `item_price`, `floor`) 
SELECT distinct item, department, qoh, item_name, item_price, floor
FROM JohnsonBrothers.items_at_department
