SELECT 
    e.est_nome AS estado,
    SUM(p.pro_producao_total) AS producao_total
FROM 
    tbl_producao p
JOIN 
    tbl_cultura c ON p.pro_cul_id = c.cul_id
JOIN 
    tbl_estado e ON p.pro_est_id = e.est_id
JOIN 
    tbl_ano a ON p.pro_ano_id = a.ano_id
WHERE 
    c.cul_nome = 'cafe' -- ou 'cana_de_acucar', dependendo da cultura desejada
    AND a.ano_ano = 2022 -- Substitua pelo ano específico desejado
GROUP BY 
    e.est_nome;
