-- Amostra reprodutível para rotular à mão (metade candidatas, metade aleatórias).
-- A metade "sem palavra-chave" é essencial: revela o que a heurística deixa passar.
WITH base AS (
  SELECT
    FARM_FINGERPRINT(CONCAT(product_name, CAST(published_at AS STRING), description)) AS note_id,
    DATE(published_at) AS data,
    product_name,
    release_note_type,
    description,
    REGEXP_CONTAINS(
      LOWER(description),
      r'pric|billing|charge|cost|free tier|no cost|deprecat|discontinu|end of life|shut ?down|sunset|quota|\bsku\b|discount'
    ) AS tem_palavra_chave
  FROM `bigquery-public-data.google_cloud_release_notes.release_notes`
  WHERE DATE(published_at) >= DATE '2024-01-01'
),
com AS (SELECT * FROM base WHERE tem_palavra_chave ORDER BY note_id LIMIT 30),
sem AS (SELECT * FROM base WHERE NOT tem_palavra_chave ORDER BY note_id LIMIT 30)
SELECT * FROM com
UNION ALL
SELECT * FROM sem;
