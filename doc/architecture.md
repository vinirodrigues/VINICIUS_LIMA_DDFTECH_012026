# Arquitetura da Solução de Dados

## Visão Geral
Esta solução foi desenvolvida com foco em boas práticas de Engenharia de Dados, utilizando uma arquitetura em camadas para ingestão, processamento, modelagem e consumo de dados, aplicada ao dataset público da Olist.

O objetivo é garantir:
- Organização dos dados
- Qualidade e rastreabilidade
- Facilidade de análise
- Escalabilidade da solução

---

## Fonte de Dados
- **Origem:** Dataset público Olist (e-commerce brasileiro)
- **Formato:** CSV
- **Volume:** Mais de 100 mil registros
- **Local:** Pasta `data/` do repositório

---

## Arquitetura em Camadas

### 1. Camada Raw
- Contém os dados brutos exatamente como foram fornecidos pela fonte.
- Nenhuma transformação é aplicada nessa etapa.
- Objetivo: preservar a integridade dos dados originais.

**Local:**  

data/raw/


---

### 2. Camada Processed
- Dados limpos e padronizados.
- Tratamento de:
  - Valores nulos
  - Tipos de dados (datas, numéricos)
  - Remoção de registros inconsistentes
- Preparação para modelagem analítica.

**Local:**  


data/processed/


---

### 3. Camada Curated
- Dados prontos para consumo analítico.
- Estrutura pensada para facilitar consultas e análises de negócio.
- Base para modelagem dimensional e dashboards.

**Local:**  


data/curated/


---

## Pipeline de Dados
O pipeline foi implementado localmente em Python, seguindo o fluxo:



Raw → Processed → Curated


Responsabilidades do pipeline:
- Leitura dos dados brutos
- Aplicação de regras de qualidade
- Transformações necessárias
- Persistência dos dados em cada camada

**Local do código:**  


pipeline/


---

## Qualidade dos Dados
As verificações de qualidade incluem:
- Validação de chaves primárias
- Checagem de valores nulos em campos críticos
- Validação de formatos de data
- Consistência entre tabelas relacionadas

Os resultados e observações estão documentados nos notebooks de qualidade.

---

## Modelagem de Dados
Foi adotada uma **modelagem dimensional**, com:
- Tabela fato (ex: pedidos)
- Tabelas dimensão (clientes, produtos, vendedores, tempo)

Essa abordagem facilita análises analíticas e consultas SQL performáticas.

**Local da documentação:**  


modeling/


---

## Consumo e Análises
Os dados da camada curated são consumidos por:
- Consultas SQL analíticas
- Notebooks de análise
- Visualizações e insights de negócio

**Local:**  


sql/
analysis/


---

## Observação sobre Plataforma Dadosfera
A arquitetura foi desenhada de forma totalmente compatível com a plataforma Dadosfera.

O pipeline, as camadas de dados e a modelagem podem ser diretamente migrados para a plataforma, utilizando:
- Data Lake Zones
- Pipelines SQL/Spark
- Camada semântica
- Data Apps e dashboards