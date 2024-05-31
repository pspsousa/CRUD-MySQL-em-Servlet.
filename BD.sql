
CREATE TABLE projetoDB.cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE projetoDB.paciente (
    id_paciente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    raca VARCHAR(50),

);

CREATE TABLE projetoDB.funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),

);

CREATE TABLE projetoDB.atendimento (
    id_atendimento SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_paciente INT REFERENCES projetoDB.paciente(id_paciente),
    id_funcionario INT REFERENCES projetoDB.funcionario(id_funcionario)

);
