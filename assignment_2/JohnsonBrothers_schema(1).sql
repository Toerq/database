

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
  `item` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sale_date` date NOT NULL,
  `employee` int(11) NOT NULL,
  `account_number` int(11) DEFAULT NULL,
	PRIMARY KEY (`transaction_id`,`item`)
);

CREATE TABLE IF NOT EXISTS `items_at_department` (
  `item` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `qoh` int(11) DEFAULT NULL,
  `department_name` varchar(20) DEFAULT NULL,
  `department_store` int(11) NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `department_manager` int(11) DEFAULT NULL,
  `city` varchar(15) NOT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`item`,`department`)
);




