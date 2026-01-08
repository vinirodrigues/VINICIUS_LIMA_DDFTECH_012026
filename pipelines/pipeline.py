import pandas as pd
import os

# Criar pasta de saída se não existir
os.makedirs('../data/processed', exist_ok=True)

# Carregar dados
orders = pd.read_csv('../data/raw/olist_orders_dataset.csv')
customers = pd.read_csv('../data/raw/olist_customers_dataset.csv')
order_items = pd.read_csv('../data/raw/olist_order_items_dataset.csv')
products = pd.read_csv('../data/raw/olist_products_dataset.csv')

# Remover duplicados (tratamento simples)
orders = orders.drop_duplicates()
customers = customers.drop_duplicates()
order_items = order_items.drop_duplicates()
products = products.drop_duplicates()

# Salvar dados processados
orders.to_csv('../data/processed/orders_clean.csv', index=False)
customers.to_csv('../data/processed/customers_clean.csv', index=False)
order_items.to_csv('../data/processed/order_items_clean.csv', index=False)
products.to_csv('../data/processed/products_clean.csv', index=False)

print("Pipeline executado com sucesso!")
