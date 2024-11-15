
INSERT INTO tbl_cultura (cul_id, cul_nome, cul_tipo) VALUES (10, 'cafe', 'cafe');
INSERT INTO tbl_cultura (cul_id, cul_nome, cul_tipo) VALUES (11, 'cana_de_acucar', 'cana_de_acucar');

INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (10, 'Sao Paulo', 'SP');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (11, 'Minas Gerais', 'MG');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (12, 'Parana', 'PR');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (13, 'Bahia', 'BA');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (14, 'Goias', 'GO');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (15, 'Mato Grosso', 'MT');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (16, 'Santa Catarina', 'SC');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (17, 'Pernambuco', 'PE');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (18, 'Ceara', 'CE');
INSERT INTO tbl_estado (est_id, est_nome, est_sigla) VALUES (19, 'Paraiba', 'PB');

INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (10, 2001);
INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (11, 2002);
INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (12, 2003);
INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (13, 2004);
INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (14, 2005);

INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (100, 10, 10, 10, 1200.5, 5000.2, 4.2);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (101, 10, 11, 11, 1800.3, 7500.8, 4.1);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (102, 11, 10, 10, 1500.2, 12000.5, 8.0);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (103, 11, 12, 11, 1300.6, 9000.3, 6.9);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (104, 10, 13, 10, 1100.4, 4800.4, 4.36);

INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (100, 10, 10, 10, 2000.5, 1500.7, 3500.5);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (101, 11, 11, 11, 1800.3, 1750.9, 3551.2);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (102, 10, 12, 10, 2100.0, 1200.4, 3300.4);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (103, 11, 13, 11, 1600.7, 1900.1, 3500.8);

INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (100, 10, 10, 1300.6, 25.7, 'Chuvas fortes');
INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (101, 11, 11, 1200.4, 23.6, 'Seca leve');
INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (102, 12, 10, 1500.2, 27.8, 'Normal');
INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (103, 13, 11, 1100.5, 22.5, 'Chuvas moderadas');

INSERT INTO tbl_insumo (ins_id, ins_nome, ins_tipo) VALUES (100, 'Fertilizante NPK', 'fertilizante');
INSERT INTO tbl_insumo (ins_id, ins_nome, ins_tipo) VALUES (101, 'Agrotoxico X', 'agrotoxico');

INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (100, 10, 10, 10, 100, 150.5);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (101, 11, 11, 11, 101, 180.3);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (102, 10, 12, 10, 100, 210.0);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (103, 11, 13, 11, 101, 160.7);

INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (100, 10, 10, 10, 250.0, 1300.5);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (101, 11, 11, 11, 270.3, 1200.4);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (102, 10, 12, 10, 300.1, 1400.2);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (103, 11, 13, 11, 260.7, 1250.6);

INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (15, 2006);
INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (16, 2007);
INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (17, 2008);
INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (18, 2009);
INSERT INTO tbl_ano (ano_id, ano_ano) VALUES (19, 2010);

INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (105, 10, 10, 15, 1250.7, 5100.3, 4.08);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (106, 11, 11, 16, 1400.4, 8300.1, 5.93);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (107, 10, 12, 17, 1600.8, 7200.0, 4.5);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (108, 11, 13, 18, 1350.2, 9200.5, 6.81);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (109, 10, 14, 19, 1500.4, 7000.3, 4.66);

INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (104, 10, 14, 15, 1900.6, 1400.9, 3301.5);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (105, 11, 15, 16, 2200.7, 1700.8, 3901.2);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (106, 10, 16, 17, 2100.4, 1650.4, 3750.8);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (107, 11, 17, 18, 1800.3, 1450.6, 3250.9);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (108, 10, 18, 19, 2500.5, 1850.7, 4351.2);

INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (104, 10, 15, 1000.6, 24.3, 'Seca moderada');
INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (105, 11, 16, 1300.7, 22.8, 'Chuvas intensas');
INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (106, 12, 17, 1500.9, 26.3, 'Clima ameno');
INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (107, 13, 18, 1100.2, 20.9, 'Seca intensa');
INSERT INTO tbl_clima (cli_id, cli_est_id, cli_ano_id, cli_precipitacao, cli_temperatura, cli_eventos) VALUES (108, 14, 19, 1200.3, 23.4, 'Chuvas fortes');

INSERT INTO tbl_insumo (ins_id, ins_nome, ins_tipo) VALUES (102, 'Fertilizante Potássio', 'fertilizante');
INSERT INTO tbl_insumo (ins_id, ins_nome, ins_tipo) VALUES (103, 'Agrotoxico Y', 'agrotoxico');
INSERT INTO tbl_insumo (ins_id, ins_nome, ins_tipo) VALUES (104, 'Fertilizante Nitrogênio', 'fertilizante');
INSERT INTO tbl_insumo (ins_id, ins_nome, ins_tipo) VALUES (105, 'Agrotoxico Z', 'agrotoxico');

INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (104, 10, 14, 15, 102, 160.8);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (105, 11, 15, 16, 103, 175.3);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (106, 10, 16, 17, 104, 190.5);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (107, 11, 17, 18, 105, 210.2);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (108, 10, 18, 19, 100, 180.9);

INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (104, 10, 14, 15, 290.5, 1400.2);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (105, 11, 15, 16, 275.7, 1500.3);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (106, 10, 16, 17, 310.8, 1600.1);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (107, 11, 17, 18, 280.6, 1550.7);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (108, 10, 18, 19, 295.3, 1450.9);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (109, 11, 10, 15, 305.0, 1500.4);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (110, 10, 11, 16, 275.6, 1480.3);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (111, 11, 12, 17, 265.4, 1380.6);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (112, 10, 13, 18, 285.2, 1520.1);

INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (113, 11, 12, 15, 1450.5, 8500.6, 5.86);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (114, 10, 13, 16, 1200.3, 5600.9, 4.67);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (115, 11, 14, 17, 1350.9, 7400.2, 5.47);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (116, 10, 15, 18, 1100.2, 4800.8, 4.36);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (117, 11, 16, 19, 1230.6, 6800.5, 5.52);

INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (109, 10, 15, 18, 2200.5, 1600.6, 3800.7);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (110, 11, 16, 19, 2300.8, 1750.2, 4050.1);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (111, 10, 17, 15, 1900.3, 1450.7, 3350.4);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (112, 11, 18, 16, 2000.2, 1500.8, 3500.3);
INSERT INTO tbl_custo_producao (cus_id, cus_cul_id, cus_est_id, cus_ano_id, cus_custo_variavel, cus_custo_fixo, cus_renda_fator) VALUES (113, 10, 10, 17, 2150.4, 1550.3, 3700.7);

INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (109, 10, 15, 18, 100, 200.8);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (110, 11, 16, 19, 101, 210.5);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (111, 10, 17, 15, 102, 180.7);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (112, 11, 18, 16, 103, 195.4);
INSERT INTO tbl_uso_insumo (uso_id, uso_cul_id, uso_est_id, uso_ano_id, uso_ins_id, uso_quantidade) VALUES (113, 10, 10, 17, 104, 215.6);

INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (113, 11, 17, 15, 260.4, 1450.3);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (114, 10, 18, 16, 275.1, 1500.7);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (115, 11, 10, 17, 295.4, 1650.2);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (116, 10, 11, 18, 280.7, 1580.6);
INSERT INTO tbl_sustentabilidade (sus_id, sus_cul_id, sus_est_id, sus_ano_id, sus_emissao_gases, sus_consumo_agua) VALUES (117, 11, 12, 19, 265.9, 1600.9);

INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (200, 10, 10, 10, 1200.5, 5000.2, 4.2);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (201, 10, 11, 10, 1300.7, 5400.3, 4.15);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (202, 10, 12, 10, 1250.2, 5150.5, 4.12);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (203, 10, 13, 10, 1400.3, 5750.6, 4.1);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (204, 10, 14, 10, 1320.8, 5300.4, 4.11);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (205, 11, 10, 10, 1450.5, 6000.3, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (206, 11, 11, 10, 1500.3, 6200.1, 4.27);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (207, 11, 12, 10, 1400.4, 6100.2, 4.36);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (208, 11, 13, 10, 1350.2, 5900.5, 4.4);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (209, 11, 14, 10, 1300.5, 5800.3, 4.35);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (210, 10, 10, 11, 1400.6, 5800.4, 4.15);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (211, 10, 11, 11, 1450.7, 6050.3, 4.19);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (212, 10, 12, 11, 1300.9, 5400.4, 4.14);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (213, 10, 13, 11, 1250.3, 5200.7, 4.18);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (214, 10, 14, 11, 1400.6, 5800.9, 4.15);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (215, 11, 10, 11, 1550.1, 6400.3, 4.25);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (216, 11, 11, 11, 1450.2, 6050.4, 4.28);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (217, 11, 12, 11, 1400.7, 5900.5, 4.22);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (218, 11, 13, 11, 1350.5, 5800.7, 4.31);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (219, 11, 14, 11, 1300.6, 5650.4, 4.34);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (220, 10, 15, 12, 1350.3, 5300.4, 4.2);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (221, 10, 16, 12, 1250.6, 5200.1, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (222, 10, 17, 12, 1400.2, 6000.2, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (223, 10, 18, 12, 1350.4, 5700.9, 4.2);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (224, 10, 19, 12, 1300.5, 5600.4, 4.2);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (225, 11, 15, 12, 1450.2, 6100.6, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (226, 11, 16, 12, 1500.1, 6400.2, 4.4);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (227, 11, 17, 12, 1550.6, 6200.8, 4.5);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (228, 11, 18, 12, 1400.9, 5900.7, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (229, 11, 19, 12, 1350.3, 5700.4, 4.2);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (230, 10, 10, 13, 1250.6, 5300.2, 4.25);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (231, 10, 11, 13, 1400.2, 5500.8, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (232, 10, 12, 13, 1300.5, 5200.5, 4.4);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (233, 10, 13, 13, 1350.7, 5400.9, 4.4);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (234, 10, 14, 13, 1200.4, 5100.1, 4.2);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (235, 10, 15, 13, 1250.3, 5300.6, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (236, 10, 16, 13, 1300.8, 5200.3, 4.25);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (237, 11, 17, 13, 1450.5, 6100.6, 4.4);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (238, 11, 18, 13, 1400.9, 6000.4, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (239, 11, 19, 13, 1350.6, 5800.7, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (240, 10, 10, 14, 1250.5, 5200.2, 4.25);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (241, 10, 11, 14, 1300.4, 5300.5, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (242, 10, 12, 14, 1400.8, 5500.3, 4.35);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (243, 10, 13, 14, 1200.7, 5000.6, 4.2);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (244, 10, 14, 14, 1250.2, 5100.8, 4.15);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (245, 11, 15, 14, 1400.3, 5800.1, 4.3);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (246, 11, 16, 14, 1350.4, 5600.5, 4.35);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (247, 11, 17, 14, 1300.5, 5400.7, 4.32);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (248, 11, 18, 14, 1250.6, 5200.9, 4.25);
INSERT INTO tbl_producao (pro_id, pro_cul_id, pro_est_id, pro_ano_id, pro_area_plantada, pro_producao_total, pro_produtividade) VALUES (249, 11, 19, 14, 1200.4, 5000.3, 4.2);


