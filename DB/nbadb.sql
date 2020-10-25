-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema nbadb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `nbadb` ;

-- -----------------------------------------------------
-- Schema nbadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nbadb` DEFAULT CHARACTER SET utf8 ;
USE `nbadb` ;

-- -----------------------------------------------------
-- Table `nbateam`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nbateam` ;

CREATE TABLE IF NOT EXISTS `nbateam` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NULL,
  `championships` TINYINT(5) NULL DEFAULT 0,
  `coach` VARCHAR(45) NULL,
  `conference` VARCHAR(45) NULL,
  `year_inserted` YEAR(4) NULL,
  `team_goat` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS nbauser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'nbauser'@'localhost' IDENTIFIED BY 'nbauser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'nbauser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `nbateam`
-- -----------------------------------------------------
START TRANSACTION;
USE `nbadb`;
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (1, 'Lakers', 'Los Angeles', 17, NULL, 'Western', 1946, 'Kobe Bryant');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (2, 'Celtics', 'Boston', 17, NULL, 'Eastern', 1946, 'Bill Russel');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (3, 'Kings', 'Sacramento', 1, NULL, 'Western', 1923, 'Chris Webber');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (4, 'Pistons', 'Detriot', 3, NULL, 'Eastern', 1941, 'Isiah Thomas');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (5, 'Knicks', 'New York', 2, NULL, 'Eastern', 1946, 'Patrick Ewing');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (6, 'Warriors', 'San Fransisco', 6, NULL, 'Western', 1946, 'Wilt Chamberlain');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (7, '76ers', 'Philadelphia', 3, NULL, 'Eastern', 1946, 'Julius Erving');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (8, 'Hawks', 'Atlanta', 1, NULL, 'Eastern', 1946, 'Dominique Wilkins');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (9, 'Wizards', 'Washington', 1, NULL, 'Eastern', 1961, 'Wes Unseld');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (10, 'Bulls', 'Chicago', 6, NULL, 'Eastern', 1966, 'Michael Jordan');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (11, 'Rockets', 'Houston', 2, NULL, 'Western', 1967, 'Hakeem Olajuwon');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (12, 'Thunder', 'Oklahoma City', 1, NULL, 'Western', 1967, 'Gary Payton');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (13, 'Nets', 'Brooklyn', 2, NULL, 'Eastern', 1967, 'Jason Kidd');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (14, 'Nuggets', 'Denver', 0, NULL, 'Western', 1967, 'Nikola Jokic');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (15, 'Pacers', 'Indiana', 3, NULL, 'Eastern', 1967, 'Reggie Miller');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (16, 'Spurs', 'San Antonio', 5, NULL, 'Western', 1967, 'Tim Duncan');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (17, 'Bucks', 'Milwaukee', 1, NULL, 'Eastern', 1968, 'Kareem Abdul-Jabbar');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (18, 'Suns', 'Phoenix', 0, NULL, 'Western', 1968, 'Charles Barkley');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (19, 'Cavaliers', 'Cleveland', 1, NULL, 'Eastern', 1970, 'LeBron James');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (20, 'Clippers', 'Los Angeles', 0, NULL, 'Western', 1970, 'Chris Paul');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (21, 'Trail Blazers', 'Portland', 1, NULL, 'Western', 1970, 'Damian Lillard');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (22, 'Jazz', 'Utah', 0, NULL, 'Western', 1974, 'John Stockton');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (23, 'Mavericks', 'Dallas', 1, NULL, 'Western', 1980, 'Dirk Nowitzki');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (24, 'Heat', 'Miami', 3, NULL, 'Eastern', 1988, 'Dwayne Wade');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (25, 'Hornets', 'Charlotte', 0, NULL, 'Eastern', 1988, 'Kemba Walker');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (26, 'Timberwolves', 'Minnesota', 0, NULL, 'Western', 1989, 'Kevin Garnett');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (27, 'Magic', 'Orlando', 0, NULL, 'Eastern', 1989, 'Shaquille O\'Neal');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (28, 'Grizzlies', 'Memphis', 0, NULL, 'Eastern', 1995, 'Marc Gasol');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (29, 'Raptors', 'Toronto', 1, NULL, 'Eastern', 1995, 'DeMar DeRozan');
INSERT INTO `nbateam` (`id`, `name`, `city`, `championships`, `coach`, `conference`, `year_inserted`, `team_goat`) VALUES (30, 'Pelicans', 'New Orleans', 0, NULL, 'Western', 2002, 'Anthony Davis');

COMMIT;

