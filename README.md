# Brazilian-agricultural-production
 
Resumo das Tabelas:

1. Cultura: Armazena informações sobre as diferentes culturas cultivadas, como nome e ciclo de vida.

2. Estado: Contém os dados dos estados onde as culturas são produzidas.

3. Ano: Armazena os anos para os quais os dados de produção estão disponíveis.

4. Producao: Guarda informações detalhadas sobre a produção de cada cultura em cada estado e ano, incluindo área plantada, produção total, custos e receitas.
Ponto importante - No campo Produção Total, o que estará sendo calculado será Toneladas, por ser medida padrão utilizada no peso de Cana de Açúcar. Para o café, a medida padrão é Sacas, que no Brasil o peso padrã de uma Saca é 60 Kg. Para simplificar os cálculos do banco, estaremos utilizando apenas os valores convertidos das Sacas em toneladas.

5. Tecnologia: Lista as tecnologias utilizadas na produção agrícola.

6. AdocaoTecnologia: Registra a adoção de cada tecnologia por cultura, estado e ano.
A duplicidade é dada a possível implementação de novas tecnologias sem alteração da tabel adocaoTecnologia, também para ter melhor visualização das tecnologias adotadas com o tempo. Ter a tabela tecnologia separada permite análise individual de onde é utilizada, tendências e padrões.

7. Clima: Armazena dados climáticos, como precipitação e temperatura, para cada estado e ano.

8. Insumo: Lista os insumos utilizados na produção, como fertilizantes e agrotóxicos.

9. UsoInsumo: Registra a quantidade de cada insumo utilizado por cultura, estado e ano.
Duplicidade semelhante a Tecnologia/AdocaoTecnologia, permite melhor controle no histórico de uso de cada insumo, eficiência, tendências e padrões.

10. Sustentabilidade: Armazena indicadores de sustentabilidade, como emissão de gases do efeito estufa e consumo de água.
Funcionalidades Principais do Banco de Dados:

Gerenciamento de dados de produção: Permite registrar e analisar dados de produção de diferentes culturas ao longo do tempo.
Análise de tecnologias: Permite avaliar o impacto da adoção de diferentes tecnologias na produção.
Análise climática: Permite analisar a influência das condições climáticas na produção.
Análise de insumos: Permite avaliar o uso de insumos e seus impactos na produção e na sustentabilidade.
Análise da sustentabilidade: Permite avaliar a sustentabilidade da produção agrícola.
Possibilidades de Análise:

Comparação da produtividade entre culturas e estados.
Análise da evolução da produção ao longo do tempo.
Identificação das tecnologias mais adotadas e seus impactos na produtividade.
Avaliação da relação entre condições climáticas e produção.
Cálculo do custo de produção e da margem de lucro.
Análise da sustentabilidade da produção.