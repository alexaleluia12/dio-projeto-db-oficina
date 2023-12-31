-- MySQL Script generated by MySQL Workbench
-- Wed Aug 30 21:11:09 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema oficina
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema oficina
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `oficina` DEFAULT CHARACTER SET utf8 ;
USE `oficina` ;

-- -----------------------------------------------------
-- Table `oficina`.`mecanico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`mecanico` (
  `id` INT NOT NULL,
  `CREA` CHAR(5) NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `logradouro` VARCHAR(100) NOT NULL,
  `CPF` CHAR(11) NOT NULL,
  `celular` CHAR(11) NULL,
  PRIMARY KEY (`CREA`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oficina`.`veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`veiculo` (
  `id` INT NOT NULL,
  `placa` CHAR(7) NOT NULL,
  `renavan` CHAR(9) NOT NULL,
  `marca` VARCHAR(30) NOT NULL,
  `modelo` VARCHAR(30) NOT NULL,
  `ano` TINYINT(4) NULL,
  PRIMARY KEY (`placa`),
  UNIQUE INDEX `renavan_UNIQUE` (`renavan` ASC) VISIBLE)
ENGINE = InnoDB;
ALTER TABLE veiculo MODIFY ano SMALLINT NULL;


-- -----------------------------------------------------
-- Table `oficina`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`cliente` (
  `id` INT NOT NULL,
  `nome` VARCHAR(30) NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `CNH` CHAR(11) NOT NULL,
  `celular` CHAR(11) NULL,
  PRIMARY KEY (`CNH`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oficina`.`veiculo_pessado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`veiculo_pessado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `qnt_eixos` VARCHAR(45) NULL,
  `pesso` FLOAT NULL,
  `veiculo_placa` CHAR(7) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_veiculo_pessado_veiculo_idx` (`veiculo_placa` ASC) VISIBLE,
  CONSTRAINT `fk_veiculo_pessado_veiculo`
    FOREIGN KEY (`veiculo_placa`)
    REFERENCES `oficina`.`veiculo` (`placa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oficina`.`revisao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`revisao` (
  `mecanico_CREA` CHAR(5) NOT NULL,
  `veiculo_placa` CHAR(7) NOT NULL,
  `data_revisao` DATETIME NOT NULL,
  `valor_revisao` FLOAT NOT NULL,
  `relatorio` VARCHAR(400) NOT NULL,
  `troca_pecas` VARCHAR(350) NOT NULL,
  `pagamento` ENUM('aberto', 'feito', 'negociacao', 'devendo') NOT NULL DEFAULT 'aberto',
  INDEX `fk_revisao_mecanico1_idx` (`mecanico_CREA` ASC) VISIBLE,
  INDEX `fk_revisao_veiculo1_idx` (`veiculo_placa` ASC) VISIBLE,
  UNIQUE INDEX `data_revisao_UNIQUE` (`data_revisao` ASC) VISIBLE,
  CONSTRAINT `fk_revisao_mecanico1`
    FOREIGN KEY (`mecanico_CREA`)
    REFERENCES `oficina`.`mecanico` (`CREA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_revisao_veiculo1`
    FOREIGN KEY (`veiculo_placa`)
    REFERENCES `oficina`.`veiculo` (`placa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
