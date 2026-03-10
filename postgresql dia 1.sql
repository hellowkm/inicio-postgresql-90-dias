--para crear tabla
CREATE TABLE nombre
--para borrar tabla
DROP TABLE nombre
DROP TABLE IF EXISTS nombre

--para crear database
CREATE DATABASE nombre
--para borrar database
DROP DATABASE nombre
DROP DATABASE IF EXISTS nombre 

--ejemplo salon5to
CREATE TABLE salon5to(
id_estudiante integer,
nombre text,
apellido text,
edad integer,
altura numeric,
sexo text
);

--para insertar datos
INSERT INTO nombre VALUES (---,---,---,---)

--ejemplo salon5to
INSERT INTO salon5to VALUES
(1, 'william', 'katto', 17, 1.60, 'masculino'),
(2, 'matias', 'sanz', 17, 1.60, 'masculino'),
(3, 'camila', 'ramirez', 16, 1.53, 'femenino'),
(4, 'manuel', 'montoya', 17, 1.70, 'masculino'),
(5, 'dayana', 'espinoza', 16, 1.58, 'femenino'),
(6, 'claudia', 'moron', 17, 1.56, 'femenino')

--consultar tabla
SELECT * FROM nombre

--ejemplo salon5to
SELECT * FROM salon5to







