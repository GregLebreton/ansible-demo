CREATE DATABASE IF NOT EXISTS `employes` CHARACTER SET ascii COLLATE ascii_general_ci;

CREATE TABLE IF NOT EXISTS `employes` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nom` TEXT(128) CHARACTER SET ascii COLLATE ascii_general_ci,
	`prenom` TEXT(128) CHARACTER SET ascii COLLATE ascii_general_ci,
	PRIMARY KEY (`id`)
);

INSERT INTO `employes` (`nom`,`prenom`) VALUES ('Jean','Dupont');  
INSERT INTO `employes` (`nom`,`prenom`) VALUES ('mireille','Dumas');  
INSERT INTO `employes` (`nom`,`prenom`) VALUES ('Jacques','Tralala');   

GRANT ALL PRIVILEGES ON employes.* TO 'vagrant'@'%' IDENTIFIED BY 'BOURNE';
FLUSH PRIVILEGES;