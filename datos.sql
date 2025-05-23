-- Insertar dueños
INSERT INTO Dueno (nombre, telefono, direccion) VALUES
('Carlos Pérez', '3111234567', 'Cra 10 #5-67'),
('Ana Torres', '3127654321', 'Cl 23 #45-89'),
('Luis Gómez', '3009876543', 'Av 3 #33-44'),
('Marta Ruiz', '3201237890', 'Cra 8 #88-88'),
('Jorge Díaz', '3015566778', 'Cl 45 #10-23');

-- Insertar mascotas
INSERT INTO Mascota (nombre, especie, raza, edad, sexo, vacunada, id_dueno) VALUES
('Max', 'Perro', 'Labrador', 4, 'Macho', TRUE, 1),
('Luna', 'Gato', 'Siames', 3, 'Hembra', TRUE, 2),
('Rocky', 'Perro', 'Bulldog', 5, 'Macho', FALSE, 1),
('Milo', 'Gato', 'Persa', 2, 'Macho', TRUE, 3),
('Nina', 'Perro', 'Poodle', 6, 'Hembra', FALSE, 4),
('Tomy', 'Perro', 'Golden', 1, 'Macho', TRUE, 5),
('Kira', 'Gato', 'Angora', 2, 'Hembra', TRUE, 4),
('Toby', 'Perro', 'Beagle', 3, 'Macho', FALSE, 2),
('Mia', 'Gato', 'Bengala', 1, 'Hembra', TRUE, 5),
('Simba', 'Perro', 'Pastor Alemán', 4, 'Macho', TRUE, 3);

-- Insertar servicios
INSERT INTO Servicio (nombre, descripcion, precio_base) VALUES
('Baño', 'Baño completo para mascotas', 30000),
('Corte de uñas', 'Recorte de uñas', 15000),
('Consulta médica', 'Revisión médica general', 50000),
('Desparasitación', 'Eliminación de parásitos', 40000),
('Vacunación', 'Aplicación de vacunas', 60000);

-- Insertar visitas
INSERT INTO Visita (mascota_id, servicio_id, fecha) VALUES
(1, 1, '2025-01-15'),
(2, 3, '2025-01-20'),
(3, 2, '2025-02-10'),
(4, 5, '2025-03-05'),
(5, 1, '2025-03-10'),
(6, 3, '2025-03-12'),
(7, 4, '2025-04-01'),
(8, 5, '2025-04-10'),
(9, 2, '2025-04-20'),
(10, 1, '2025-05-01');

-- Insertar tratamientos
INSERT INTO Tratamiento (visita_id, nombre, observacion) VALUES
(2, 'Antibiótico', 'Administrar cada 12 horas'),
(4, 'Vacuna triple', 'Refuerzo anual'),
(6, 'Analgésico', 'Aliviar dolor articular'),
(7, 'Desparasitante oral', 'Dosis única'),
(8, 'Vacuna antirrábica', 'Requiere carnet actualizado');
