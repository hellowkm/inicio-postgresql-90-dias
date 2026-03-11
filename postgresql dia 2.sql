-- para devolver el dato que quieras de lo que acabas de añadir "RETURNING"
INSERT INTO salon5to VALUES
(7, 'mia', 'zafra', 16, 1.54, 'masculino')
RETURNING id_estudiante

-- para identificar en la tabla: "WHERE"
SELECT * FROM salon5to WHERE edad = 17

SELECT * FROM salon5to WHERE nombre = 'william'

SELECT * FROM salon5to WHERE sexo = 'femenino'

SELECT * FROM salon5to WHERE id_estudiante = 4


-- para actualizar datos: "UPDATE"
UPDATE nombredelatabla SET columna = actualizacion WHERE identificador = identificador

-- ejemplo
UPDATE salon5to SET altura = 1.62 WHERE nombre = 'william'

UPDATE salon5to SET edad = 17 WHERE id_estudiante = 3

UPDATE salon5to SET nombre = 'selene' WHERE nombre = 'mia'

UPDATE salon5to SET apellido = 'roque' WHERE nombre = 'dayana'


-- para consultar los datos ordenados: "ORDER BY" ASC(predeterminado)/DESC
SELECT * FROM salon5to ORDER BY id_estudiante;

SELECT * FROM salon5to ORDER BY id_estudiante DESC;

SELECT * FROM salon5to ORDER BY nombre DESC;

SELECT * FROM salon5to ORDER BY altura;

-- se puede combinar el orden
SELECT * FROM salon5to ORDER BY sexo, altura DESC;

SELECT * FROM salon5to ORDER BY edad DESC, id_estudiante;

-- UPDATE añadiendo y con returning 
UPDATE salon5to SET edad = edad + 1 WHERE nombre = 'william' RETURNING edad, apellido;

UPDATE salon5to SET edad = edad + 1 WHERE sexo = 'femenino' RETURNING nombre, sexo;

UPDATE salon5to SET edad = edad - 1 WHERE apellido = 'katto' RETURNING nombre, edad;

--
INSERT INTO salon5to VALUES (8, 'kskssk', 'sjjsjs', 12, 1.23, 'femenino')
-- para eliminar datos se usa "DELETE" y especificar con WHERE
DELETE FROM salon5to WHERE id_estudiante = 8


-- funcion agregada "avag"
SELECT avg(edad) FROM salon5to
SELECT avg(altura) FROM salon5to

-- funcion agregada "sum"
SELECT sum(edad) FROM salon5to
SELECT sum(altura) FROM salon5to
