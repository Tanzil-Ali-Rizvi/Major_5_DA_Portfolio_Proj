-- Query to aggregate weekly spend and revenue for MMM analysis
-- Context: Preparing raw marketing logs for ROI regression
SELECT 
    DATE_TRUNC('week', ad.event_date) AS reporting_week,
    SUM(CASE WHEN ad.channel = 'TikTok' THEN ad.spend ELSE 0 END) AS tiktok_total_spend,
    SUM(CASE WHEN ad.channel = 'Google' THEN ad.spend ELSE 0 END) AS google_total_spend,
    SUM(CASE WHEN ad.channel = 'Podcast' THEN ad.spend ELSE 0 END) AS podcast_total_spend,
    SUM(rev.transaction_amount) AS total_revenue
FROM 
    marketing_ads ad
LEFT JOIN 
    transactions rev ON DATE_TRUNC('day', ad.event_date) = DATE_TRUNC('day', rev.created_at)
WHERE 
    ad.event_date >= '2024-01-01'
GROUP BY 
    1
ORDER BY 
    1 ASC;
