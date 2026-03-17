import pandas as pd

# Load data
df = pd.read_csv("sales_data.csv")

# Data cleaning
df['order_date'] = pd.to_datetime(df['order_date'])

# Create new column
df['total_price'] = df['quantity'] * df['price']

# Show data
print(df)

# Save cleaned data
df.to_csv("cleaned_sales_data.csv", index=False)