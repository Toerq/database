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

/* Task #7, increase salary */
UPDATE employee, department
SET salary = salary + 10000
WHERE department_manager = employee.number;


/*
UPDATE [LOW_PRIORITY] [IGNORE] table_reference
    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...
    [WHERE where_condition]
    [ORDER BY ...]
    [LIMIT row_count]

Multiple-table syntax:

UPDATE [LOW_PRIORITY] [IGNORE] table_references
    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...
    [WHERE where_condition]
*/
