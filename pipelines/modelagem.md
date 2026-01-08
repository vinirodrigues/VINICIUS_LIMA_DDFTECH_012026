# Modelagem Dimensional – Dataset Olist

## Visão Geral
Para atender aos objetivos analíticos do projeto, foi adotada uma modelagem dimensional no formato estrela (Star Schema), adequada para análises de desempenho, vendas e comportamento do cliente.

## Tabela Fato
### fato_pedidos
- order_id
- customer_id
- order_purchase_timestamp
- order_status
- total_valor_pedido

Essa tabela concentra os principais eventos transacionais do negócio.

## Tabelas Dimensão
### dim_cliente
- customer_id
- customer_city
- customer_state

### dim_produto
- product_id
- product_category_name

### dim_tempo
- date
- year
- month
- day

## Relacionamentos
- fato_pedidos.customer_id → dim_cliente.customer_id
- fato_pedidos.product_id → dim_produto.product_id
- fato_pedidos.order_purchase_timestamp → dim_tempo.date

## Justificativa
A separação entre fatos e dimensões permite consultas analíticas eficientes, facilita agregações e segue boas práticas de modelagem para Data Warehouses.
