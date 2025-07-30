-- Banco de dados(Precisamos excluir ele que estava dando erro)
DROP DATABASE IF EXISTS ClinicaVidaAnimal;
CREATE DATABASE ClinicaVidaAnimal;
USE ClinicaVidaAnimal;

-- Aqui Criamos as tabelas 

CREATE TABLE Dono (
    id_dono INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

CREATE TABLE Animal (
    id_animal INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    especie VARCHAR(50),
    raca VARCHAR(50),
    data_nascimento DATE,
    id_dono INT,
    FOREIGN KEY (id_dono) REFERENCES Dono(id_dono)
);

CREATE TABLE Veterinario (
    id_vet INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    especialidade VARCHAR(100)
);

CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    data_consulta DATE,
    hora TIME,
    id_animal INT,
    id_vet INT,
    observacoes TEXT,
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    FOREIGN KEY (id_vet) REFERENCES Veterinario(id_vet)
);

CREATE TABLE Vacina (
    id_vacina INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_aplicacao DATE,
    id_animal INT,
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal)
);

-- nessa parte enserimos os dados 

INSERT INTO Dono (nome, telefone, endereco) VALUES
('Fernanda Lima', '11955554444', 'Rua das Flores, 123'),
('Lucas Pereira', '21988887777', 'Av. Central, 456');

INSERT INTO Animal (nome, especie, raca, data_nascimento, id_dono) VALUES
('Bidu', 'Cão', 'Beagle', '2022-12-12', 1),
('Mingau', 'Gato', 'Persa', '2021-07-01', 2);

INSERT INTO Veterinario (nome, especialidade) VALUES
('Dra. Ana Souza', 'Clínica Geral'),
('Dr. Carlos Silva', 'Cirurgia');

INSERT INTO Consulta (data_consulta, hora, id_animal, id_vet, observacoes) VALUES
('2024-07-15', '10:00:00', 1, 1, 'Consulta de rotina.'),
('2024-07-20', '14:30:00', 2, 2, 'Avaliação para cirurgia.');

INSERT INTO Vacina (nome, data_aplicacao, id_animal) VALUES
('V8', '2024-07-10', 1),
('Antirrábica', '2024-07-12', 2);

-- Aqui algumas consultas simples usando o SELECT * FROM
SELECT * FROM Dono;
SELECT * FROM Animal;
SELECT * FROM Veterinario;
SELECT * FROM Consulta;
SELECT * FROM Vacina;
