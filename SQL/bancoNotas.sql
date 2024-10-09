DROP SCHEMA BancoNotas;
CREATE SCHEMA BancoNotas;
USE BancoNotas;

CREATE TABLE Aluno (
matricula integer not null,
nome varchar(150) not null,
ender_linkedin varchar (100)
);
-- PK da tabela Aluno:
ALTER TABLE Aluno ADD CONSTRAINT pk_aluno
PRIMARY KEY (matricula);

CREATE TABLE Professor (
P_cod integer not null,
nome varchar (150) not null
);
-- PK da tabela Professor:
ALTER TABLE Professor ADD CONSTRAINT pk_professor
PRIMARY KEY (P_cod);

CREATE TABLE Disciplina (
D_cod integer,
nome varchar (150)
);
-- PK da tabela Disciplina:
ALTER TABLE Disciplina ADD CONSTRAINT pk_disciplina
PRIMARY KEY (D_cod);

CREATE TABLE Matricula (
matricula integer not null,
D_cod integer not null,
P_cod integer not null
);

-- PK da tabela Matricula:
ALTER TABLE Matricula ADD CONSTRAINT pk_matricula
PRIMARY KEY (matricula, D_cod, P_cod);

-- FK codigo do Aluno:
ALTER TABLE Matricula ADD CONSTRAINT fk_aluno_matricula
FOREIGN KEY (matricula) REFERENCES Aluno (matricula);

-- FK codigo do Professor:
ALTER TABLE Matricula ADD CONSTRAINT fk_professor_matricula
FOREIGN KEY (P_cod) REFERENCES Professor (P_cod);
