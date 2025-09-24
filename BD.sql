CREATE TABLE IF NOT EXISTS cliente (
    id SERIAL PRIMARY KEY,
    cpf INT,
    nome VARCHAR(20),
    senha VARCHAR(20),
    telefone VARCHAR(20),
    endereco VARCHAR(50),
    cep INT
);

CREATE TABLE IF NOT EXISTS filho (
    id SERIAL PRIMARY KEY,
    cpf INT,
    nome VARCHAR(20),
    escola VARCHAR(20),
    responsavel_id INT,
    FOREIGN KEY (responsavel_id) REFERENCES cliente(id)
);

CREATE TABLE IF NOT EXISTS motorista (
    id SERIAL PRIMARY KEY,
    cpf INT,
    nome VARCHAR(20),
    senha VARCHAR(20),
    telefone VARCHAR(20),
    endereco VARCHAR(50),
    cep INT
);

CREATE TABLE IF NOT EXISTS veiculo (
    id SERIAL PRIMARY KEY,
    placa CHAR(7),
    cor VARCHAR(10),
    marca VARCHAR(20),
    modelo VARCHAR(20),
    capacidade_max INT,
    motorista_id INT,
    FOREIGN KEY (motorista_id) REFERENCES motorista(id)
);

CREATE TABLE IF NOT EXISTS servico (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30),
    horario_inicial timestamp,
    horario_final timestamp,
    valor_km DECIMAL(10,2),
    quantidade_km DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS servico_veiculo (
    id SERIAL PRIMARY KEY,
    veiculo_id INT,
    servico_id INT,
    ativo INT,
    FOREIGN KEY (veiculo_id) REFERENCES veiculo(id),
    FOREIGN KEY (servico_id) REFERENCES servico(id)
);

CREATE TABLE IF NOT EXISTS servico_crianca (
    id SERIAL PRIMARY KEY,
    crianca_id INT,
    servico_id INT,
    ativo INT,
    FOREIGN KEY (crianca_id) REFERENCES filho(id),
    FOREIGN KEY (servico_id) REFERENCES servico(id)
);