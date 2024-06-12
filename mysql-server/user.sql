create user if not exists vultar@'%' identified by 'password';
grant all on *.* to vultar@'%';
flush privileges;
create database if not exists appdb;
use appdb;
create table if not exists `student_table` (
    `student_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `student_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
    `student_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
    `student_group` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`student_id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert ignore into `student_table`(`student_id`,`student_name`,`student_email`,`student_group`) values
  (1,'Ryabchenkov Vladimir','vladimirr150@ya.ru','621');