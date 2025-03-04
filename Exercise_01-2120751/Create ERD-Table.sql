-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`PRODUCT_TABLE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PRODUCT_TABLE` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `product_category` VARCHAR(45) NULL,
  `product_name` VARCHAR(45) NULL,
  `unit_price` INT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TIME_DIMENSION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TIME_DIMENSION` (
  `order_ID` INT NOT NULL AUTO_INCREMENT,
  `order_date` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `quarter` VARCHAR(45) NOT NULL,
  `month` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`order_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALES` (
  `product_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `employee_id` INT NOT NULL,
  `total` INT NOT NULL,
  `quantity` INT NOT NULL,
  `discount` INT NOT NULL,
  `TIME_DIMENSION_order_ID` INT NOT NULL,
  `PRODUCT_TABLE_product_id` INT NOT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EMPLOYEE_DIMENSION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMPLOYEE_DIMENSION` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `employee_name` VARCHAR(45) NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `department` VARCHAR(45) NOT NULL,
  `region` VARCHAR(45) NOT NULL,
  `SALES_product_id` INT NOT NULL,
  PRIMARY KEY (`employee_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CUSTOMER_DIMENSION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CUSTOMER_DIMENSION` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `customer_name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `zip` VARCHAR(45) NOT NULL,
  `SALES_product_id` INT NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
