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
-- Table `mydb`.`Product_Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product_Table` (
  `idProduct_Table` INT NOT NULL,
  `Product_Category` VARCHAR(45) NULL,
  `Product_Name` VARCHAR(45) NULL,
  `Unit_Price` INT NULL,
  PRIMARY KEY (`idProduct_Table`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Employee_Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee_Dimension` (
  `idEmployee_Dimension` INT NOT NULL,
  `Employee_Name` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Department` VARCHAR(45) NULL,
  `Region` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmployee_Dimension`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALES` (
  `idSALES` INT NULL,
  `Product_ID` INT NOT NULL,
  `Order_ID` INT NULL,
  `Customer_ID` INT NULL,
  `Employee_ID` INT NULL,
  `Total` INT NULL,
  `Quantity` INT NULL,
  `Discount` INT NULL,
  `Product_Table_idProduct_Table` INT NOT NULL,
  `Employee_Dimension_idEmployee_Dimension` INT NOT NULL,
  PRIMARY KEY (`Product_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time_Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time_Dimension` (
  `idTime_Dimension` INT NULL,
  `Order_ID` VARCHAR(45) NOT NULL,
  `Order_Date` INT NULL,
  `Year` VARCHAR(45) NULL,
  `Quarter` VARCHAR(45) NULL,
  `Month` VARCHAR(45) NULL,
  `SALES_Product_ID` INT NOT NULL,
  PRIMARY KEY (`Order_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer_Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer_Dimension` (
  `idCustomer_Dimension` INT NOT NULL,
  `Customer_ID` INT NULL,
  `Customer_Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Zip` INT NULL,
  `SALES_Product_ID` INT NULL,
  PRIMARY KEY (`idCustomer_Dimension`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
