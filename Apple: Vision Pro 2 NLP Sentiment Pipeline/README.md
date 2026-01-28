# [Apple] Vision Pro 2: Product Sentiment & Theme Analysis (NLP)

## 🎯 Business Problem
As Apple prepares for the next iteration of its spatial computing headset, understanding early adopter feedback is critical. I developed an NLP pipeline to analyze Reddit discussions, identifying the "emotional pulse" of the community and the most frequent technical themes mentioned by users.

## 📊 Key Results
- **Sentiment Polarity:** Successfully categorized user feedback into Positive, Negative, and Neutral buckets using **VADER Sentiment Analysis**.
- **Thematic Discovery:** Identified through **Bigram Analysis** that "Battery Life" and "Micro-OLED Display" are the primary drivers of community conversation.
- **Actionable Insight:** The analysis highlights a clear trade-off: users are "stunned" by display quality but frustrated by the 2-hour battery constraint.

## 🛠️ Methodology
1. **NLP Pipeline:** Leveraged the NLTK library and VADER (Valence Aware Dictionary and sEntiment Reasoner) to handle social media slang and context.
2. **Text Mining:** Used `CountVectorizer` to perform N-gram analysis, extracting the top 2-word combinations to find recurring product themes.
3. **Data Visualization:** Created a distribution profile of the community's emotional response and a frequency chart for product themes.
4. **Impact:** Translated raw, unstructured text into a quantitative roadmap for the product engineering team.

## 📂 Visuals
- `sentiment_distribution.png`: Bar chart showing the volume of Positive vs. Negative feedback.
- `product_themes_bigrams.png`: A visualization of the most frequently discussed hardware features.
- `nlp_summary.txt`: A statistical summary of the sentiment scores.
