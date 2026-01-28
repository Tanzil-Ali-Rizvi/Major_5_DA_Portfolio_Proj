-- Query to build the ML Feature Set for Churn Prediction
-- Combines demographic data with behavioral aggregates
SELECT 
    u.user_id,
    u.tenure_months,
    u.monthly_charges,
    u.contract_type,
    -- Aggregating usage from a separate activity log
    COALESCE(SUM(a.hours_watched), 0) AS total_hours_watched,
    -- Counting support tickets from a ticketing table
    COUNT(DISTINCT t.ticket_id) AS customer_support_calls,
    -- Our Target Variable (1 if they canceled in the last 30 days)
    CASE WHEN u.status = 'Canceled' THEN 1 ELSE 0 END AS is_churned
FROM 
    users u
LEFT JOIN 
    user_activity_logs a ON u.user_id = a.user_id
LEFT JOIN 
    support_tickets t ON u.user_id = t.user_id
WHERE 
    u.signup_date <= CURRENT_DATE - INTERVAL '6 months'
GROUP BY 
    1, 2, 3, 4, 7;