import pandas as pd

# Leer el archivo CSV
df = pd.read_csv('/home/snparada/Spacionatural/Others/Tests/costs.csv')

# Asegurarse de que la columna de fechas es del tipo datetime
df['FECHA'] = pd.to_datetime(df['FECHA'], format='%d/%m/%Y')

# Ordenar el DataFrame por producto y fecha
df_sorted = df.sort_values(by=['PRODUCTO', 'FECHA'], ascending=[True, False])

# Eliminar duplicados manteniendo solo el último registro de cada producto
df_filtered = df_sorted.drop_duplicates(subset=['PRODUCTO'], keep='first')

# Imprimir el DataFrame resultante
print(df_filtered)

# Si quieres guardar el DataFrame filtrado en un nuevo archivo CSV, usa lo siguiente:
df_filtered.to_csv('/home/snparada/Spacionatural/Others/Tests/filtered_costs.csv', index=False)
