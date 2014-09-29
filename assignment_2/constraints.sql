

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

ALTER TABLE `item`
ADD CONSTRAINT `fk_item` 
FOREIGN KEY (`item`)
REFERENCES `department_item`(`item`) ;

ALTER TABLE `sale`
ADD CONSTRAINT `fk_soldby` 
FOREIGN KEY (`employee`)
REFERENCES `employee`( `number`) ;

ALTER TABLE `sale`
ADD CONSTRAINT `fk_item_in_trans` 
FOREIGN KEY (`transaction_id`)
REFERENCES `item`( `transaction_id`) ;

ALTER TABLE `department_item`
ADD CONSTRAINT `fk_item_at_dep` 
FOREIGN KEY (`department`)
REFERENCES `Department`( `department`) ;
