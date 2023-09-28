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
-- -----------------------------------------------------
-- Schema dbfirst
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbfirst
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbfirst` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`adres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`adres` (
  `adresID` INT UNSIGNED NOT NULL,
  `straat` VARCHAR(50) NOT NULL,
  `nummer` VARCHAR(50) NOT NULL,
  `postcode` VARCHAR(50) NOT NULL,
  `stad` VARCHAR(50) NOT NULL,
  UNIQUE INDEX `adersID_UNIQUE` (`adresID` ASC) VISIBLE,
  PRIMARY KEY (`adresID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`persoon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`persoon` (
  `persoonID` INT UNSIGNED NOT NULL,
  `telefoonnummer` VARCHAR(15) NOT NULL,
  `voornaam` VARCHAR(20) NOT NULL,
  `achternaam` VARCHAR(20) NOT NULL,
  `geboortedatum` DATE NOT NULL,
  `geslacht` VARCHAR(20) NOT NULL,
  `geboortestad` VARCHAR(45) NOT NULL,
  `nationalitijd` VARCHAR(45) NOT NULL,
  `adres_adresID` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`persoonID`),
  UNIQUE INDEX `persoonID_UNIQUE` (`persoonID` ASC) VISIBLE,
  INDEX `fk_persoon_adres_idx` (`adres_adresID` ASC) VISIBLE,
  CONSTRAINT `fk_persoon_adres`
    FOREIGN KEY (`adres_adresID`)
    REFERENCES `mydb`.`adres` (`adresID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `dbfirst` ;

-- -----------------------------------------------------
-- Table `dbfirst`.`bezorger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbfirst`.`bezorger` (
  `bezorgerID` INT UNSIGNED NOT NULL,
  `naam` VARCHAR(45) NOT NULL,
  `achternaam` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`bezorgerID`),
  UNIQUE INDEX `bezorgerID_UNIQUE` (`bezorgerID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dbfirst`.`klant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbfirst`.`klant` (
  `klantID` INT UNSIGNED NOT NULL,
  `naam` VARCHAR(45) NOT NULL,
  `achternaam` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`klantID`),
  UNIQUE INDEX `klantID_UNIQUE` (`klantID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dbfirst`.`pakket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbfirst`.`pakket` (
  `pakketID` INT UNSIGNED NOT NULL,
  `hoogte` VARCHAR(45) NOT NULL,
  `lengte` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pakketID`),
  UNIQUE INDEX `pakketID_UNIQUE` (`pakketID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
