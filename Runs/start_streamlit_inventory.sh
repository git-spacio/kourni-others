#!/bin/bash
echo "PATH: $PATH" >> /tmp/streamlit_log.txt
which streamlit >> /tmp/streamlit_log.txt
source /home/snparada/miniconda3/etc/profile.d/conda.sh
conda activate Spacio
cd /home/snparada/Spacionatural/Supply/Dashboards
streamlit run inventory_management.py