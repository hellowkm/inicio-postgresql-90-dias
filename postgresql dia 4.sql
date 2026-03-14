-- schemas: es donde guardan toda la informacion, tablas, funciones etc
-- se pueden tener varias en una base de datos, para crear:
CREATE SCHEMA nombre;

-- este comando busca el schema predeterminado, public por defecto
SHOW search_path;

-- este comando cambia el schema por defecto
SET search_path TO nombredeeschema

-- para borrar un schema, el cascade se usa cuando el schema tiene objetos
DROP SCHEMA nombre CASCADE

-- para regresar a el schema por defecto
RESET search_path;

-------------    serial
SELECT * FROM salon5to ORDER BY id_estudiante;

ALTER TABLE salon5to 
	ADD COLUMN id_estudiante SERIAL;
-------------
-- nueva tabla, "constraints"
CREATE TABLE conocidos(
	id	serial,
	nombre	text NOT NULL,
	edad	integer CONSTRAINT edad_valida CHECK(edad>10) NOT NULL,
	existencia	text NOT NULL,
	sexo	text CONSTRAINT genero_valido CHECK(sexo IN ('masculino', 'femenino')) NOT NULL,
	num		integer CHECK(num BETWEEN 1 AND 100) NOT NULL,
	real	boolean GENERATED ALWAYS AS(num>70) STORED
);

DROP TABLE conocidos;

INSERT INTO conocidos(nombre, edad, existencia, sexo, num) VALUES
	('matias', 17, 'on', 'masculino', 96),
	('mateo', 17, 'on', 'masculino', 96),
	('salv', 19, 'off', 'masculino', 61),
	('mils', 15, 'off', 'femenino', 10),
	('mils2.0', 15, 'on', 'masculino', 96),
	('dib', 18, 'off', 'masculino', 50),
	('none', 17, 'off', 'femenino', 3),
	('llc', 17, 'off', 'femenino', 70);

SELECT * FROM conocidos;

------- usar "ALTER"
-- para añadir tabla add column
ALTER TABLE conocidos ADD COLUMN again text;

-- para borrar columna drop column
ALTER TABLE conocidos DROP COLUMN again;

-- para borrar constraint drop constraint
ALTER TABLE conocidos DROP CONSTRAINT edad_valida;

-- para añadir constraint add constraint
ALTER TABLE conocidos ADD CONSTRAINT edad_valida CHECK(edad>10);

-- añadir y quitar not null
ALTER TABLE conocidos ALTER COLUMN nombre DROP NOT NULL;

ALTER TABLE conocidos ALTER COLUMN nombre SET NOT NULL;

-- cambiar el nombre de una columna rename column to

ALTER TABLE conocidos RENAME COLUMN real TO	muyreal;
ALTER TABLE conocidos RENAME COLUMN muyreal TO real;



