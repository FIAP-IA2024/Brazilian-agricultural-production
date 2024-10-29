CREATE TABLE tbl_cultura (
    id_cultura       INTEGER NOT NULL,
    ctr_nome         VARCHAR(50 CHAR) NOT NULL,
    ctr_tipo         VARCHAR(20 CHAR) CHECK (ctr_tipo IN ('cana_de_acucar', 'cafe')),
    CONSTRAINT tbl_cultura_pk PRIMARY KEY (id_cultura)
) LOGGING;

CREATE TABLE tbl_estado (
    id_estado        INTEGER NOT NULL,
    est_nome         VARCHAR(50 CHAR) NOT NULL,
    est_sigla        CHAR(2 CHAR) NOT NULL,
    CONSTRAINT tbl_estado_pk PRIMARY KEY (id_estado)
) LOGGING;

CREATE TABLE tbl_ano (
    id_ano           INTEGER NOT NULL,
    ano_ano          INTEGER CHECK (ano_ano > 1900 AND ano_ano < 2100),
    CONSTRAINT tbl_ano_pk PRIMARY KEY (id_ano)
) LOGGING;

CREATE TABLE tbl_producao (
    id_producao      INTEGER NOT NULL,
    id_cultura       INTEGER NOT NULL,
    id_estado        INTEGER NOT NULL,
    id_ano           INTEGER NOT NULL,
    prd_area_plantada  NUMBER(10, 2),
    prd_producao_total NUMBER(10, 2),
    prd_produtividade NUMBER(10, 2),
    prd_custo         NUMBER(15, 2),
    prd_receita       NUMBER(15, 2),
    prd_lucro         NUMBER(15, 2),
    CONSTRAINT tbl_producao_pk PRIMARY KEY (id_producao)
) LOGGING;

CREATE TABLE tbl_tecnologia (
    id_tecnologia    INTEGER NOT NULL,
    tcn_nome         VARCHAR(50 CHAR) NOT NULL,
    tcn_descricao    VARCHAR(150 CHAR),
    CONSTRAINT tbl_tecnologia_pk PRIMARY KEY (id_tecnologia)
) LOGGING;

CREATE TABLE tbl_adocao_tecnologia (
    id_adocao        INTEGER NOT NULL,
    id_cultura       INTEGER NOT NULL,
    id_estado        INTEGER NOT NULL,
    id_ano           INTEGER NOT NULL,
    id_tecnologia    INTEGER NOT NULL,
    ado_porcentagem  NUMBER(5, 2),
    CONSTRAINT tbl_adocao_tecnologia_pk PRIMARY KEY (id_adocao)
) LOGGING;

CREATE TABLE tbl_clima (
    id_clima         INTEGER NOT NULL,
    id_estado        INTEGER NOT NULL,
    id_ano           INTEGER NOT NULL,
    cli_precipitacao NUMBER(10, 2),
    cli_temperatura  NUMBER(5, 2),
    cli_eventos      VARCHAR(150 CHAR),
    CONSTRAINT tbl_clima_pk PRIMARY KEY (id_clima)
) LOGGING;

CREATE TABLE tbl_insumo (
    id_insumo        INTEGER NOT NULL,
    ins_nome         VARCHAR(50 CHAR) NOT NULL,
    ins_tipo         VARCHAR(20 CHAR) CHECK (ins_tipo IN ('fertilizante', 'agrotoxicos')),
    CONSTRAINT tbl_insumo_pk PRIMARY KEY (id_insumo)
) LOGGING;

CREATE TABLE tbl_uso_insumo (
    id_uso_insumo    INTEGER NOT NULL,
    id_cultura       INTEGER NOT NULL,
    id_estado        INTEGER NOT NULL,
    id_ano           INTEGER NOT NULL,
    id_insumo        INTEGER NOT NULL,
    uso_quantidade   NUMBER(10, 2),
    CONSTRAINT tbl_uso_insumo_pk PRIMARY KEY (id_uso_insumo)
) LOGGING;

CREATE TABLE tbl_sustentabilidade (
    id_sustentabilidade INTEGER NOT NULL,
    id_cultura          INTEGER NOT NULL,
    id_estado           INTEGER NOT NULL,
    id_ano              INTEGER NOT NULL,
    sus_emissao_gases   NUMBER(10, 2),
    sus_consumo_agua    NUMBER(10, 2),
    CONSTRAINT tbl_sustentabilidade_pk PRIMARY KEY (id_sustentabilidade)
) LOGGING;

-- CHAVES ESTRANGEIRAS --

ALTER TABLE tbl_producao ADD CONSTRAINT tbl_producao_tbl_cultura_fk FOREIGN KEY (id_cultura)
    REFERENCES tbl_cultura (id_cultura) ON DELETE CASCADE;

ALTER TABLE tbl_producao ADD CONSTRAINT tbl_producao_tbl_estado_fk FOREIGN KEY (id_estado)
    REFERENCES tbl_estado (id_estado) ON DELETE CASCADE;

ALTER TABLE tbl_producao ADD CONSTRAINT tbl_producao_tbl_ano_fk FOREIGN KEY (id_ano)
    REFERENCES tbl_ano (id_ano) ON DELETE CASCADE;

ALTER TABLE tbl_adocao_tecnologia ADD CONSTRAINT tbl_adocao_tecnologia_tbl_cultura_fk FOREIGN KEY (id_cultura)
    REFERENCES tbl_cultura (id_cultura) ON DELETE CASCADE;

ALTER TABLE tbl_adocao_tecnologia ADD CONSTRAINT tbl_adocao_tecnologia_tbl_estado_fk FOREIGN KEY (id_estado)
    REFERENCES tbl_estado (id_estado) ON DELETE CASCADE;

ALTER TABLE tbl_adocao_tecnologia ADD CONSTRAINT tbl_adocao_tecnologia_tbl_ano_fk FOREIGN KEY (id_ano)
    REFERENCES tbl_ano (id_ano) ON DELETE CASCADE;

ALTER TABLE tbl_adocao_tecnologia ADD CONSTRAINT tbl_adocao_tecnologia_tbl_tecnologia_fk FOREIGN KEY (id_tecnologia)
    REFERENCES tbl_tecnologia (id_tecnologia) ON DELETE CASCADE;

ALTER TABLE tbl_clima ADD CONSTRAINT tbl_clima_tbl_estado_fk FOREIGN KEY (id_estado)
    REFERENCES tbl_estado (id_estado) ON DELETE CASCADE;

ALTER TABLE tbl_clima ADD CONSTRAINT tbl_clima_tbl_ano_fk FOREIGN KEY (id_ano)
    REFERENCES tbl_ano (id_ano) ON DELETE CASCADE;

ALTER TABLE tbl_uso_insumo ADD CONSTRAINT tbl_uso_insumo_tbl_cultura_fk FOREIGN KEY (id_cultura)
    REFERENCES tbl_cultura (id_cultura) ON DELETE CASCADE;

ALTER TABLE tbl_uso_insumo ADD CONSTRAINT tbl_uso_insumo_tbl_estado_fk FOREIGN KEY (id_estado)
    REFERENCES tbl_estado (id_estado) ON DELETE CASCADE;

ALTER TABLE tbl_uso_insumo ADD CONSTRAINT tbl_uso_insumo_tbl_ano_fk FOREIGN KEY (id_ano)
    REFERENCES tbl_ano (id_ano) ON DELETE CASCADE;

ALTER TABLE tbl_uso_insumo ADD CONSTRAINT tbl_uso_insumo_tbl_insumo_fk FOREIGN KEY (id_insumo)
    REFERENCES tbl_insumo (id_insumo) ON DELETE CASCADE;

ALTER TABLE tbl_sustentabilidade ADD CONSTRAINT tbl_sustentabilidade_tbl_cultura_fk FOREIGN KEY (id_cultura)
    REFERENCES tbl_cultura (id_cultura) ON DELETE CASCADE;

ALTER TABLE tbl_sustentabilidade ADD CONSTRAINT tbl_sustentabilidade_tbl_estado_fk FOREIGN KEY (id_estado)
    REFERENCES tbl_estado (id_estado) ON DELETE CASCADE;

ALTER TABLE tbl_sustentabilidade ADD CONSTRAINT tbl_sustentabilidade_tbl_ano_fk FOREIGN KEY (id_ano)
    REFERENCES tbl_ano (id_ano) ON DELETE CASCADE;


-- INDICES --

-- Índices Individuais
CREATE INDEX idx_producao_id_cultura ON tbl_producao (id_cultura);
CREATE INDEX idx_producao_id_estado ON tbl_producao (id_estado);
CREATE INDEX idx_producao_id_ano ON tbl_producao (id_ano);

-- Índices Compostos
CREATE INDEX idx_producao_cultura_estado_ano ON tbl_producao (id_cultura, id_estado, id_ano);
CREATE INDEX idx_adocao_tecnologia_cultura_estado_ano ON tbl_adocao_tecnologia (id_cultura, id_estado, id_ano);
CREATE INDEX idx_uso_insumo_cultura_estado_ano ON tbl_uso_insumo (id_cultura, id_estado, id_ano);
CREATE INDEX idx_sustentabilidade_cultura_estado_ano ON tbl_sustentabilidade (id_cultura, id_estado, id_ano);
