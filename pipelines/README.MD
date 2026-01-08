# Pipeline de Processamento de Dados

## Objetivo
Executar um processamento simples nos dados brutos do dataset Olist, removendo registros duplicados e salvando versões tratadas para uso analítico.

## Etapas do Pipeline
1. Leitura dos arquivos CSV da pasta `data/raw`
2. Remoção de registros duplicados
3. Persistência dos dados tratados na pasta `data/processed`

## Como Executar
A partir do diretório `pipelines`:

```bash
python pipeline.py
```

## Saída

Os seguintes arquivos são gerados:

orders_clean.csv

customers_clean.csv

order_items_clean.csv

products_clean.csv

## Observações

Este pipeline tem caráter demonstrativo, focado em clareza, reprodutibilidade e aderência aos requisitos do case técnico.