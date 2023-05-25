LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/Relatorio_cadop.csv'  -- Especifica o caminho do arquivo a ser carregado
INTO TABLE operadoras_ativas_ans  -- Especifica a tabela de destino dos dados
CHARACTER SET latin1  -- Define o conjunto de caracteres como latin1
FIELDS TERMINATED BY ';'  -- Especifica que os campos estão separados por ponto e vírgula (;)
ENCLOSED BY '"'  -- Especifica que os campos estão entre aspas duplas (")
LINES TERMINATED BY '\n'  -- Especifica que as linhas estão terminadas por quebra de linha (\n)
IGNORE 3 ROWS  -- Ignora as primeiras três linhas do arquivo
(
    registro_ans, cnpj, razao_social, nome_fantasia, modalidade, logradouro, numero, complemento, bairro, cidade, uf, cep, ddd, telefone, fax, email, representante, cargo_representante, @data_registro_ans
)  -- Mapeia as colunas do arquivo com as colunas da tabela, onde @data_registro_ans é uma variável para armazenar a data como string
SET data_registro_ans = STR_TO_DATE(@data_registro_ans, '%d/%m/%Y');  -- Converte a string de data para o formato de data correto (%d/%m/%Y) e atribui ao campo data_registro_ans

LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/1T2021.csv'
INTO TABLE demonstracoes_contabeis
CHARACTER SET latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/1T2022.csv'
INTO TABLE demonstracoes_contabeis
CHARACTER SET latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y/%m/%d');

LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/2T2021.csv'
INTO TABLE demonstracoes_contabeis
CHARACTER SET latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/2T2022.csv'
INTO TABLE demonstracoes_contabeis
CHARACTER SET latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/3T2021.csv'
INTO TABLE demonstracoes_contabeis
CHARACTER SET latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/3T2022.csv'
INTO TABLE demonstracoes_contabeis
CHARACTER SET latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/4T2021.csv'
INTO TABLE demonstracoes_contabeis
CHARACTER SET latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/home/odinstudent/repos/database/arquivos/4T2022.csv'
INTO TABLE demonstracoes_contabeis
CHARACTER SET latin1
FIELDS TERMINATED BY ';' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;