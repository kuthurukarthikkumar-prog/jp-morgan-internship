-- Example feature view for fraud triage
SELECT t.transaction_id, t.customer_id, t.transaction_amount_usd,
       t.velocity_1h, t.velocity_24h, t.device_risk_score,
       c.synthetic_identity_score, m.merchant_risk_score,
       t.alert_generated, t.fraud_label
FROM transactions t
LEFT JOIN customers c ON t.customer_id = c.customer_id
LEFT JOIN merchants m ON t.merchant_id = m.merchant_id;
