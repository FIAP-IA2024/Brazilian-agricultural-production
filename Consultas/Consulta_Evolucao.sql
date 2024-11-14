SELECT 
    a.ano_ano AS ano,
    SUM(p.pro_area_plantada) AS area_plantada_total
FROM 
    tbl_producao p
JOIN 
    tbl_cultura c ON p.pro_cul_id = c.cul_id
JOIN 
    tbl_ano a ON p.pro_ano_id = a.ano_id
WHERE 
    c.cul_nome = 'cafe'  -- ou 'cana_de_acucar' para a cultura desejada
GROUP BY 
    a.ano_ano
ORDER BY 
    a.ano_ano;
