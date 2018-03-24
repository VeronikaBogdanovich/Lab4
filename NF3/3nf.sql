-- MySQL Script generated by MySQL Workbench
-- Sat Mar 24 15:18:39 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema NF3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema NF3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `NF3` ;
USE `NF3` ;

-- -----------------------------------------------------
-- Table `NF3`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NF3`.`cars` (
  `Entrant_country` TEXT(100) NOT NULL,
  `Entrant` TEXT(100) NOT NULL,
  `Constructor` TEXT(100) NOT NULL,
  `Chassis` TEXT(100) NOT NULL,
  `Power unit` TEXT(100) NOT NULL,
  `Tyres` VARCHAR(45) NOT NULL,
  `Entrant id` INT NOT NULL,
  PRIMARY KEY (`Entrant id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NF3`.`Teams and drivers 2017`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NF3`.`Teams and drivers 2017` (
  `ChampionShip_year` INT NOT NULL,
  `Entrant id` INT NOT NULL,
  `Drivers id` INT NOT NULL,
  INDEX `fk_Teams and drivers 2017_cars1_idx` (`Entrant id` ASC),
  PRIMARY KEY (`Drivers id`),
  CONSTRAINT `fk_Teams and drivers 2017_cars1`
    FOREIGN KEY (`Entrant id`)
    REFERENCES `NF3`.`cars` (`Entrant id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NF3`.`Race drivers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NF3`.`Race drivers` (
  `id` INT NOT NULL,
  `№` INT NOT NULL,
  `Driver Country` TEXT(100) NOT NULL,
  `Driver name` TEXT(100) NOT NULL,
  `Driver surname` TEXT(100) NOT NULL,
  `Round` VARCHAR(50) NOT NULL,
  `Drivers id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Race drivers_Teams and drivers 20171_idx` (`Drivers id` ASC),
  CONSTRAINT `fk_Race drivers_Teams and drivers 20171`
    FOREIGN KEY (`Drivers id`)
    REFERENCES `NF3`.`Teams and drivers 2017` (`Drivers id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;