# 🐾 Veterinaria "Mi Mejor Amigo"

Este proyecto implementa una base de datos relacional para la veterinaria **"Mi Mejor Amigo"**, que permite gestionar información sobre dueños de mascotas, animales, servicios ofrecidos, visitas y tratamientos realizados. Fue desarrollado como parte de una actividad académica en Campuslands.

## 📌 Objetivo

Optimizar el manejo de información en la veterinaria mediante un sistema de base de datos que permita registrar:

- Datos de dueños y sus mascotas.
- Servicios veterinarios disponibles.
- Historial de visitas.
- Tratamientos recetados durante las visitas.

---

## 🧱 Modelo Entidad-Relación (E-R)

El sistema está compuesto por las siguientes **5 entidades principales**:

1. **Dueño**
2. **Mascota**
3. **Servicio**
4. **Visita**
5. **Tratamiento**

Diagrama UML/E-R elaborado en DBDiagram:
![Modelo ER](./Captura%20desde%202025-05-22%2018-22-10.png)

---

## 📂 Estructura del proyecto

El repositorio contiene los siguientes archivos:

| Archivo | Descripción |
|--------|-------------|
| `estructura.sql` | Contiene las sentencias DDL (`CREATE TABLE`) para crear todas las tablas con sus relaciones, llaves primarias y foráneas. |
| `datos.sql` | Incluye instrucciones DML (`INSERT`) con datos de prueba: 5 dueños, 10 mascotas, 5 servicios, 10 visitas y 5 tratamientos. |
| `consultas.sql` | Contiene al menos 15 consultas DQL que demuestran el uso de funciones, subconsultas, alias, joins, agrupamientos y más. |

---

## 🧪 Consultas destacadas

En el archivo `consultas.sql` se pueden encontrar ejemplos de:

- 🔍 Consultas con alias
- 🧮 Funciones de agregación (`COUNT`, `AVG`, `ROUND`)
- 🧬 Subconsultas y `JOIN`
- 🧵 Funciones de texto (`CONCAT`, `UPPER`, `LOWER`, `LENGTH`, `SUBSTRING`, `TRIM`)
- 🧠 Uso de `IF` en columnas para mostrar condiciones
- 📊 Agrupamientos y ordenamientos

---

## 🎥 Video explicativo

📺 Puedes ver una explicación completa del proyecto y de las consultas en el siguiente video:

🔗 [Ver video en YouTube](https://www.youtube.com/watch?v=TqHYbZmaOIk)

---

## 🧑‍💻 Desarrollado por

**Mateo Paternina**  
Campuslands – 2025  
Repositorio creado para la actividad **Veterinaria Mi Mejor Amigo**.

---

## 🐘 Requisitos técnicos

- MySQL o MariaDB
- Herramientas compatibles: DBeaver, MySQL Workbench, phpMyAdmin
- Motor de almacenamiento recomendado: `InnoDB`

---

## 💡 Notas adicionales

- El proyecto es fácilmente extensible para incluir más funcionalidades como control de stock, historial de vacunas, o múltiples servicios por visita.
- Todas las relaciones entre entidades están normalizadas y definidas mediante claves foráneas.

---

Gracias por revisar este proyecto 💚🐶