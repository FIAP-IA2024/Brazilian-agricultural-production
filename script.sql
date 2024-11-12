-- Tabela de Culturas
CREATE TABLE tbl_cultura (
    cul_id             INTEGER NOT NULL,
    cul_nome           VARCHAR(50 CHAR) NOT NULL,
    cul_tipo           VARCHAR(25 CHAR) CHECK (cul_tipo IN ('cafe', 'cana_de_acucar')),
    CONSTRAINT tbl_cultura_pk PRIMARY KEY (cul_id)
) LOGGING;

-- Tabela de Estados
CREATE TABLE tbl_estado (
    est_id             INTEGER NOT NULL,
    est_nome           VARCHAR(50 CHAR) NOT NULL,
    est_sigla          CHAR(2 CHAR) NOT NULL,
    CONSTRAINT tbl_estado_pk PRIMARY KEY (est_id)
) LOGGING;

-- Tabela de Anos
CREATE TABLE tbl_ano (
    ano_id             INTEGER NOT NULL,
    ano_ano            INTEGER CHECK (ano_ano > 1900 AND ano_ano < 2100),
    CONSTRAINT tbl_ano_pk PRIMARY KEY (ano_id)
) LOGGING;

-- Tabela de Produção
CREATE TABLE tbl_producao (
    pro_id             INTEGER NOT NULL,
    pro_cul_id         INTEGER NOT NULL,
    pro_est_id         INTEGER NOT NULL,
    pro_ano_id         INTEGER NOT NULL,
    pro_area_plantada  NUMBER(10, 2),
    pro_producao_total NUMBER(15, 2),
    pro_produtividade  NUMBER(10, 2),
    CONSTRAINT tbl_producao_pk PRIMARY KEY (pro_id)
) LOGGING;

-- Tabela de Custos de Produção
CREATE TABLE tbl_custo_producao (
    cus_id                 INTEGER NOT NULL,
    cus_cul_id             INTEGER NOT NULL,
    cus_est_id             INTEGER NOT NULL,
    cus_ano_id             INTEGER NOT NULL,
    cus_custo_variavel     NUMBER(15, 2),
    cus_custo_fixo         NUMBER(15, 2),
    cus_renda_fator        NUMBER(15, 2),
    CONSTRAINT tbl_custo_producao_pk PRIMARY KEY (cus_id)
) LOGGING;

-- Tabela de Clima
CREATE TABLE tbl_clima (
    cli_id             INTEGER NOT NULL,
    cli_est_id         INTEGER NOT NULL,
    cli_ano_id         INTEGER NOT NULL,
    cli_precipitacao   NUMBER(10, 2),
    cli_temperatura    NUMBER(5, 2),
    cli_eventos        VARCHAR(150 CHAR),
    CONSTRAINT tbl_clima_pk PRIMARY KEY (cli_id)
) LOGGING;

-- Tabela de Insumos
CREATE TABLE tbl_insumo (
    ins_id             INTEGER NOT NULL,
    ins_nome           VARCHAR(50 CHAR) NOT NULL,
    ins_tipo           VARCHAR(20 CHAR) CHECK (ins_tipo IN ('fertilizante', 'agrotoxico')),
    CONSTRAINT tbl_insumo_pk PRIMARY KEY (ins_id)
) LOGGING;

-- Tabela de Uso de Insumos
CREATE TABLE tbl_uso_insumo (
    uso_id             INTEGER NOT NULL,
    uso_cul_id         INTEGER NOT NULL,
    uso_est_id         INTEGER NOT NULL,
    uso_ano_id         INTEGER NOT NULL,
    uso_ins_id         INTEGER NOT NULL,
    uso_quantidade     NUMBER(10, 2),
    CONSTRAINT tbl_uso_insumo_pk PRIMARY KEY (uso_id)
) LOGGING;

-- Tabela de Sustentabilidade
CREATE TABLE tbl_sustentabilidade (
    sus_id             INTEGER NOT NULL,
    sus_cul_id         INTEGER NOT NULL,
    sus_est_id         INTEGER NOT NULL,
    sus_ano_id         INTEGER NOT NULL,
    sus_emissao_gases  NUMBER(10, 2),
    sus_consumo_agua   NUMBER(10, 2),
    CONSTRAINT tbl_sustentabilidade_pk PRIMARY KEY (sus_id)
) LOGGING;


-- Criação de chaves estrangeiras --

-- Chaves Estrangeiras para tbl_producao
ALTER TABLE tbl_producao 
    ADD CONSTRAINT tbl_producao_tbl_cultura_fk FOREIGN KEY (pro_cul_id) REFERENCES tbl_cultura (cul_id) ON DELETE CASCADE;
ALTER TABLE tbl_producao 
    ADD CONSTRAINT tbl_producao_tbl_estado_fk FOREIGN KEY (pro_est_id) REFERENCES tbl_estado (est_id) ON DELETE CASCADE;
ALTER TABLE tbl_producao 
    ADD CONSTRAINT tbl_producao_tbl_ano_fk FOREIGN KEY (pro_ano_id) REFERENCES tbl_ano (ano_id) ON DELETE CASCADE;

-- Chaves Estrangeiras para tbl_custo_producao
ALTER TABLE tbl_custo_producao 
    ADD CONSTRAINT tbl_custo_producao_tbl_cultura_fk FOREIGN KEY (cus_cul_id) REFERENCES tbl_cultura (cul_id) ON DELETE CASCADE;
ALTER TABLE tbl_custo_producao 
    ADD CONSTRAINT tbl_custo_producao_tbl_estado_fk FOREIGN KEY (cus_est_id) REFERENCES tbl_estado (est_id) ON DELETE CASCADE;
ALTER TABLE tbl_custo_producao 
    ADD CONSTRAINT tbl_custo_producao_tbl_ano_fk FOREIGN KEY (cus_ano_id) REFERENCES tbl_ano (ano_id) ON DELETE CASCADE;

-- Chaves Estrangeiras para tbl_clima
ALTER TABLE tbl_clima 
    ADD CONSTRAINT tbl_clima_tbl_estado_fk FOREIGN KEY (cli_est_id) REFERENCES tbl_estado (est_id) ON DELETE CASCADE;
ALTER TABLE tbl_clima 
    ADD CONSTRAINT tbl_clima_tbl_ano_fk FOREIGN KEY (cli_ano_id) REFERENCES tbl_ano (ano_id) ON DELETE CASCADE;

-- Chaves Estrangeiras para tbl_uso_insumo
ALTER TABLE tbl_uso_insumo 
    ADD CONSTRAINT tbl_uso_insumo_tbl_cultura_fk FOREIGN KEY (uso_cul_id) REFERENCES tbl_cultura (cul_id) ON DELETE CASCADE;
ALTER TABLE tbl_uso_insumo 
    ADD CONSTRAINT tbl_uso_insumo_tbl_estado_fk FOREIGN KEY (uso_est_id) REFERENCES tbl_estado (est_id) ON DELETE CASCADE;
ALTER TABLE tbl_uso_insumo 
    ADD CONSTRAINT tbl_uso_insumo_tbl_ano_fk FOREIGN KEY (uso_ano_id) REFERENCES tbl_ano (ano_id) ON DELETE CASCADE;
ALTER TABLE tbl_uso_insumo 
    ADD CONSTRAINT tbl_uso_insumo_tbl_insumo_fk FOREIGN KEY (uso_ins_id) REFERENCES tbl_insumo (ins_id) ON DELETE CASCADE;

-- Chaves Estrangeiras para tbl_sustentabilidade
ALTER TABLE tbl_sustentabilidade 
    ADD CONSTRAINT tbl_sustentabilidade_tbl_cultura_fk FOREIGN KEY (sus_cul_id) REFERENCES tbl_cultura (cul_id) ON DELETE CASCADE;
ALTER TABLE tbl_sustentabilidade 
    ADD CONSTRAINT tbl_sustentabilidade_tbl_estado_fk FOREIGN KEY (sus_est_id) REFERENCES tbl_estado (est_id) ON DELETE CASCADE;
ALTER TABLE tbl_sustentabilidade 
    ADD CONSTRAINT tbl_sustentabilidade_tbl_ano_fk FOREIGN KEY (sus_ano_id) REFERENCES tbl_ano (ano_id) ON DELETE CASCADE;


-- Criação de indices --

-- Índices Individuais
CREATE INDEX idx_producao_cul_id ON tbl_producao (pro_cul_id);
CREATE INDEX idx_producao_est_id ON tbl_producao (pro_est_id);
CREATE INDEX idx_producao_ano_id ON tbl_producao (pro_ano_id);

-- Índices Compostos
CREATE INDEX idx_producao_cul_est_ano ON tbl_producao (pro_cul_id, pro_est_id, pro_ano_id);
CREATE INDEX idx_uso_insumo_cul_est_ano ON tbl_uso_insumo (uso_cul_id, uso_est_id, uso_ano_id);
CREATE INDEX idx_sustentabilidade_cul_est_ano ON tbl_sustentabilidade (sus_cul_id, sus_est_id, sus_ano_id);
