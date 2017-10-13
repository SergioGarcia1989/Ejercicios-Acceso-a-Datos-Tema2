--SERGIO GARCIA BALSAS 

 -- CREATE TABLE MUEBLES (ID INT PRIMARY KEY, NOMBRE VARCHAR(30) , PRECIO DECIMAL(6,2), MATERIAL VARCHAR(15)); 
 -- INSERT INTO MUEBLES VALUES (200111413, 'Mesa LACK' , 10 , 'Conglomerado');
-- INSERT INTO MUEBLES VALUES (702611150, 'Silla MARKUS' , 159 , 'Varios');
--INSERT INTO MUEBLES VALUES (791229203, 'Sofá EKTORP' , 249 , 'Tela beige'); */

-- Todos los datos --
SELECT * FROM MUEBLES;
-- Nombre de los artículos de más de 100 euros ordenado (por nombre, ascendente) 
SELECT nombre, precio FROM MUEBLES WHERE precio > 100 ORDER BY nombre ;
-- Sillas de menos de 200 euros ordenadas por precio descendente 
SELECT nombre, precio FROM MUEBLES WHERE lower (nombre) LIKE ('%silla%') and precio < 200 ORDER BY precio DESC;
-- Cambiar a 269 el precio de los muebles Ektorp 
UPDATE MUEBLES SET precio = 269 WHERE LOWER (nombre) LIKE ('%torp%');
-- Añadir el campo "unidades" a la tabla (podrá tener valores de 0 a 99.999) Y LA PONES DESPUES DEL PRECIO
 ALTER TABLE MUEBLES ADD unidades NUMERIC(5) ;

SELECT * FROM MUEBLES;