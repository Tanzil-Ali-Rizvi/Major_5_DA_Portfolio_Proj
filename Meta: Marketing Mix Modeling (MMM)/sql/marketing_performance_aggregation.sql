-- Weekly Aggregation of Marketing Spend and Revenue
-- Purpose: Prepare data for ROI Regression Analysis
SELECT 
    DATE_TRUNC('week', spend.date) AS report_week,
    SUM(CASE WHEN spend.platform = 'TikTok' THEN spend.cost ELSE 0 END) AS tiktok_spend,
    SUM(CASE WHEN spend.platform = 'Google' THEN spend.cost ELSE 0 END) AS google_spend,
    SUM(CASE WHEN spend.platform = 'Podcast' THEN spend.cost ELSE 0 END) AS podcast_spend,
    SUM(sales.revenue) AS total_sales
FROM 
    marketing_spend_table spend
LEFT JOIN 
    sales_transactions sales ON DATE_TRUNC('day', spend.date) = DATE_TRUNC('day', sales.created_at)
WHERE 
    spend.date >= '2024-01-01'
GROUP BY 
    1
ORDER BY 
    1;