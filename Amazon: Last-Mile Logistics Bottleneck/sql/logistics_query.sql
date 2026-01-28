-- Query to extract delivery performance and recovery costs by hub
-- Context: Analyzing JFK8 bottleneck vs. other regional hubs
SELECT 
    h.hub_name,
    COUNT(o.order_id) AS total_orders,
    AVG(o.actual_hours - o.planned_hours) AS avg_delay_hours,
    SUM(CASE 
        WHEN o.priority = 'Standard' THEN (o.actual_hours - o.planned_hours) * 15
        ELSE (o.actual_hours - o.planned_hours) * 25 
    END) AS total_recovery_cost
FROM 
    orders o
JOIN 
    hubs h ON o.hub_id = h.id
WHERE 
    o.delivery_date >= '2026-01-01'
GROUP BY 
    1
ORDER BY 
    total_recovery_cost DESC;