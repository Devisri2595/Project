/*
SQLyog Community Edition- MySQL GUI v6.56
MySQL - 5.7.19-log : Database - demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`demo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `demo`;

/*Table structure for table `deliverytracking` */

DROP TABLE IF EXISTS `deliverytracking`;

CREATE TABLE `deliverytracking` (
  `DeliveryId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PurchaseId` int(11) unsigned NOT NULL,
  `Status` varchar(3) NOT NULL DEFAULT 'NO',
  `ExpectedDate` date NOT NULL,
  PRIMARY KEY (`DeliveryId`),
  KEY `purchase_delivery_fk` (`PurchaseId`),
  CONSTRAINT `purchase_delivery_fk` FOREIGN KEY (`PurchaseId`) REFERENCES `purchases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deliverytracking` */

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (1),(1),(1),(1),(1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `First` varchar(255) DEFAULT NULL,
  `Middle` varchar(255) DEFAULT NULL,
  `Last` varchar(255) DEFAULT NULL,
  `ProductId` int(11) unsigned NOT NULL,
  `NumberShipped` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `number_shipped` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_product_fk` (`ProductId`),
  CONSTRAINT `FKjqf4ft21thola5u6pj0i9fb25` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`),
  CONSTRAINT `order_product_fk` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`Title`,`First`,`Middle`,`Last`,`ProductId`,`NumberShipped`,`OrderDate`,`number_shipped`,`order_date`,`product_id`) values (1,'','Suzy','','Customer',3,10,'2014-04-01',0,NULL,NULL),(2,'','Suzy','','Customer',3,20,'2014-04-22',0,NULL,NULL),(3,'','Ben','','Thomas',1,5,'2014-04-11',0,NULL,NULL),(4,'','Johnny','','Test',3,10,'2014-04-02',0,NULL,NULL),(5,'','Steve','','Smith',1,20,'2014-04-15',0,NULL,NULL),(6,'','Steve','','Palmer',3,3,'2014-02-22',0,NULL,NULL),(7,'','Tim','','Scott',3,5,'2014-03-22',0,NULL,NULL),(8,'','Dave','','Boyd',3,10,'2014-01-22',0,NULL,NULL),(9,'','Suzy','','Customer',2,30,'2014-01-21',0,NULL,NULL),(10,'','Dylan','','Test',3,5,'2014-04-23',0,NULL,NULL),(11,'','Betty','','Fryar',3,12,'2014-04-22',0,NULL,NULL),(12,'','Jerry','','Sellers',2,124,'2014-04-22',0,NULL,NULL),(13,'','BOB','','SMITH',2,500,'2014-05-11',0,NULL,NULL),(14,'','Suzy','','Customer',5,5,'2015-04-07',0,NULL,NULL),(15,'','Suzy','','Customer',9,50,'2015-04-07',0,NULL,NULL),(16,'','Suzy','','Customer',3,1,'2015-04-07',0,NULL,NULL),(17,'','Suzy','','Customer',10,5,'2015-09-09',0,NULL,NULL),(18,'','john','','lemeasure',10,12,'2016-02-05',0,NULL,NULL),(19,'','Suzy','','Customer',9,2,'2017-02-25',0,NULL,NULL),(20,'','','','',9,1,'2017-01-15',0,NULL,NULL),(21,'','llkjh','','kjlkh',11,250,'2017-02-15',0,NULL,NULL),(22,'','Suzy','','Customer',16,14,'2017-04-05',0,NULL,NULL),(23,'','Suzy','','Customer',11,50,'2017-06-05',0,NULL,NULL),(24,'','Suzy','','Customer',9,200,'2017-06-05',0,NULL,NULL),(25,'','Test','','Cowley',14,12,'2017-11-05',0,NULL,NULL),(26,'','Elvis','','P',17,900,'2017-04-05',0,NULL,NULL),(27,'','Elvis','','P',18,9000,'2017-06-05',0,NULL,NULL),(28,'','','','',4,0,'2017-04-05',0,NULL,NULL);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) DEFAULT NULL,
  `PartNumber` varchar(255) DEFAULT NULL,
  `ProductLabel` varchar(255) DEFAULT NULL,
  `StartingInventory` int(11) DEFAULT NULL,
  `InventoryReceived` int(11) DEFAULT NULL,
  `InventoryShipped` int(11) DEFAULT NULL,
  `InventoryOnHand` int(11) DEFAULT NULL,
  `MinimumRequired` int(11) DEFAULT NULL,
  `inventory_on_hand` int(11) NOT NULL,
  `inventory_received` int(11) NOT NULL,
  `inventory_shipped` int(11) NOT NULL,
  `minimum_required` int(11) NOT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `product_label` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `starting_inventory` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`ProductName`,`PartNumber`,`ProductLabel`,`StartingInventory`,`InventoryReceived`,`InventoryShipped`,`InventoryOnHand`,`MinimumRequired`,`inventory_on_hand`,`inventory_received`,`inventory_shipped`,`minimum_required`,`part_number`,`product_label`,`product_name`,`starting_inventory`) values (1,'Dell Server','XP 2000','Dell Server- XP 2000',100007,35,25,100017,15,0,0,0,0,NULL,NULL,NULL,0),(2,'Google Chromebooks','1','Google Chromebooks- 1.0',100,75,654,-479,20,0,0,0,0,NULL,NULL,NULL,0),(3,'Cisco Router','10X','Cisco Router- 10X',45,143,76,86,88,0,0,0,0,NULL,NULL,NULL,0),(4,'sadasd','21','sadasd- 21',25,0,0,25,10,0,0,0,0,NULL,NULL,NULL,0),(5,'Semih','37','Semih- 37',1,12,5,8,5,0,0,0,0,NULL,NULL,NULL,0),(6,'crazy horse router','123DF5','crazy horse router- 123DF5',5,23,0,28,1,0,0,0,0,NULL,NULL,NULL,0),(7,'Monitors','','Monitors - 999',0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0),(8,'TEST','123','TEST- 123',10,0,0,10,10,0,0,0,0,NULL,NULL,NULL,0),(9,'bob','bob-1','bob- bob-1',500,412,267,6450,400,0,0,0,0,NULL,NULL,NULL,0),(10,'Multimeter','c345','Multimeter- c345',3,28,29,2,4,0,0,0,0,NULL,NULL,NULL,0),(11,'dfgdf','54334','dfgdf- 54334',0,0,300,-300,0,0,0,0,0,NULL,NULL,NULL,0),(12,'UniBox','1','UniBox- 1',200,0,0,200,300,0,0,0,0,NULL,NULL,NULL,0),(13,'Test 1','123456','Test 1- 123456',50,1234,0,1284,10,0,0,0,0,NULL,NULL,NULL,0),(14,'Toby','57456','Toby- 57456',567,22,12,577,56467,0,0,0,0,NULL,NULL,NULL,0),(15,'sdsad','sdsdsad','sdsad- sdsdsad',12,0,0,12,12,0,0,0,0,NULL,NULL,NULL,0),(16,'test','55555','test- 55555',500,12,0,512,25,0,0,0,0,NULL,NULL,NULL,0),(17,'Firewalls','362436','Firewalls- 362436',5,33,900,-862,10,0,0,0,0,NULL,NULL,NULL,0),(18,'Cables','7734','Cables- 7734',9,475,9000,16,100,0,0,0,0,NULL,NULL,NULL,0),(19,'Test','1','Test- 001',25,0,0,25,222,0,0,0,0,NULL,NULL,NULL,0);

/*Table structure for table `purchases` */

DROP TABLE IF EXISTS `purchases`;

CREATE TABLE `purchases` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `SupplierId` int(11) unsigned NOT NULL,
  `ProductId` int(11) unsigned NOT NULL,
  `NumberReceived` int(11) NOT NULL,
  `PurchaseDate` date NOT NULL,
  `number_received` int(11) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_product_fk` (`ProductId`),
  KEY `purchase_supplier_fk` (`SupplierId`),
  CONSTRAINT `FK1bcutcck8k8r6vjpuse8ogdvl` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`),
  CONSTRAINT `FKthyk5tya0boh6f34jg9fj3thg` FOREIGN KEY (`SupplierId`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `purchase_product_fk` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`),
  CONSTRAINT `purchase_supplier_fk` FOREIGN KEY (`SupplierId`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `purchases` */

insert  into `purchases`(`id`,`SupplierId`,`ProductId`,`NumberReceived`,`PurchaseDate`,`number_received`,`purchase_date`,`product_id`,`supplier_id`) values (1,2,2,50,'2014-11-02',0,NULL,NULL,NULL),(2,2,1,15,'2014-09-02',0,NULL,NULL,NULL),(3,3,3,10,'2014-11-12',0,NULL,NULL,NULL),(4,2,2,25,'2014-01-02',0,NULL,NULL,NULL),(5,2,3,20,'2014-02-22',0,NULL,NULL,NULL),(6,1,1,5,'2015-11-02',0,NULL,NULL,NULL),(7,3,3,3,'2014-01-02',0,NULL,NULL,NULL),(8,1,3,20,'2015-11-11',0,NULL,NULL,NULL),(9,2,1,0,'2014-11-02',0,NULL,NULL,NULL),(10,1,1,5,'2016-11-02',0,NULL,NULL,NULL),(11,2,5,12,'2016-11-02',0,NULL,NULL,NULL),(12,2,3,90,'2016-11-02',0,NULL,NULL,NULL),(13,1,6,23,'2016-08-02',0,NULL,NULL,NULL),(14,2,10,25,'2017-11-02',0,NULL,NULL,NULL),(15,2,10,3,'2017-11-02',0,NULL,NULL,NULL),(16,1,10,0,'2017-01-02',0,NULL,NULL,NULL),(17,1,2,0,'2017-02-22',0,NULL,NULL,NULL),(18,2,1,10,'2017-03-02',0,NULL,NULL,NULL),(19,2,9,12,'2017-03-03',0,NULL,NULL,NULL),(20,2,13,1234,'2017-05-12',0,NULL,NULL,NULL),(21,1,12,0,'2017-05-22',0,NULL,NULL,NULL),(22,1,13,0,'2017-06-12',0,NULL,NULL,NULL),(23,2,3,0,'2017-08-02',0,NULL,NULL,NULL),(24,3,9,400,'2017-10-02',0,NULL,NULL,NULL),(25,1,14,0,'2017-11-02',0,NULL,NULL,NULL),(26,2,16,12,'2017-11-30',0,NULL,NULL,NULL),(27,1,3,0,'2017-07-02',0,NULL,NULL,NULL),(28,3,17,33,'2017-07-12',0,NULL,NULL,NULL),(29,1,18,453,'2017-07-23',0,NULL,NULL,NULL),(30,2,18,22,'2017-11-02',0,NULL,NULL,NULL);

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `supplier` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `suppliers` */

insert  into `suppliers`(`id`,`supplier`) values (1,'ShockWave Tech'),(2,'CDW'),(3,'ACME Tech Supplies');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`enabled`,`password`,`username`) values (1,'','$2a$10$D4OLKI6yy68crm.3imC9X.P2xqKHs5TloWUcr6z5XdOqnTrAK84ri','peter@example.com'),(2,'','$2a$10$D4OLKI6yy68crm.3imC9X.P2xqKHs5TloWUcr6z5XdOqnTrAK84ri','john@example.com'),(3,'','$2a$10$D4OLKI6yy68crm.3imC9X.P2xqKHs5TloWUcr6z5XdOqnTrAK84ri','katie@example.com'),(4,'','welcome123','hello@example.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
