# Dicionário de Dados - Brazilian Agricultural Production

## Descrição Geral
Este dicionário de dados descreve a estrutura do banco de dados para o projeto de monitoramento da produção agrícola no Brasil, focando nas culturas de **café** e **cana-de-açúcar** com dados de produção, clima, custos, insumos e sustentabilidade.

---

### Tabelas e Campos

---

### 1. `tbl_cultura`
| Coluna      | Tipo           | Descrição                                       |
|-------------|----------------|-------------------------------------------------|
| `cul_id`    | INTEGER        | Identificador único da cultura (PK)             |
| `cul_nome`  | VARCHAR(50)    | Nome da cultura (Ex: café, cana-de-açúcar)      |
| `cul_tipo`  | VARCHAR(25)    | Tipo da cultura (café ou cana_de_açúcar)        |

---

### 2. `tbl_estado`
| Coluna      | Tipo           | Descrição                                       |
|-------------|----------------|-------------------------------------------------|
| `est_id`    | INTEGER        | Identificador único do estado (PK)              |
| `est_nome`  | VARCHAR(50)    | Nome completo do estado                         |
| `est_sigla` | CHAR(2)        | Sigla do estado (Ex: SP, MG, etc.)              |

---

### 3. `tbl_ano`
| Coluna      | Tipo           | Descrição                                       |
|-------------|----------------|-------------------------------------------------|
| `ano_id`    | INTEGER        | Identificador único do ano (PK)                 |
| `ano_ano`   | INTEGER        | Ano de referência (Ex: 2001, 2002, etc.)        |

---

### 4. `tbl_producao`
| Coluna              | Tipo            | Descrição                                                      |
|---------------------|-----------------|----------------------------------------------------------------|
| `pro_id`            | INTEGER         | Identificador único da produção (PK)                           |
| `pro_cul_id`        | INTEGER         | Chave estrangeira para `tbl_cultura`                           |
| `pro_est_id`        | INTEGER         | Chave estrangeira para `tbl_estado`                            |
| `pro_ano_id`        | INTEGER         | Chave estrangeira para `tbl_ano`                               |
| `pro_area_plantada` | NUMBER(10, 2)   | Área plantada em hectares                                     |
| `pro_producao_total`| NUMBER(15, 2)   | Produção total em toneladas                                   |
| `pro_produtividade` | NUMBER(10, 2)   | Produtividade média (toneladas/hectare)                       |

---

### 5. `tbl_custo_producao`
| Coluna              | Tipo            | Descrição                                                      |
|---------------------|-----------------|----------------------------------------------------------------|
| `cus_id`            | INTEGER         | Identificador único do custo de produção (PK)                  |
| `cus_cul_id`        | INTEGER         | Chave estrangeira para `tbl_cultura`                           |
| `cus_est_id`        | INTEGER         | Chave estrangeira para `tbl_estado`                            |
| `cus_ano_id`        | INTEGER         | Chave estrangeira para `tbl_ano`                               |
| `cus_custo_variavel`| NUMBER(15, 2)   | Custo variável da produção                                     |
| `cus_custo_fixo`    | NUMBER(15, 2)   | Custo fixo da produção                                        |
| `cus_renda_fator`   | NUMBER(15, 2)   | Fator de rentabilidade                                        |

---

### 6. `tbl_clima`
| Coluna            | Tipo            | Descrição                                                      |
|-------------------|-----------------|----------------------------------------------------------------|
| `cli_id`          | INTEGER         | Identificador único do clima (PK)                              |
| `cli_est_id`      | INTEGER         | Chave estrangeira para `tbl_estado`                            |
| `cli_ano_id`      | INTEGER         | Chave estrangeira para `tbl_ano`                               |
| `cli_precipitacao`| NUMBER(10, 2)   | Precipitação média anual (mm)                                  |
| `cli_temperatura` | NUMBER(5, 2)    | Temperatura média anual (°C)                                   |
| `cli_eventos`     | VARCHAR(150)    | Eventos climáticos específicos (Ex: chuvas fortes, seca leve)  |

---

### 7. `tbl_insumo`
| Coluna         | Tipo           | Descrição                                       |
|----------------|----------------|-------------------------------------------------|
| `ins_id`       | INTEGER        | Identificador único do insumo (PK)              |
| `ins_nome`     | VARCHAR(50)    | Nome do insumo (Ex: fertilizante NPK)           |
| `ins_tipo`     | VARCHAR(20)    | Tipo do insumo (fertilizante ou agrotoxico)     |

---

### 8. `tbl_uso_insumo`
| Coluna            | Tipo            | Descrição                                                      |
|-------------------|-----------------|----------------------------------------------------------------|
| `uso_id`          | INTEGER         | Identificador único do uso do insumo (PK)                      |
| `uso_cul_id`      | INTEGER         | Chave estrangeira para `tbl_cultura`                           |
| `uso_est_id`      | INTEGER         | Chave estrangeira para `tbl_estado`                            |
| `uso_ano_id`      | INTEGER         | Chave estrangeira para `tbl_ano`                               |
| `uso_ins_id`      | INTEGER         | Chave estrangeira para `tbl_insumo`                            |
| `uso_quantidade`  | NUMBER(10, 2)   | Quantidade do insumo utilizado (unidade conforme insumo)       |

---

### 9. `tbl_sustentabilidade`
| Coluna              | Tipo            | Descrição                                                      |
|---------------------|-----------------|----------------------------------------------------------------|
| `sus_id`            | INTEGER         | Identificador único da sustentabilidade (PK)                   |
| `sus_cul_id`        | INTEGER         | Chave estrangeira para `tbl_cultura`                           |
| `sus_est_id`        | INTEGER         | Chave estrangeira para `tbl_estado`                            |
| `sus_ano_id`        | INTEGER         | Chave estrangeira para `tbl_ano`                               |
| `sus_emissao_gases` | NUMBER(10, 2)   | Emissão de gases de efeito estufa (kg CO₂ equivalente)         |
| `sus_consumo_agua`  | NUMBER(10, 2)   | Consumo de água (m³)                                          |
