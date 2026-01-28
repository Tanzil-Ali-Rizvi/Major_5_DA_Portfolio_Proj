-- Query to extract watch time data for Experiment (Netflix Preview Length)
SELECT 
    user_id,
    test_group AS group,
    SUM(watch_time_minutes) AS watch_time
FROM 
    content_engagement_logs
WHERE 
    experiment_id = 'EXP_PREVIEW_2026'
    AND event_date BETWEEN '2026-01-01' AND '2026-01-21'
GROUP BY 
    1, 2;