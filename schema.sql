{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww30040\viewh18900\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- CareBridge Readmission System Database Schema\
CREATE TABLE patients (\
    patient_id INT PRIMARY KEY,\
    age INT,\
    gender VARCHAR(10),\
    comorbidity_score FLOAT\
);\
\
CREATE TABLE admissions (\
    admission_id INT PRIMARY KEY,\
    patient_id INT,\
    admission_date DATE,\
    discharge_date DATE,\
    length_of_stay INT,\
    num_medications INT,\
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)\
);\
\
CREATE TABLE risk_predictions (\
    prediction_id SERIAL PRIMARY KEY,\
    patient_id INT,\
    risk_score FLOAT,\
    risk_tier VARCHAR(10), -- Low, Medium, High\
    prediction_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,\
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)\
);}
