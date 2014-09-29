

ALTER TABLE `employee`
ADD CONSTRAINT `fk_emp_mana` 
FOREIGN KEY (`manager`) 
REFERENCES `employee` (`number`) 
ON DELETE SET NULL;


ALTER TABLE `items_at_department`
ADD CONSTRAINT `fk_dep_mana` 
FOREIGN KEY (`department_manager`) 
REFERENCES `employee` (`number`) 
ON DELETE SET NULL;

ALTER TABLE `sale`
ADD CONSTRAINT `fk_item` 
FOREIGN KEY (`item`)
REFERENCES `items_at_department`(`item`) ;


ALTER TABLE `sale`
ADD CONSTRAINT `fk_soldby` 
FOREIGN KEY (`employee`)
REFERENCES `employee`( `number`) ;

