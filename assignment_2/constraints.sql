

ALTER TABLE `employee`
ADD CONSTRAINT `fk_emp_mana` 
FOREIGN KEY (`manager`) 
REFERENCES `employee` (`number`) 
ON DELETE SET NULL;

ALTER TABLE `department`
ADD CONSTRAINT `fk_dep_mana` 
FOREIGN KEY (`department_manager`) 
REFERENCES `employee` (`number`) 
ON DELETE SET NULL;

ALTER TABLE `sale`
ADD CONSTRAINT `fk_soldby` 
FOREIGN KEY (`employee`)
REFERENCES `employee`( `number`) ;



ALTER TABLE `department_manager`
ADD CONSTRAINT `fk_item` 
FOREIGN KEY (`item`)
REFERENCES `department_item`(`item`) ;


ALTER TABLE `item`
ADD CONSTRAINT `fk_item` 
FOREIGN KEY (`item`)
REFERENCES `department_item`(`item`) ;



/* task 6 */
ALTER TABLE `manager`
ADD CONSTRAINT `fk_manager` 
FOREIGN KEY (`number`)
REFERENCES `employee`(`number`) ;

ALTER TABLE `manager`
ADD CONSTRAINT `fk_manager` 
FOREIGN KEY (`number`)
REFERENCES `employee`(`number`) ;

ALTER TABLE `department`
ADD CONSTRAINT `fk_dep_manager` 
FOREIGN KEY (`department_manager`) 
REFERENCES `manager` (`number`) 
ON DELETE SET NULL;

ALTER TABLE `department`
ADD CONSTRAINT `fk_dep_manager` 
FOREIGN KEY (`department_manager`) 
REFERENCES `manager` (`number`) 
ON DELETE SET NULL;

ALTER TABLE `department` 
ADD CONSTRAINT `is_manager` 
FOREIGN KEY(`department_manager`) 
REFERENCES `Manager`(`number`)
ON DELETE SET NULL;

ALTER TABLE `employee` 
ADD CONSTRAINT `is_man_of_emp` 
FOREIGN KEY(`manager`) 
REFERENCES `Manager`(`number`)
ON DELETE SET NULL;


/*ALTER TABLE `sale`
ADD CONSTRAINT `fk_item_in_trans` 
FOREIGN KEY (`transaction_id`)
REFERENCES `item`( `transaction_id`) ;



ALTER TABLE `department_item`
ADD CONSTRAINT `fk_item_at_dep` 
FOREIGN KEY (`department`)
REFERENCES `Department`( `department`) ;
*/
