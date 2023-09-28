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
-- Table `mydb`.`gamer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`gamer` (
  `gamerID` INT UNSIGNED NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `rank` VARCHAR(10) NOT NULL,
  `mygames` INT NOT NULL,
  `rewards` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`gamerID`),
  UNIQUE INDEX `gamerID_UNIQUE` (`gamerID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`game` (
  `gameID` INT UNSIGNED NOT NULL,
  `achievments` VARCHAR(45) NOT NULL,
  `points` INT NOT NULL,
  `players` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`gameID`),
  UNIQUE INDEX `gameID_UNIQUE` (`gameID` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
