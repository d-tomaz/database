-- Consulta para obter registros da tabela "demonstracoes_contabeis" com base em determinados critérios

SELECT reg_ans, vl_saldo_final  -- Seleciona as colunas "reg_ans" e "vl_saldo_final" para exibição no resultado
FROM demonstracoes_contabeis  -- Especifica a tabela alvo da consulta como "demonstracoes_contabeis"
WHERE descricao IN ('EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR ', 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÃŠNCIA A SAÃšDE MEDICO HOSPITALAR ')  -- Filtra as linhas onde a coluna "descricao" está presente nos valores especificados
    AND data BETWEEN '2022-10-01' AND '2022-12-31'  -- Filtra as linhas onde a coluna "data" está dentro do intervalo especificado (entre '2022-10-01' e '2022-12-31')
GROUP BY reg_ans, vl_saldo_final  -- Agrupa os resultados pelo valor das colunas "reg_ans" e "vl_saldo_final"
HAVING vl_saldo_final = MIN(vl_saldo_final)  -- Restringe os resultados apenas aos grupos onde o valor de "vl_saldo_final" é o mínimo dentro do grupo
ORDER BY vl_saldo_final  -- Ordena os resultados com base no valor de "vl_saldo_final" em ordem ascendente
LIMIT 10;  -- Limita o número de resultados retornados para 10

SELECT reg_ans, vl_saldo_final
FROM demonstracoes_contabeis   
WHERE descricao IN ('EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR ', 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÃŠNCIA A SAÃšDE MEDICO HOSPITALAR ')
    AND data BETWEEN '2021-10-01' AND '2021-12-31'
GROUP BY reg_ans, vl_saldo_final
HAVING vl_saldo_final = MIN(vl_saldo_final)
ORDER BY vl_saldo_final
LIMIT 10;