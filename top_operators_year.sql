-- Este é um código SQL que realiza uma consulta em um banco de dados.

-- A consulta seleciona três colunas da tabela "demonstracoes_contabeis" e uma coluna da tabela "operadoras_ativas_ans".
-- As colunas selecionadas são: reg_ans, razao_social e vl_saldo_final.

SELECT dc.reg_ans, oa.razao_social, dc.vl_saldo_final

-- A consulta faz um JOIN entre as tabelas "demonstracoes_contabeis" e "operadoras_ativas_ans" usando a coluna "reg_ans" como critério de junção.
-- O JOIN combina registros das duas tabelas que possuem o mesmo valor na coluna "reg_ans".

FROM demonstracoes_contabeis dc
JOIN operadoras_ativas_ans oa ON dc.reg_ans = oa.registro_ans

-- A cláusula WHERE define as condições que os registros devem atender para serem incluídos no resultado da consulta.
-- Neste caso, os registros devem ter a coluna "descricao" igual a uma das duas strings fornecidas e a coluna "data" deve estar entre '2022-01-01' e '2022-12-31'.

WHERE dc.descricao IN ('EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR ', 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÃŠNCIA A SAÃšDE MEDICO HOSPITALAR ')
    AND dc.data BETWEEN '2022-01-01' AND '2022-12-31'

-- A cláusula GROUP BY agrupa os registros com base nas colunas especificadas.
-- Neste caso, os registros são agrupados por dc.reg_ans, oa.razao_social e dc.vl_saldo_final.

GROUP BY dc.reg_ans, oa.razao_social, dc.vl_saldo_final

-- A cláusula HAVING permite filtrar os grupos resultantes com base em uma condição.
-- Neste caso, apenas os grupos em que dc.vl_saldo_final é igual ao valor mínimo de dc.vl_saldo_final serão incluídos no resultado.

HAVING dc.vl_saldo_final = MIN(dc.vl_saldo_final)

-- A cláusula ORDER BY ordena os resultados da consulta com base em uma ou mais colunas.
-- Neste caso, os resultados são ordenados em ordem crescente com base na coluna dc.vl_saldo_final.

ORDER BY dc.vl_saldo_final

-- A cláusula LIMIT limita o número de resultados retornados pela consulta.
-- Neste caso, apenas os primeiros 10 resultados serão retornados.

LIMIT 10;

SELECT dc.reg_ans, oa.razao_social, dc.vl_saldo_final
FROM demonstracoes_contabeis dc
JOIN operadoras_ativas_ans oa ON dc.reg_ans = oa.registro_ans
WHERE dc.descricao IN ('EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR ', 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÃŠNCIA A SAÃšDE MEDICO HOSPITALAR ')
    AND dc.data BETWEEN '2021-01-01' AND '2021-12-31'

GROUP BY dc.reg_ans, oa.razao_social, dc.vl_saldo_final
HAVING dc.vl_saldo_final = MIN(dc.vl_saldo_final)
ORDER BY dc.vl_saldo_final
LIMIT 10;