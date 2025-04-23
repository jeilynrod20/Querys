create database sistema_escolar

use sistema_escolar 

-- Creacion de tabla departamento--
CREATE TABLE departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Creacion de tabla profesores--
CREATE TABLE profesores (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);
-- Creacion de tabla profesores -- 
CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
);
-- Creacion de tabla estudiantes--
CREATE TABLE estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE
);
-- Creacion de tabla direcciones--
CREATE TABLE direcciones (
    id_direccion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    direccion VARCHAR(200),
    ciudad VARCHAR(100),
    provincia VARCHAR(100),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
);
-- Creacion de tabla matriculas--
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha DATE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);


INSERT INTO matriculas (id_matricula, id_estudiante, id_curso, fecha)
VALUES (1, 1, 1, '2025-04-23');

