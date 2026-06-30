# Explainable Fraud Intelligence Framework


## JP Morgan Data Analytics Virtual Experience (Forage)

**Author:** Karthik Kumar Kuthuru

---

## Project Highlights

- Explainable Fraud Intelligence Framework
- Operational Fraud Prioritisation
- Logistic Regression Operational Model
- SHAP Explainability
- Power BI Fraud Operations Dashboard
- Governance & KPI Framework
- Human-in-the-Loop Decision Support

This project demonstrates how explainable machine learning, operational fraud intelligence, governance and interactive dashboards can be combined into a practical fraud operations decision-support framework.

---


## Project Overview

This project develops an end-to-end Explainable Fraud Intelligence Framework designed to support operational fraud investigation, alert prioritisation, investigator decision-making, and fraud risk monitoring.

Unlike traditional fraud detection projects that focus solely on predictive modelling, this solution combines machine learning, behavioural fraud analytics, operational fraud intelligence, governance controls, and investigator-facing dashboards into a unified fraud operations workflow.

The framework was designed to simulate how modern fraud operations teams prioritise alerts, manage investigation queues, monitor operational effectiveness, and maintain transparency through explainable risk indicators.

---

## 📂 Project Deliverables

This repository contains the complete project deliverables:

- 📄 Business Report (PDF)
- 📑 Executive Presentation (PDF)
- 🎥 Presentation Recording (Google Drive)
- 🎨 Original Canva Presentation
- 📓 Jupyter Notebook
- 📊 Power BI Dashboard (.pbix)
- 📁 Supporting datasets and documentation

---

## Business Problem

Fraud operations teams face increasing alert volumes, evolving fraud patterns, synthetic identity risks, and limited investigation capacity.

Traditional fraud systems often optimise for model performance alone while failing to address:

* Alert prioritisation
* Investigation workload management
* Explainability
* Governance requirements
* Operational monitoring
* SLA management
* Investigator productivity

This project addresses these challenges by creating an explainable fraud-alert prioritisation framework that balances fraud detection effectiveness with operational scalability.

---

## Solution Architecture

The solution combines:

* Multi-entity fraud intelligence analysis
* Behavioural fraud analytics
* Customer risk intelligence
* Merchant risk intelligence
* Explainable machine learning
* Threshold-based alert prioritisation
* Operational KPI monitoring
* Investigator workflow simulation
* Governance and monitoring controls
* Interactive Power BI dashboards

---

## Key Project Components

### Fraud Analytics & Feature Engineering

The project incorporates behavioural and operational fraud indicators including:

* Device familiarity analysis
* Transaction timing analysis
* Merchant category concentration
* Velocity-based risk indicators
* Geographic anomaly indicators
* Customer segmentation
* KYC risk bands
* Synthetic identity indicators
* Transaction channel exposure

### Explainable Risk Prioritisation Framework

An explainable fraud-risk scoring framework was developed to convert behavioural fraud indicators into operational investigation priorities.

Risk categories:

* High Risk → Same Day Review
* Medium Risk → Review Within 24 Hours
* Low Risk → Weekly Monitoring

The framework also generates:

* Recommended actions
* Service-level priorities
* Transaction-level reason codes
* Investigator review queues

### Machine Learning Evaluation

Models evaluated:

1. Logistic Regression
2. XGBoost Classifier

The final framework selected Logistic Regression as the preferred operational model due to:

- Highest mean cross-validation ROC-AUC
- Strong fraud recall and detection sensitivity
- Transparent and interpretable predictions
- Greater operational suitability for investigator-led decision support

---

## Operational Fraud Intelligence Dashboard

The Power BI solution consists of six integrated analytical views designed to support fraud investigators, operational managers and risk stakeholders through interactive fraud monitoring, alert prioritisation and KPI-driven decision support.


### 1. Executive Overview

* Total Transactions
* Fraud Cases
* Fraud Rate
* High-Risk Alerts
* Risk Category Distribution

### 2. Operational Fraud Analysis

* Fraud Rate by Channel
* Merchant Category Analysis
* Device Familiarity Analysis
* Transaction Timing Analysis

### 3. Customer & Behavioural Intelligence

* Customer Segment Analysis
* KYC Risk Analysis
* Synthetic Identity Analysis
* Customer Type Analysis

### 4. Explainable Fraud Prioritisation

* Risk Distribution
* High-Risk Escalations
* Device-Based Prioritisation
* Transaction-Time Prioritisation
* Risk-Based Investigation Filtering

### 5. Fraud Operations & Queue Management

* Alert Review Mix
* Weekly Monitoring Queue
* Critical SLA Reviews
* Merchant Fraud Concentration
* Investigator Alert Queue
* Reason Code Analysis

### 6. Operational Effectiveness Monitoring

* Alert Quality
* Fraud Detection Coverage
* Investigation Waste Exposure
* Missed Fraud Exposure
* Queue Risk Severity
* Active Investigation Queue

---

## Operational KPI Framework

The project introduces operational fraud management KPIs rather than relying solely on model metrics.

KPIs include:

* Alert Quality
* Fraud Detection Coverage
* Investigation Waste Exposure
* Missed Fraud Exposure
* Queue Hit Rate
* Average Triage Score
* Queue Risk Severity
* Active Investigation Queue

These KPIs support fraud operations management, investigator productivity monitoring, and operational decision-making.

---

## Governance & Explainability

The framework incorporates:

* Threshold Strategy Memo
* Operational Fraud Model Card
* Explainability Controls
* SLA Prioritisation
* Transaction-Level Reason Codes
* Recommended Actions
* Governance Monitoring Considerations
* Human-in-the-Loop Decision Support

The solution is intended to support fraud analysts and investigators rather than automate fraud decisions.

---

## Key Results

### Fraud Rate by Risk Category

| Risk Category | Fraud Rate |
| ------------- | ---------: |
| Low Risk      |      2.41% |
| Medium Risk   |      5.57% |
| High Risk     |     12.02% |

The explainable prioritisation framework successfully concentrated fraud exposure into higher-priority investigation queues.

Additional operational evaluation demonstrated that a balanced decision threshold provided the most practical trade-off between fraud detection capability and investigator workload, supporting sustainable fraud operations.

### Key Fraud Insights

* P2P and Wire transactions demonstrated elevated fraud exposure.
* Night-time activity showed higher fraud risk than daytime activity.
* New-device transactions exhibited increased fraud exposure.
* Fuel, Utilities, and Gaming merchants demonstrated higher fraud concentration.
* Behavioural indicators were more predictive than static customer-risk classifications.

---

## Technologies Used

Python
Pandas
NumPy
Scikit-learn
XGBoost
SHAP
Power BI
Git
GitHub
VS Code
Matplotlib
Seaborn

---

## Project Outcome

This project demonstrates how fraud analytics, explainable machine learning, governance controls, operational KPIs, and investigator-facing dashboards can be integrated into a modern fraud intelligence framework.

The solution extends beyond traditional fraud detection by incorporating alert prioritisation, investigator workflow support, operational monitoring, governance controls, and explainable decision support, creating a practical simulation of a real-world fraud operations environment.

---

## Future Enhancements

Potential future developments include:

- Real-time fraud scoring
- Live fraud operations control tower
- Automated case management
- Model drift monitoring
- Continuous threshold optimisation
- Deployment of the Fraud Operations Control Tower as a secure web application for real-time fraud monitoring and operational decision support.

---


## 🔗 Additional Resources

## 🎥 Presentation Recording

▶️ **Watch the Project Presentation:**  
https://drive.google.com/file/d/1bQhgpuK7dry9FTwgXI_U1Lh6u8za3pAj/view

## 🎨 Original Canva Presentation

🎨 **View the Original Canva Deck:**  
https://canva.link/ksalqr1r1p6cndf
---


## Repository Structure

jp-morgan-internship/
│
├── A_Project_Deliverables/
│   ├── JP_Morgan_Project_Brief.pdf
│   ├── Business_Report_Explainable_Fraud_Intelligence_Framework.pdf
│   ├── Executive_Deck_Explainable_Fraud_Intelligence_Framework.pdf
│   ├── Fraud_Operations_Dashboard.pbix
│   └── Explainable_Fraud_Intelligence_Framework.ipynb
│
├── B_Dataset/
│   ├── raw/
│   │   ├── transactions.csv
│   │   ├── customers.csv
│   │   └── merchants.csv
│   ├── processed/
│   │   ├── fraud_intelligence_dataset.csv
│   │   └── fraud_intelligence_dataset_enhanced.csv
│   └── metadata/
│       ├── data_dictionary.csv
│       ├── schema_note.txt
│       └── synthetic_generation_note.txt
│
├── C_Supporting_Files/
│   ├── reports/
│   │   └── Threshold_Strategy_and_Alert_Prioritisation_Memo.pdf
│   ├── Project_Framework/
│   │   ├── evaluation_rubric.csv
│   │   └── kpi_list.csv
│   └── sql/
│       └── fraud_analysis_queries.sql
│
├── D_Screenshots/
│   ├── Executive_Overview.png
│   ├── Operational_Fraud_Analysis.png
│   ├── Customer_Behavioural_Intelligence.png
│   ├── Explainable_Fraud_Prioritisation.png
│   ├── Fraud_Operations_Queue.png
│   └── Operational_Effectiveness.png
│
├── README.md
├── requirements.txt
└── .gitignore
```