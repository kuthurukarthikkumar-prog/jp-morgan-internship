# Explainable Fraud Intelligence Framework

## JP Morgan Data Analytics Virtual Experience (Forage)

**Author:** Karthik Kumar Kuthuru

---

## Project Highlights

- Explainable Fraud Intelligence Framework
- Operational Fraud Alert Prioritisation
- Logistic Regression Operational Model
- Explainable AI using SHAP
- Power BI Fraud Operations Dashboard
- Operational KPI Framework
- Human-in-the-Loop Decision Support
- Governance & Threshold Strategy

---

## Project Overview

This project develops an end-to-end Explainable Fraud Intelligence Framework that supports operational fraud investigation, alert prioritisation, investigator decision-making and fraud risk monitoring.

Unlike traditional fraud detection projects that focus solely on predictive modelling, this solution combines machine learning, behavioural fraud analytics, operational fraud intelligence, governance controls and interactive Power BI dashboards into a unified fraud operations workflow.

The framework simulates how modern fraud operations teams prioritise alerts, manage investigator queues, monitor operational effectiveness and maintain transparency through explainable risk indicators.

---

## Business Problem

Fraud operations teams face increasing alert volumes, evolving fraud patterns, synthetic identity risks and limited investigation capacity.

Traditional fraud detection systems often optimise predictive performance while overlooking operational challenges such as:

- Alert prioritisation
- Investigation workload management
- Explainability
- Governance
- Operational monitoring
- SLA management
- Investigator productivity

This project addresses these challenges through an explainable fraud intelligence framework that balances fraud detection effectiveness with operational scalability.

---

## Solution Architecture

The framework combines:

- Multi-source fraud intelligence integration
- Behavioural fraud analytics
- Customer intelligence
- Merchant intelligence
- Explainable machine learning
- Threshold-based alert prioritisation
- Operational KPI monitoring
- Investigator workflow simulation
- Governance controls
- Interactive Power BI dashboards

---

## Key Project Components

### Fraud Analytics & Feature Engineering

Behavioural and operational fraud indicators include:

- Device familiarity analysis
- Transaction timing analysis
- Merchant category analysis
- Customer segmentation
- KYC risk bands
- Synthetic identity indicators
- Geographic distance
- Transaction channel exposure
- Behavioural fraud indicators

---

### Explainable Fraud Prioritisation Framework

Behavioural fraud signals are converted into operational investigation priorities.

Risk Categories

- High Risk → Same Day Review
- Medium Risk → Review Within 24 Hours
- Low Risk → Weekly Monitoring

Operational outputs include:

- Fraud Risk Score
- SLA Priority
- Transaction-Level Reason Codes
- Recommended Actions
- Investigator Review Queue

---

### Machine Learning Evaluation

Models evaluated:

- Logistic Regression
- XGBoost Classifier

Following comparative evaluation, Logistic Regression was selected as the operational model because it demonstrated:

- Highest mean cross-validation ROC-AUC
- Strong fraud recall and detection sensitivity
- Transparent and interpretable predictions
- Greater suitability for investigator-led fraud operations

---

## Power BI Fraud Operations Dashboard

The solution includes six analytical dashboard views:

### Executive Overview

- Total Transactions
- Fraud Cases
- Fraud Rate
- High-Risk Alerts
- Risk Category Distribution

### Operational Fraud Analysis

- Fraud Rate by Channel
- Merchant Categories
- Device Familiarity
- Transaction Timing

### Customer & Behavioural Intelligence

- Customer Segments
- KYC Risk Bands
- Synthetic Identity Analysis
- Customer Behaviour

### Explainable Fraud Prioritisation

- Risk Distribution
- High-Risk Escalations
- Explainable Fraud Drivers
- Risk-Based Filtering

### Fraud Operations & Queue Management

- Investigator Alert Queue
- Merchant Fraud Concentration
- SLA Priorities
- Reason Codes
- Recommended Actions

### Operational Effectiveness

- Alert Quality
- Fraud Detection Coverage
- Investigation Waste Exposure
- Missed Fraud Exposure
- Queue Risk Severity
- Active Investigation Queue

---

## Operational KPI Framework

The framework introduces operational fraud management KPIs beyond traditional model evaluation.

KPIs include:

- Alert Quality
- Fraud Detection Coverage
- Investigation Waste Exposure
- Missed Fraud Exposure
- Queue Hit Rate
- Average Triage Score
- Queue Risk Severity
- Active Investigation Queue

These metrics support investigator productivity, operational monitoring and fraud operations management.

---

## Governance & Explainability

The framework incorporates:

- Threshold Strategy Memo
- Operational Fraud Model Card
- SHAP Explainability
- Threshold Governance
- Human-in-the-Loop Decision Support
- Data Leakage Prevention
- Transaction-Level Reason Codes
- Recommended Actions

The model supports fraud investigators by providing explainable decision support rather than replacing analyst judgement.

---

## Key Results

### Fraud Rate by Risk Category

| Risk Category | Fraud Rate |
|---------------|-----------:|
| Low Risk | 2.41% |
| Medium Risk | 5.57% |
| High Risk | 12.02% |

The explainable prioritisation framework successfully concentrated fraud exposure into higher-priority investigation queues.

A balanced operating threshold provided the most practical trade-off between fraud detection capability and investigator workload.

### Key Fraud Insights

- P2P and Wire transactions exhibited the highest fraud exposure.
- Night-time transactions demonstrated elevated fraud risk.
- New-device activity significantly increased fraud likelihood.
- Fuel, Utilities and Gaming merchants showed the highest fraud concentrations.
- Behavioural indicators were more predictive than static customer attributes.

---

## Technologies Used

- Python
- Pandas
- NumPy
- Scikit-learn
- XGBoost
- SHAP
- Matplotlib
- Seaborn
- Power BI
- Git
- GitHub
- VS Code

---

## Repository Structure

```text
A_Project_Deliverables/
│
├── JP Morgan Project Brief
├── Business Report
├── Executive Presentation
├── Power BI Dashboard
└── Jupyter Notebook

B_Dataset/
│
├── raw/
├── processed/
└── metadata/

C_Supporting_Files/
│
├── reports/
├── Project_Framework/
└── sql/

D_Screenshots/
│
└── Dashboard screenshots

README.md
requirements.txt
```

---

## Future Enhancements

Potential future developments include:

- Real-time fraud scoring
- Model drift monitoring
- Continuous threshold optimisation
- Automated case management
- Enterprise Fraud Operations Control Tower
- Secure web deployment using Vercel

---

## Project Outcome

This project demonstrates how explainable machine learning, behavioural fraud analytics, operational KPIs, governance controls and interactive dashboards can be integrated into a practical fraud intelligence framework.

The solution extends beyond traditional fraud detection by incorporating alert prioritisation, investigator workflow support, explainable AI, operational monitoring and governance, providing a realistic simulation of modern fraud operations.
