-- para consultar constantes
SELECT 1
SELECT 10

-- para nombrar la columna "AS"
SELECT 100 AS numero
SELECT 'jorge' AS nombre
SELECT 203.50 AS precio

-- castear datos (cambiar el tipo)
SELECT 100::integer AS numero
SELECT 12::text 
SELECT 'william'::varchar AS nombre

-- algunos operadores
SELECT 10/2
SELECT 14/2

-- para dividir impares se debe especificar
SELECT 5.0/2.0
-- o
SELECT 5::numeric/2::numeric

-- 2 funciones: "age " y "random"
-- age calcula el tiempo que pasa desde una fecha, ejem:
SELECT age('08/03/2009'::date)

-- para calcular el tiempo entre dos fechas
SELECT age('08/03/2009'::date, '19/07/2025'::date)

-- random, por si solo suelta un valor del 0 al 1 pero sirve para devolver datos aleatoreos
SELECT random()

-- para elegir un numero aleatorio
SELECT random(1, 10)
SELECT random(30, 1000)
SELECT ranodom(19, 29)

-- ejemplo en salon5to, para obtener un estudiante aleatorio
SELECT * FROM salon5to
	ORDER BY random()
	LIMIT 1;

-- para elegir 3
SELECT * FROM salon5to
	ORDER BY random()
	LIMIT 3;

-- para elegir solo muejer
SELECT * FROM salon5to
	WHERE sexo='femenino'
	ORDER BY random()
	LIMIT 1;

-- para elegir solo de 17
SELECT * FROM salon5to
	WHERE edad=17
	ORDER BY random()
	LIMIT 1;
	

