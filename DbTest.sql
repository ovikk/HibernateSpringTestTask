CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8;

CREATE TABLE `test`.`user` (
`ID` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`NAME` VARCHAR(25) NOT NULL,
`AGE` INT NOT NULL,
`IS_ADMIN` BIT(1) NOT NULL DEFAULT false,
`CREATED_DATE` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('A', '1');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('B', '2');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('C', '3');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('D', '4');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('E', '5');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('F', '6');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('G', '7');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('H', '8');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('I', '9');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('J', '9');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('K', '10');
INSERT INTO `test`.`user` (`NAME`, `AGE`) VALUES ('L', '11');
