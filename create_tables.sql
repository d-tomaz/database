-- Criação da tabela "operadoras_ativas_ans" para armazenar informações das operadoras ativas na ANS (Agência Nacional de Saúde Suplementar)

CREATE TABLE operadoras_ativas_ans (
    registro_ans VARCHAR(10),        -- Número de registro da ANS da operadora
    cnpj VARCHAR(14),                -- CNPJ da operadora
    razao_social VARCHAR(100),       -- Razão social da operadora
    nome_fantasia VARCHAR(100),      -- Nome fantasia da operadora
    modalidade VARCHAR(50),          -- Modalidade da operadora
    logradouro VARCHAR(100),         -- Endereço (logradouro) da operadora
    numero VARCHAR(20),              -- Número do endereço da operadora
    complemento VARCHAR(50),         -- Complemento do endereço da operadora
    bairro VARCHAR(50),              -- Bairro do endereço da operadora
    cidade VARCHAR(50),              -- Cidade do endereço da operadora
    uf CHAR(2),                      -- Estado (UF) do endereço da operadora
    cep VARCHAR(8),                  -- CEP do endereço da operadora
    ddd VARCHAR(2),                  -- Código DDD do telefone da operadora
    telefone VARCHAR(20),            -- Número de telefone da operadora
    fax VARCHAR(20),                 -- Número de fax da operadora
    email VARCHAR(100),              -- Endereço de e-mail da operadora
    representante VARCHAR(50),       -- Nome do representante da operadora
    cargo_representante VARCHAR(50), -- Cargo do representante da operadora
    data_registro_ans DATE           -- Data de registro na ANS da operadora
);