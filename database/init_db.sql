SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS animalsdb DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE animalsdb;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GET_ANIMALS` ()   SELECT * FROM animals$$

DELIMITER ;

CREATE TABLE animals (
  id int(11) NOT NULL,
  nombre varchar(50) NOT NULL,
  color varchar(50) NOT NULL,
  genero char(1) NOT NULL,
  tipo_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO animals (id, nombre, color, genero, tipo_id) VALUES
(1, 'Felix', 'negro', 'M', 1),
(2, 'Tom', 'gris', 'M', 1),
(3, 'Jack', 'café', 'M', 2),
(4, 'Clyde', 'negro', 'H', 1),
(5, 'Oreo', 'negro', 'H', 1),
(6, 'Pastelito', 'café', 'M', 2),
(7, 'Algodón', 'blanco', 'M', 1),
(8, 'Roco', 'negro', 'M', 2),
(9, 'Luna', 'blanco', 'H', 2),
(10, 'Lucas', 'negro', 'M', 2);

CREATE TABLE tipos_animales (
  tipo_id int(11) NOT NULL,
  tipo_nombre varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO tipos_animales (tipo_id, tipo_nombre) VALUES
(1, 'Gato'),
(2, 'Perro');


ALTER TABLE animals
  ADD PRIMARY KEY (id),
  ADD KEY tipo_id (tipo_id);

ALTER TABLE tipos_animales
  ADD PRIMARY KEY (tipo_id);


ALTER TABLE animals
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE tipos_animales
  MODIFY tipo_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE animals
  ADD CONSTRAINT fk_id_tipo_animal FOREIGN KEY (tipo_id) REFERENCES tipos_animales (tipo_id);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
