#!/bin/bash
# Ruta del archivo de registro (log)
# Activar el entorno conda
source /home/snparada/miniconda3/etc/profile.d/conda.sh
conda activate Spacio
log_file="/home/snparada/Spacionatural/Others/Logs/run8-30.log"

# Run Extract_Odoo_Inventories
echo "Extract_Odoo_Inventories:" >> "$log_file"
python3 /home/snparada/Spacionatural/Data/Codes/Extract_Data/Odoo/extract_odoo_inventories.py >> "$log_file" 2>&1
echo "" >> "$log_file"

# Run Orders_Creation
echo "Orders_Creation:" >> "$log_file"
python3 /home/snparada/Spacionatural/Supply/Stocks_With_Forecast/1.actual_stocks.py >> "$log_file" 2>&1
echo "" >> "$log_file"

# Run Extract_UF_By_Day
echo "Extract_UF_By_Day:" >> "$log_file"
python3 /home/snparada/Spacionatural/Finance/Extract_UF_By_Day/extract_uf_by_day.py >> "$log_file" 2>&1
echo "" >> "$log_file"

# Run Extract_Sales_By_Day
echo "Extract_Sales_By_Day:" >> "$log_file"
python3 /home/snparada/Spacionatural/Data/Codes/Extract_Data/Odoo/extract_sales_by_day.py >> "$log_file" 2>&1
echo "" >> "$log_file"

# Run Inventory Ratio
echo "Inventory Ratio:" >> "$log_file"
python3 /home/snparada/Spacionatural/Data/Codes/Extract_Data/Odoo/extract_inventory_value.py >> "$log_file" 2>&1
echo "" >> "$log_file"

