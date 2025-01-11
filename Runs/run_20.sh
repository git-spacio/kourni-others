#!/bin/bash

# Ruta del archivo de registro (log)
# Activar el entorno conda
source /home/snparada/miniconda3/etc/profile.d/conda.sh
conda activate Spacio
log_file="/home/snparada/Spacionatural/Others/Logs/run_20.log"


# Run Products
echo "Dim Products:" >> "$log_file"
python3 /home/snparada/Spacionatural/Data/Codes/Extract_Data/Odoo/extract_products.py >> "$log_file" 2>&1
echo "" >> "$log_file"

# Run Boms
echo "Dim Boms:" >> "$log_file"
python3 /home/snparada/Spacionatural/Data/Codes/Extract_Data/Odoo/extract_boms.py >> "$log_file" 2>&1
echo "" >> "$log_file"


# Run Extract_Odoo_Inventories
echo "ME and MP by day:" >> "$log_file"
python3 /home/snparada/Spacionatural/Data/Codes/Modified_Data/Supply/Inventories/mp_me_stocks_by_location_by_day.py >> "$log_file" 2>&1
echo "" >> "$log_file"

# Run Orders_Creation
echo "PT by day:" >> "$log_file"
python3 /home/snparada/Spacionatural/Data/Codes/Modified_Data/Supply/Inventories/pt_stocks_by_location_by_day.py >> "$log_file" 2>&1
echo "" >> "$log_file"

# Run Orders_Creation
echo "Stockout:" >> "$log_file"
python3 /home/snparada/Spacionatural/Data/Codes/Modified_Data/Supply/Inventories/stockout_by_categories_by_warehouses.py >> "$log_file" 2>&1
echo "" >> "$log_file"


