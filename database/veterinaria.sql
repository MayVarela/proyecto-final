CREATE DATABASE veterinaria;

USE veterinaria;

CREATE TABLE `medicos` (
  `cedula` int PRIMARY KEY,
  `nombres` varchar(100),
  `apellidos` varchar(50),
  `especialidad` varchar(150),
  `consultorio` char(3),
  `correo` varchar(100)
);

CREATE TABLE `mascotas` (
  `cedula_duenio` int PRIMARY KEY,
  `nombre` varchar(50),
  `nombre_duenio` varchar(100),
  `edad` int,
  `telefono_duenio` int
);

CREATE TABLE `cita_medica` (
  `id_mascota` int,
  `id_medico` int,
  `fecha` date
);

ALTER TABLE `cita_medica` ADD FOREIGN KEY (`id_mascota`) REFERENCES `mascotas` (`cedula_duenio`);

ALTER TABLE `cita_medica` ADD FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`cedula`);

ALTER TABLE `veterinaria`.`cita_medica` 
ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (`id`);