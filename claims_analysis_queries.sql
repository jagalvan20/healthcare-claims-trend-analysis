-- Count total claims
SELECT COUNT(*) AS total_claims
FROM claims;

-- Denials by category
SELECT denial_reason, COUNT(*) AS denial_count
FROM claims
GROUP BY denial_reason
ORDER BY denial_count DESC;

-- Aging distribution
SELECT aging_bucket, COUNT(*) AS total_accounts
FROM claims
GROUP BY aging_bucket;
