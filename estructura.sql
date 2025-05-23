CREATE TABLE Dueno (
    cedula INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255)
);

CREATE TABLE Mascota (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    especie VARCHAR(50),
    raza VARCHAR(50),
    edad INT,
    sexo VARCHAR(10),
    vacunada BOOLEAN,
    id_dueno INT,
    FOREIGN KEY (id_dueno) REFERENCES Dueno(cedula)
);

CREATE TABLE Servicio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    precio_base DECIMAL(10,2)
);

CREATE TABLE Visita (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota_id INT,
    servicio_id INT,
    fecha DATE,
    FOREIGN KEY (mascota_id) REFERENCES Mascota(id),
    FOREIGN KEY (servicio_id) REFERENCES Servicio(id)
);

CREATE TABLE Tratamiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    visita_id INT,
    nombre VARCHAR(100),
    observacion VARCHAR(255),
    FOREIGN KEY (visita_id) REFERENCES Visita(id)
);
