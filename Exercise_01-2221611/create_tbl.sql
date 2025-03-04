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
CREATE SCHEMA IF NOT EXISTS mydb DEFAULT CHARACTER SET utf8 ;
USE mydb ;

-- -----------------------------------------------------
-- Table mydb.`EMPLOYEE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.`EMPLOYEE` (
  emp_id INT NOT NULL,
  emp_name VARCHAR(255) NOT NULL,
  emp_title VARCHAR(45) NOT NULL,
  emp_dept VARCHAR(45) NOT NULL,
  emp_region VARCHAR(45) NOT NULL,
  PRIMARY KEY (emp_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.`PRODUCT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.`PRODUCT` (
  product_id INT NOT NULL,
  product_name VARCHAR(255) NOT NULL,
  product_category VARCHAR(255) NOT NULL,
  unit_price FLOAT NOT NULL,
  PRIMARY KEY (product_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.`TIME`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.`TIME` (
  order_id INT NOT NULL,
  order_date DATETIME NOT NULL,
  order_year YEAR NOT NULL,
  order_quarter TINYINT(1) NOT NULL,
  order_month TINYINT(2) NOT NULL,
  PRIMARY KEY (order_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.`CUSTOMER` (
  customer_id INT NOT NULL,
  customer_name VARCHAR(255) NOT NULL,
  customer_address VARCHAR(255) NOT NULL,
  customer_city VARCHAR(50) NOT NULL,
  customer_zip VARCHAR(10) NOT NULL,
  PRIMARY KEY (customer_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.`SALES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.`SALES` (
  TIME_order_id INT NOT NULL,
  CUSTOMER_customer_id INT NOT NULL,
  EMPLOYEE_emp_id VARCHAR(16) NOT NULL,
  PRODUCT_product_id INT NOT NULL,
  sales_total FLOAT NULL,
  sales_quantity INT NULL,
  sales_discount FLOAT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
