-- Seleciona os campos data, reg_ans, vl_saldo_final e razao_social das tabelas demonstracoes_contabeis e operadoras_ativas_ans
SELECT dc.data, dc.reg_ans, dc.vl_saldo_final, oa.razao_social
FROM demonstracoes_contabeis dc
JOIN operadoras_ativas_ans oa ON dc.reg_ans = oa.registro_ans
-- Realiza um join entre as tabelas demonstracoes_contabeis e operadoras_ativas_ans com base no campo reg_ans

-- Filtra os registros onde a descrição está entre as opções fornecidas e a data está entre '2022-10-01' e '2022-12-31'
WHERE dc.descricao IN ('EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR ', 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÃŠNCIA A SAÃšDE MEDICO HOSPITALAR ')
    AND dc.data BETWEEN '2022-10-01' AND '2022-12-31'

-- Agrupa os resultados pelo campo data, reg_ans, vl_saldo_final e razao_social
GROUP BY dc.data, dc.reg_ans, dc.vl_saldo_final, oa.razao_social

-- Restringe os resultados onde o vl_saldo_final é igual ao menor valor de vl_saldo_final
HAVING dc.vl_saldo_final = MIN(dc.vl_saldo_final)

-- Ordena os resultados pelo campo vl_saldo_final em ordem crescente
ORDER BY dc.vl_saldo_final

-- Limita o número de resultados retornados para 10
LIMIT 10;
