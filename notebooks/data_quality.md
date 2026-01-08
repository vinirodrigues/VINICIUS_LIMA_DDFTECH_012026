# Qualidade de Dados – Dataset Olist

## Verificação de Duplicados
- Não foram identificados volumes relevantes de registros totalmente duplicados nas tabelas principais.
- A tabela `order_items` apresenta múltiplos registros por pedido, o que é esperado pelo modelo relacional.

## Valores Nulos
- Foram identificados valores nulos principalmente em colunas relacionadas a:
  - Datas de entrega
  - Avaliações dos pedidos
- Esses nulos são compatíveis com pedidos não entregues ou não avaliados.

## Integridade de Chaves
- A coluna `order_id` é consistente entre as tabelas `orders` e `order_items`
- As chaves `customer_id` e `product_id` apresentam boa cardinalidade e integridade

## Conclusões
- O dataset apresenta boa qualidade geral
- Os principais pontos de atenção são valores nulos contextuais, que poderão ser tratados conforme o objetivo analítico
- Os dados são adequados para modelagem dimensional e análises analíticas
