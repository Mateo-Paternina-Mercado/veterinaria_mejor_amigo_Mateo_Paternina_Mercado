-- 1. Ver todos los dueños con alias
SELECT nombre AS Nombre_Dueno, telefono AS Telefono FROM Dueno;

-- 2. Crear una tabla con mascotas vacunadas
CREATE TABLE Mascotas_Vacunadas AS
SELECT * FROM Mascota WHERE vacunada = TRUE;

-- 3. Mostrar nombre y especie de mascotas en minúscula
SELECT LOWER(nombre) AS nombre, LOWER(especie) AS especie FROM Mascota;

-- 4. Mostrar largo del nombre de cada mascota
SELECT nombre, LENGTH(nombre) AS largo_nombre FROM Mascota;

-- 5. Concatenar nombre y especie
SELECT CONCAT(nombre, ' - ', especie) AS descripcion FROM Mascota;

-- 6. Número de visitas por mascota
SELECT mascota_id, COUNT(*) AS total_visitas FROM Visita GROUP BY mascota_id;

-- 7. Precio promedio de los servicios
SELECT ROUND(AVG(precio_base), 2) AS precio_promedio FROM Servicio;

-- 8. Mascotas mayores a 3 años
SELECT nombre, edad FROM Mascota WHERE edad > 3;

-- 9. Visitas con alias en subconsulta
SELECT m.nombre, (SELECT nombre FROM Servicio WHERE id = v.servicio_id) AS servicio
FROM Visita v
JOIN Mascota m ON v.mascota_id = m.id;

-- 10. Dueños con más de una mascota
SELECT d.nombre, COUNT(m.id) AS mascotas FROM Dueno d
JOIN Mascota m ON d.cedula = m.id_dueno
GROUP BY d.nombre
HAVING COUNT(m.id) > 1;

-- 11. Substring del nombre de mascotas
SELECT nombre, SUBSTRING(nombre, 1, 2) AS iniciales FROM Mascota;

-- 12. Servicios con precio mayor a 30000
SELECT nombre, precio_base FROM Servicio WHERE precio_base > 30000;

-- 13. JOIN de visitas y tratamientos
SELECT v.fecha, m.nombre AS mascota, t.nombre AS tratamiento
FROM Visita v
JOIN Mascota m ON v.mascota_id = m.id
JOIN Tratamiento t ON t.visita_id = v.id;

-- 14. IF para saber si la mascota está vacunada
SELECT nombre, IF(vacunada = TRUE, 'Sí', 'No') AS esta_vacunada FROM Mascota;

-- 15. Servicios ordenados por precio
SELECT nombre, precio_base FROM Servicio ORDER BY precio_base DESC;
