-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema myProductCatalog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema myProductCatalog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `myProductCatalog` DEFAULT CHARACTER SET utf8 ;
USE `myProductCatalog` ;

-- -----------------------------------------------------
-- Table `myProductCatalog`.`element`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`element` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NULL,
  `value` DOUBLE NULL,
  `position` INT NULL,
  `isIndicator` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `myProductCatalog`.`record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`record` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `number` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `myProductCatalog`.`field`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`field` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NULL,
  `record_id` INT NOT NULL,
  PRIMARY KEY (`id`, `record_id`),
  INDEX `fk_field_record1_idx` (`record_id` ASC) VISIBLE,
  CONSTRAINT `fk_field_record1`
    FOREIGN KEY (`record_id`)
    REFERENCES `myProductCatalog`.`record` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `myProductCatalog`.`tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`tag` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `number` INT NULL,
  `description` VARCHAR(45) NULL,
  `repeatability` VARCHAR(45) NULL,
  `element_id` INT NOT NULL,
  `field_id` INT NOT NULL,
  PRIMARY KEY (`id`, `element_id`, `field_id`),
  INDEX `fk_tag_element_idx` (`element_id` ASC) VISIBLE,
  INDEX `fk_tag_field1_idx` (`field_id` ASC) VISIBLE,
  CONSTRAINT `fk_tag_element`
    FOREIGN KEY (`element_id`)
    REFERENCES `myProductCatalog`.`element` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tag_field1`
    FOREIGN KEY (`field_id`)
    REFERENCES `myProductCatalog`.`field` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `myProductCatalog`.`subfield`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`subfield` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NULL,
  `number` INT NULL,
  `field_id` INT NOT NULL,
  PRIMARY KEY (`id`, `field_id`),
  INDEX `fk_subfield_field1_idx` (`field_id` ASC) VISIBLE,
  CONSTRAINT `fk_subfield_field1`
    FOREIGN KEY (`field_id`)
    REFERENCES `myProductCatalog`.`field` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `myProductCatalog`.`subfieldcode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`subfieldcode` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` INT NULL,
  `description` VARCHAR(45) NULL,
  `repeatability` INT NULL,
  `subfield_id` INT NOT NULL,
  PRIMARY KEY (`id`, `subfield_id`),
  INDEX `fk_subfieldcode_subfield1_idx` (`subfield_id` ASC) VISIBLE,
  CONSTRAINT `fk_subfieldcode_subfield1`
    FOREIGN KEY (`subfield_id`)
    REFERENCES `myProductCatalog`.`subfield` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `myProductCatalog`.`property`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`property` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `number` INT NULL,
  `position` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `myProductCatalog`.`field_has_element`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`field_has_element` (
  `field_id` INT NOT NULL,
  `element_id` INT NOT NULL,
  PRIMARY KEY (`field_id`, `element_id`),
  INDEX `fk_field_has_element_element1_idx` (`element_id` ASC) VISIBLE,
  INDEX `fk_field_has_element_field1_idx` (`field_id` ASC) VISIBLE,
  CONSTRAINT `fk_field_has_element_field1`
    FOREIGN KEY (`field_id`)
    REFERENCES `myProductCatalog`.`field` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_field_has_element_element1`
    FOREIGN KEY (`element_id`)
    REFERENCES `myProductCatalog`.`element` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `myProductCatalog`.`record_has_property`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myProductCatalog`.`record_has_property` (
  `record_id` INT NOT NULL,
  `property_id` INT NOT NULL,
  PRIMARY KEY (`record_id`, `property_id`),
  INDEX `fk_record_has_property_property1_idx` (`property_id` ASC) VISIBLE,
  INDEX `fk_record_has_property_record1_idx` (`record_id` ASC) VISIBLE,
  CONSTRAINT `fk_record_has_property_record1`
    FOREIGN KEY (`record_id`)
    REFERENCES `myProductCatalog`.`record` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_record_has_property_property1`
    FOREIGN KEY (`property_id`)
    REFERENCES `myProductCatalog`.`property` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
