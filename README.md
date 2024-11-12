# Brazilian-agricultural-production

Este projeto visa modelar e armazenar informações sobre a produção agrícola de café e cana-de-açúcar no Brasil, com foco em estados e anos, usando dados disponibilizados pela Conab. O banco de dados foi projetado para permitir consultas e análises específicas sobre produção, clima, custos, insumos e sustentabilidade.

Resumo das Tabelas
Cultura: Armazena informações sobre as culturas de café e cana-de-açúcar, incluindo nome e tipo.

Estado: Contém os dados dos estados brasileiros onde as culturas são produzidas.

Ano: Armazena os anos disponíveis para dados de produção e análises.

Producao: Guarda informações detalhadas sobre a produção de cada cultura em cada estado e ano, incluindo área plantada, produção total e produtividade.

Ponto importante: O campo de "Produção Total" estará em toneladas, que é a unidade padrão para cana-de-açúcar. Para café, os dados da Conab são fornecidos em sacas de 60 kg. Neste banco de dados, essas sacas foram convertidas para toneladas para simplificar as análises.
Custo Producao: Registra custos variáveis e fixos associados à produção de cada cultura, estado e ano, permitindo análises financeiras.

Clima: Armazena dados climáticos, como precipitação e temperatura, por estado e ano, o que permite analisar o impacto do clima na produção agrícola.

Insumo: Lista os insumos utilizados na produção, incluindo tipos como fertilizantes e agrotóxicos.

Uso Insumo: Registra a quantidade de cada insumo utilizado por cultura, estado e ano. Esta estrutura permite o controle histórico e a análise de padrões de uso de insumos ao longo do tempo.

Sustentabilidade: Armazena indicadores de sustentabilidade, como emissões de gases de efeito estufa e consumo de água, para cada cultura, estado e ano, o que permite avaliar os impactos ambientais.

Funcionalidades Principais do Banco de Dados
Gerenciamento de dados de produção: Permite registrar e analisar dados de produção de café e cana-de-açúcar ao longo do tempo, por estado.
Análise de custos de produção: Armazena informações sobre os custos variáveis e fixos, possibilitando cálculos de rentabilidade para cada cultura e região.
Análise climática: Permite investigar a influência das condições climáticas, como precipitação e temperatura, na produtividade agrícola.
Controle de insumos: Registra o uso de insumos por cultura e estado, permitindo estudos sobre eficiência e sustentabilidade no uso de fertilizantes e agroquímicos.
Avaliação de sustentabilidade: Permite monitorar indicadores ambientais, como emissão de gases e consumo de água, para cada cultura e região.
Possibilidades de Análise
Comparação de produtividade entre culturas e estados, permitindo identificar regiões mais produtivas para café e cana-de-açúcar.
Análise da evolução da produção ao longo dos anos, facilitando a visualização de tendências de crescimento ou declínio na produção.
Impacto do clima na produção: Análise da relação entre variáveis climáticas (precipitação, temperatura) e a produtividade agrícola.
Cálculo do custo de produção e rentabilidade: Avaliação da lucratividade de cada cultura, com base nos custos fixos e variáveis registrados.
Análise de sustentabilidade da produção: Avaliação do impacto ambiental da produção agrícola, com base em dados de emissões de gases e consumo de água.