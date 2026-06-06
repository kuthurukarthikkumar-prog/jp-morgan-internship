# Explainable Fraud Alert Prioritization & Investigation Intelligence Platform

**Author:** Karthik Kumar Kuthuru  
**Project:** JP Morgan Data Analytics Internship Project  
**Repository:** JP Morgan Internship Repository  

---

## Project Overview

This project focuses on building an explainable fraud-alert prioritization framework designed to support operational fraud investigation workflows, investigator decision-making, and fraud risk monitoring.

The solution combines:

- Fraud analytics and machine learning
- Behavioral feature engineering
- Explainable fraud prioritization
- Operational fraud intelligence dashboards
- Investigator workflow simulation
- SQL validation queries
- Governance and monitoring considerations

The project was developed as part of the JP Morgan Fraud Analytics Internship Program through NextLeap using Python, Scikit-learn, XGBoost, Power BI, SQL, and GitHub.

---

## Business Problem

Fraud operations teams face increasing alert volumes, evolving fraud patterns, synthetic identity risks, and limited investigation capacity.

Traditional fraud systems often focus only on prediction accuracy without fully addressing:

- Operational prioritization
- Investigator workflows
- Explainability
- Queue management
- Threshold strategy
- Fraud governance

This project simulates a modern fraud intelligence workflow that balances:

- Fraud detection
- Operational scalability
- Explainability
- Investigator efficiency
- Human-in-the-loop decision support

---

## Project Objectives

The primary objectives of this project were to:

- Build an explainable fraud detection and prioritization framework
- Engineer operational fraud intelligence features
- Prioritize investigator review queues
- Simulate fraud investigation workflows
- Develop operational Power BI dashboards
- Integrate explainable ML concepts into fraud analytics
- Implement threshold-based alert prioritization
- Add SQL validation queries for fraud KPI and relationship checks
- Improve fraud transparency, governance, and operational storytelling

---

## Tech Stack

| Component | Technology |
|---|---|
| Programming Language | Python |
| Notebook Environment | Jupyter Notebook / VS Code |
| Data Analysis | pandas, NumPy |
| Machine Learning | Scikit-learn, XGBoost |
| Explainability | SHAP |
| Visualization | Matplotlib, Seaborn |
| Dashboarding | Power BI |
| SQL Validation | SQL |
| Version Control | Git & GitHub |

---

## Dataset Overview

The project used transaction-level fraud intelligence datasets containing:

- Transaction attributes
- Merchant category information
- Customer segmentation data
- KYC risk indicators
- Synthetic identity indicators
- Device familiarity indicators
- Transaction channel information
- Fraud labels

The dataset demonstrated class imbalance, which is common in fraud analytics environments where fraudulent activity represents a small percentage of total transaction volume.

---

## Fraud Intelligence Features

The project engineered several behavioral, operational, and risk-based fraud indicators.

### Behavioral Features

- Device familiarity analysis
- Transaction timing analysis
- Customer segmentation logic
- Merchant category concentration
- Transaction velocity indicators
- Geographic distance indicators

### Risk Features

- Device risk score
- Merchant risk score
- KYC risk bands
- Synthetic identity risk scores
- Operational risk prioritization tiers

### Operational Features

- Transaction channel exposure
- Investigator queue prioritization
- High-risk alert segmentation
- Low / Medium / High risk categories
- Threshold-based alert prioritization

---

## SQL Validation Queries

SQL validation queries are included under:

```text
C_Supporting_Files/sql/fraud_analysis_queries.sql
```

These queries reproduce key fraud intelligence checks used in the Python notebook and Power BI dashboard.

The SQL queries cover:

- Overall fraud rate calculation
- Fraud rate by transaction channel
- Fraud rate by night-time transactions
- Fraud rate by new-device activity
- Fraud rate by merchant category
- Customer and merchant relationship integrity checks
- Customer segment fraud analysis
- KYC risk band fraud analysis
- Multi-entity transaction enrichment using joins

These queries provide an auditable SQL validation layer for the fraud KPIs, relationship checks, and aggregation logic used throughout the project.

---

## Modeling Workflow

### Baseline Logistic Regression Model

A Scikit-learn pipeline-based Logistic Regression workflow was implemented for:

- Preprocessing
- Missing value handling
- Feature preparation
- Encoding
- Fraud classification
- Baseline model evaluation

The Logistic Regression model served as a baseline fraud detection model and demonstrated stronger fraud discrimination and recall on this dataset.

### XGBoost Fraud Classification

An XGBoost model was implemented for advanced fraud classification and operational fraud prioritization.

XGBoost was used because it can:

- Capture non-linear fraud patterns
- Support complex feature interactions
- Handle structured tabular data effectively
- Support model explainability through SHAP

The model supported:

- Fraud probability scoring
- Operational alert prioritization
- SHAP-based explainability
- Governance and model monitoring discussion

---

## Model Evaluation

Two machine learning models were evaluated:

| Model | ROC-AUC | Key Strength |
|---|---:|---|
| Logistic Regression | 0.644 | Stronger fraud discrimination and recall |
| XGBoost | 0.563 | Lower false positives and SHAP explainability support |

The project highlights that more complex models do not always outperform simpler baseline models, especially when working with smaller fraud datasets and limited fraud samples.

Model performance was interpreted through an operational fraud lens rather than accuracy alone. Fraud detection requires balancing:

- Recall
- Precision
- False positives
- Investigation workload
- Queue efficiency
- Threshold strategy

---

## Threshold Strategy

Fraud detection systems must balance fraud recall with operational investigation capacity.

Lower thresholds increase fraud capture but also increase false positives and investigator workload. Higher thresholds reduce investigation volume but may increase missed fraud exposure.

This project includes a standalone Threshold Strategy Memo under:

```text
C_Supporting_Files/reports/Threshold_Strategy_Memo.docx
```

The memo explains:

- Default threshold evaluation
- Lower threshold trade-offs
- Alert volume implications
- Recall versus precision trade-offs
- Investigation queue impact
- Governance and monitoring considerations

The recommended approach is explainable risk-based prioritization supported by continuous threshold monitoring, KPI review, and investigator feedback.

---

## Explainability Framework

The project emphasized explainability through:

- Feature importance analysis
- Confusion matrix interpretation
- SHAP analysis
- Operational risk segmentation
- Investigator-facing dashboard workflows
- Model governance documentation

SHAP-based explainability was implemented for the XGBoost model to identify the strongest drivers behind fraud prioritization decisions.

The SHAP analysis highlighted important model drivers such as:

- Geographic distance
- Transaction amount
- Merchant risk score
- Device risk score
- Velocity indicators
- P2P channel behavior

The operational alert flag `alert_generated` was excluded from model training to reduce leakage risk and improve model governance.

The explainability layer helps fraud analysts understand:

- Why alerts are prioritized
- Which behavioral indicators influence fraud predictions
- How model features contribute to fraud-risk scoring
- How operational thresholds affect investigation workflows

---

## Power BI Dashboard Architecture

The project includes a multi-page operational fraud intelligence dashboard designed to simulate investigator-facing fraud operations.

### 1. Executive Overview

**Purpose:**

- Executive fraud monitoring
- KPI tracking
- Operational fraud summary

**Includes:**

- Total transactions
- Fraud cases
- Fraud rate %
- High-risk alerts
- Fraud rate by risk category

### 2. Operational Fraud Analysis

**Purpose:**

- Transaction-level operational fraud analysis
- Fraud pattern identification

**Includes:**

- Fraud rate by transaction channel
- Merchant category analysis
- Device familiarity analysis
- Transaction timing analysis

### 3. Customer & Behavioral Intelligence

**Purpose:**

- Behavioral fraud segmentation
- Customer intelligence analysis

**Includes:**

- Fraud rate by customer segment
- KYC risk analysis
- Synthetic identity risk analysis
- Customer type analysis

### 4. Explainable Fraud Prioritization

**Purpose:**

- Explainable fraud triage
- Operational prioritization workflows

**Includes:**

- Fraud distribution by risk priority
- High-risk escalation KPI
- Device familiarity prioritization
- Transaction timing prioritization
- Risk category slicers

### 5. Fraud Investigation Deep Dive

**Purpose:**

- Investigator workflow simulation
- Fraud queue management

**Includes:**

- Merchant concentration treemap
- Investigation queue table
- Fraud investigation slicers
- Conditional risk formatting

---

## Key Fraud Insights

The project identified several operational fraud intelligence patterns:

- P2P transactions recorded the highest fraud rate among channels.
- Wire transactions showed elevated fraud exposure.
- Night-time transactions demonstrated higher fraud risk than daytime activity.
- New-device transactions showed increased fraud exposure compared with existing-device activity.
- Fuel, Utilities, and Gaming merchants demonstrated higher fraud concentrations.
- High-risk transactions showed materially higher fraud rates than low-risk transactions.
- Fraud activity was driven primarily by behavioral and transactional patterns rather than customer demographics alone.

---

## Explainable Risk Prioritization Framework

An explainable risk scoring framework was developed using behavioral and transactional fraud indicators.

The risk framework incorporated:

- Device risk
- Merchant risk
- Transaction velocity
- New-device activity
- Night-time behavior
- Geographic anomalies
- High-risk transaction channels

Transactions were categorized into:

- Low Risk
- Medium Risk
- High Risk

The framework demonstrated clear fraud separation:

| Risk Category | Fraud Rate |
|---|---:|
| Low Risk | ~2.4% |
| Medium Risk | ~5.6% |
| High Risk | ~12.0% |

This demonstrates that the explainable risk framework successfully prioritizes elevated-risk transactions and supports investigator triage.

---

## Governance & Monitoring Considerations

The project includes governance and monitoring considerations to support responsible fraud analytics.

Governance concepts covered include:

- Fraud threshold interpretation
- False positive trade-offs
- Investigator workload balancing
- Explainability requirements
- Human-in-the-loop review
- Model drift considerations
- Threshold recalibration
- Investigator feedback loops
- Operational monitoring requirements

The project includes an Operational Fraud Model Card and a Threshold Strategy Memo. These documents outline intended model use, operational limitations, monitoring considerations, threshold trade-offs, and human review requirements.

The framework was designed to support fraud analysts rather than replace operational decision-making.

---

## Business Recommendations

Recommended operational actions include:

- Use risk-tier prioritization to focus investigator attention on high-risk transactions.
- Monitor fraud recall, precision, false positive rate, queue hit rate, and alert volume.
- Recalibrate thresholds periodically based on investigator capacity and fraud trends.
- Maintain human analyst review for complex fraud cases.
- Use explainability outputs to improve investigator trust and transparency.
- Monitor model drift and fraud behavior changes over time.
- Extend the framework into a deployable fraud scoring prototype in future iterations.

---

## Repository Structure

```text
/project-root
│
├── B_Dataset/
│   ├── raw/
│   │   ├── transactions.csv
│   │   ├── customers.csv
│   │   └── merchants.csv
│   │
│   ├── processed/
│   │   └── fraud_intelligence_dataset.csv
│   │
│   └── metadata/
│
├── C_Supporting_Files/
│   ├── notebooks/
│   │   └── jp_morgan_fraud_intelligence_Analysis.ipynb
│   │
│   ├── reports/
│   │   └── Threshold_Strategy_Memo.docx
│   │
│   ├── sql/
│   │   └── fraud_analysis_queries.sql
│   │
│   ├── guidance/
│   │
│   └── screenshots/
│
├── Dashboards/
│   └── fraud_intelligence_dashboard.pbix
│
└── README.md
```

---

## How to Run the Project

1. Clone the repository.
2. Open the notebook in VS Code or Jupyter Notebook.
3. Ensure required Python libraries are installed.
4. Run the notebook cells sequentially.
5. Open the Power BI `.pbix` file from the `Dashboards` folder.
6. Review the SQL validation queries in `C_Supporting_Files/sql`.
7. Review the Threshold Strategy Memo in `C_Supporting_Files/reports`.

---

## Future Improvements

Potential future enhancements include:

- Real-time fraud scoring deployment through Streamlit or API integration
- Fraud drift monitoring
- Analyst productivity metrics
- SLA tracking dashboards
- Advanced threshold optimization
- Production deployment architecture
- Automated feedback loop from investigator decisions
- Integration with live case management systems

---

## Final Conclusion

This project demonstrates how fraud analytics, explainable machine learning, SQL validation, governance documentation, and operational dashboards can be integrated into a modern fraud investigation workflow.

The solution emphasizes:

- Explainability
- Investigator prioritization
- Operational fraud intelligence
- Behavioral analytics
- Threshold strategy
- Governance and monitoring
- Scalable fraud operations

By combining machine learning workflows with Power BI dashboards and investigator-facing analytics, the project simulates a practical fraud intelligence environment focused on operational transparency, decision support, and risk-based fraud investigation.