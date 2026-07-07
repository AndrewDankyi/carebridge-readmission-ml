{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww30040\viewh18900\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 import pandas as pd\
import numpy as np\
from pathlib import Path\
\
def generate_healthcare_data(n=1000):\
    np.random.seed(42)\
    data = \{\
        'patient_id': range(1, n + 1),\
        'age': np.random.randint(18, 90, n),\
        'num_prev_admissions': np.random.poisson(0.5, n),\
        'length_of_stay': np.random.randint(1, 14, n),\
        'num_medications': np.random.randint(1, 15, n),\
        'comorbidity_score': np.random.uniform(0, 5, n),\
        'readmitted_30_days': np.random.choice([0, 1], n, p=[0.8, 0.2])\
    \}\
    df = pd.DataFrame(data)\
    Path("data").mkdir(exist_ok=True)\
    df.to_csv("data/sample_readmission_data.csv", index=False)\
    print("\uc0\u9989  Created data/sample_readmission_data.csv")\
\
if __name__ == "__main__":\
    generate_healthcare_data()}
