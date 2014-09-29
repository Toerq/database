create database Johnsons_modified;

use Johnsons_modified;

CREATE TABLE IF NOT EXISTS `employee` (
  `number` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `birthyear` int(11) DEFAULT NULL,
  `startyear` int(11) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ;


CREATE TABLE IF NOT EXISTS `sale` (
  `transaction_id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `employee` int(11) NOT NULL,
  `account_number` int(11) DEFAULT NULL,
	PRIMARY KEY (`transaction_id`)
);

CREATE TABLE IF NOT EXISTS `item` (
  `item` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`item`)
);


CREATE TABLE IF NOT EXISTS `department` (
  `department` int(11) NOT NULL,
  `department_name` varchar(20) DEFAULT NULL,
  `department_store` int(11) NOT NULL,
  `department_manager` int(11) DEFAULT NULL,
  `city` varchar(15) NOT NULL,
  PRIMARY KEY (`department`)
);

CREATE TABLE IF NOT EXISTS `department_item` (
  `item` int(11) NOT NULL,
  `department` int(11) NOT NULL,  
  `qoh` int(11) DEFAULT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  PRIMARY KEY (`item`, `department`)
);


/* Task 6 */
CREATE TABLE IF NOT EXISTS `manager`(
  `number` int(11) NOT NULL,
  `bonus`int(11) DEFAULT NULL,
PRIMARY KEY REFERENCES employee (`number`));
/*
http://dba.stackexchange.com/questions/36573/how-to-model-inheritance-of-two-tables-mysql
*/
