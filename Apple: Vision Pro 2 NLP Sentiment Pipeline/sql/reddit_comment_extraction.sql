-- Extracting Reddit Comments for Sentiment Analysis
-- Filtering for specific product keywords to reduce noise
SELECT 
    comment_id,
    author,
    created_utc,
    body AS comment_text,
    subreddit,
    score AS upvotes
FROM 
    social_media_raw.reddit_comments
WHERE 
    (body ILIKE '%Vision Pro%' OR body ILIKE '%Apple Headset%')
    AND created_utc >= '2025-01-01'
    AND subreddit IN ('apple', 'technology', 'VisionPro')
-- Focus on highly engaged comments for better quality sentiment signals
ORDER BY 
    upvotes DESC
LIMIT 10000;