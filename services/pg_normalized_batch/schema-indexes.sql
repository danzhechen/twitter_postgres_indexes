CREATE INDEX idx_tweets_id_tweets ON tweets (id_tweets);
CREATE INDEX idx_tweet_tags_id_tweets ON tweet_tags (id_tweets);
CREATE INDEX idx_tweets_lang ON tweets (lang);
CREATE INDEX idx_tweet_tags_tag ON tweet_tags (tag);
CREATE INDEX idx_tweets_text_gin ON tweets USING GIN (to_tsvector('english', text));
