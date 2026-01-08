# Exploração de Dados – Dataset Olist

## Tabelas Analisadas
- orders
- customers
- order_items
- products

## Volume de Dados
- orders: +100 mil registros
- customers: +100 mil registros
- order_items: +100 mil registros
- products: +30 mil registros

## Estrutura Geral
- Dataset relacional baseado em chaves como `order_id`, `customer_id` e `product_id`
- Presença de múltiplas tabelas normalizadas

## Valores Nulos
- Algumas colunas apresentam valores nulos, principalmente relacionadas a datas de entrega e avaliações
- A presença de nulos será tratada na etapa de qualidade de dados

## Observações Iniciais
- Dados adequados para análises de vendas, logística e comportamento do cliente
- Possível construção de modelo dimensional com fato de pedidos e dimensões de cliente, produto e tempo
