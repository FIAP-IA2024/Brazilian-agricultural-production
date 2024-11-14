# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>

# Brazilian Agricultural Production

## 👨‍🎓 Integrantes: 
- <a href="https://www.linkedin.com/in/edimilson-ribeiro/">Edimilson Ribeiro</a>
- <a href="https://www.linkedin.com/in/ribeirogab/">Gabriel Ribeiro</a>
- <a href="https://www.linkedin.com/in/jonas-felipe-dos-santos-lima-b2346811b/">Jonas Felipe dos Santos Lima</a>
- <a href="https://www.linkedin.com/in/jacorrea/">Jose Antonio Correa Junior</a>
- <a href="https://www.linkedin.com/in/mstrazzini/">Marcos Trazzini</a>

## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="https://www.linkedin.com/in/lucas-gomes-moreira-15a8452a/">Lucas Gomes Moreira</a>
### Coordenador(a)
- <a href="https://www.linkedin.com/in/profandregodoi/">André Godoi</a>

## 📜 Descrição

Este projeto, "Brazilian Agricultural Production," visa modelar e armazenar dados de produção agrícola de café e cana-de-açúcar no Brasil. Utilizando dados da Conab, ele permite que informações sobre produção, clima, custos, insumos e sustentabilidade sejam organizadas e analisadas em um banco de dados robusto. O sistema possibilita consultas detalhadas para fins acadêmicos, análises econômicas, ambientais e de eficiência agrícola.

## Estrutura do Banco de Dados

As principais tabelas do banco de dados incluem:

- **Cultura**: Informações sobre culturas como café e cana-de-açúcar.
- **Estado**: Dados dos estados brasileiros onde as culturas são produzidas.
- **Ano**: Representação dos anos de referência para a produção e análises.
- **Produção**: Dados sobre a produção agrícola em cada estado e ano, incluindo área plantada e produtividade. 
  - **Nota**: As produções são representadas em toneladas; no caso do café, as sacas (60 kg) foram convertidas para toneladas para consistência de análise.
- **Custo de Produção**: Custos variáveis e fixos por cultura, estado e ano, possibilitando estudos de rentabilidade.
- **Clima**: Informações climáticas, como precipitação e temperatura, relacionadas a cada estado e ano.
- **Insumo**: Listagem dos insumos, como fertilizantes e agrotóxicos.
- **Uso de Insumos**: Registro do uso de cada insumo, facilitando o monitoramento histórico e análise de padrões de uso.
- **Sustentabilidade**: Indicadores de sustentabilidade como emissões de gases e consumo de água para cada cultura e região.

## 📁 Estrutura de pastas

Dentre os arquivos e pastas presentes na raiz do projeto, definem-se:

- **Consultas**: Contém scripts SQL específicos para análises no banco de dados.
  - `Consulta_Evolucao.sql`: Consulta para análise da evolução da área plantada.
  - `Consulta_Producao.sql`: Consulta para análise de produção total por cultura e estado.
  - `Consulta_Ranking.sql`: Consulta para o ranking de estados por produtividade.
- `inserts.sql`: Script com inserções para popular o banco de dados com dados iniciais.
- `README.md`: Arquivo de documentação geral do projeto.
- `script.sql`: Script para criação e configuração inicial do banco de dados.

## 🔧 Como executar o código

1. Clone o repositório e abra o arquivo `src/brazilian_agriculture.sql`.
2. Configure um banco de dados SQL (preferencialmente Oracle) e execute o script para criar as tabelas e popular com os dados iniciais.
3. As consultas específicas podem ser encontradas na pasta `Consultas` e incluem exemplos de análise como:
   - Produção total de uma cultura por estado em um determinado ano.
   - Evolução da área plantada ao longo dos anos.
   - Ranking dos estados por produtividade em cada cultura.

## 🗃 Histórico de lançamentos

* 1.1.0 - 13/11/2024
  * Atualização das consultas com melhorias para cobertura de todos os estados.
  * Implementação de novos inserts para completar 100 linhas, garantindo dados para cada ano e cada estado.
  * Revisão final para organização do repositório, com scripts SQL otimizados.

* 1.0.0 - 13/11/2024
  * Atualização do projeto com a atualização completa de consultas e inserts para o banco de dados.
  * Ajustes finais na estrutura do README e organização dos scripts SQL.

* 0.9.0 - 12/11/2024
  * Estruturação do banco de dados e inclusão das tabelas principais.
  * Implementação inicial dos scripts de inserção de dados.

* 0.8.0 - 28/10/2024
  * Estruturação inicial do banco de dados e criação das tabelas base.
  * Esboço inicial do README com descrição do projeto e funcionalidades.

* 0.1.0 - 28/10/2024
  * Commit inicial do projeto com a configuração básica do repositório.


## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>
