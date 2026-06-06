-- ============================================================
-- JP Morgan Data Analytics Internship Project
-- Explainable Multi-Entity Fraud Intelligence Framework
-- SQL Validation Queries
-- Prepared by: Karthik Kumar Kuthuru
-- ============================================================

-- Purpose:
-- These SQL queries reproduce key fraud intelligence checks used
-- in the Python notebook and Power BI dashboard.
-- They validate fraud KPIs, relationship integrity, channel risk,
-- merchant risk, device behavior, and transaction timing patterns.


-- 1. Overall fraud rate
SELECT
    COUNT(*) AS total_transactions,
    SUM(fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions;


-- 2. Fraud rate by transaction channel
SELECT
    channel,
    COUNT(*) AS transaction_count,
    SUM(fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions
GROUP BY channel
ORDER BY fraud_rate_pct DESC;


-- 3. Fraud rate by night-time transaction flag
SELECT
    is_night_flag,
    COUNT(*) AS transaction_count,
    SUM(fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions
GROUP BY is_night_flag
ORDER BY is_night_flag;


-- 4. Fraud rate by new device activity
SELECT
    new_device_flag,
    COUNT(*) AS transaction_count,
    SUM(fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions
GROUP BY new_device_flag
ORDER BY new_device_flag;


-- 5. Fraud rate by merchant category
SELECT
    m.merchant_category,
    COUNT(*) AS transaction_count,
    SUM(t.fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(t.fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions t
LEFT JOIN merchants m
    ON t.merchant_id = m.merchant_id
GROUP BY m.merchant_category
ORDER BY fraud_rate_pct DESC;


-- 6. Customer relationship integrity check
SELECT
    CASE
        WHEN c.customer_id IS NULL THEN 'Missing Customer Record'
        ELSE 'Matched Customer Record'
    END AS customer_match_status,
    COUNT(*) AS transaction_count,
    SUM(t.fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(t.fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions t
LEFT JOIN customers c
    ON t.customer_id = c.customer_id
GROUP BY
    CASE
        WHEN c.customer_id IS NULL THEN 'Missing Customer Record'
        ELSE 'Matched Customer Record'
    END;


-- 7. Merchant relationship integrity check
SELECT
    CASE
        WHEN m.merchant_id IS NULL THEN 'Missing Merchant Record'
        ELSE 'Matched Merchant Record'
    END AS merchant_match_status,
    COUNT(*) AS transaction_count,
    SUM(t.fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(t.fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions t
LEFT JOIN merchants m
    ON t.merchant_id = m.merchant_id
GROUP BY
    CASE
        WHEN m.merchant_id IS NULL THEN 'Missing Merchant Record'
        ELSE 'Matched Merchant Record'
    END;


-- 8. Customer segment fraud rate
SELECT
    c.segment,
    COUNT(*) AS transaction_count,
    SUM(t.fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(t.fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions t
LEFT JOIN customers c
    ON t.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY fraud_rate_pct DESC;


-- 9. KYC risk band fraud rate
SELECT
    c.kyc_risk_band,
    COUNT(*) AS transaction_count,
    SUM(t.fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(t.fraud_label) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions t
LEFT JOIN customers c
    ON t.customer_id = c.customer_id
GROUP BY c.kyc_risk_band
ORDER BY fraud_rate_pct DESC;


-- 10. Multi-entity enriched transaction view
SELECT
    t.transaction_id,
    t.event_ts,
    t.customer_id,
    t.merchant_id,
    t.channel,
    t.transaction_amount_usd,
    t.txn_country,
    t.device_risk_score,
    t.new_device_flag,
    t.velocity_1h,
    t.velocity_24h,
    t.geo_distance_km,
    t.is_night_flag,
    t.alert_generated,
    t.fraud_label,
    c.segment,
    c.home_country,
    c.kyc_risk_band,
    c.synthetic_identity_score,
    m.merchant_category,
    m.merchant_risk_score
FROM transactions t
LEFT JOIN customers c
    ON t.customer_id = c.customer_id
LEFT JOIN merchants m
    ON t.merchant_id = m.merchant_id;


-- 11. High-risk operational channel and merchant view
SELECT
    t.channel,
    m.merchant_category,
    COUNT(*) AS transaction_count,
    SUM(t.fraud_label) AS fraud_cases,
    ROUND(100.0 * SUM(t.fraud_label) / COUNT(*), 2) AS fraud_rate_pct,
    AVG(t.device_risk_score) AS avg_device_risk_score,
    AVG(m.merchant_risk_score) AS avg_merchant_risk_score,
    AVG(t.geo_distance_km) AS avg_geo_distance_km
FROM transactions t
LEFT JOIN merchants m
    ON t.merchant_id = m.merchant_id
GROUP BY
    t.channel,
    m.merchant_category
ORDER BY fraud_rate_pct DESC;