-- Quanto volume o agente terá de processar por dia? Leia algumas notas na mão.
SELECT
  DATE(published_at) AS data,
  product_name,
  release_note_type,
  description
FROM `bigquery-public-data.google_cloud_release_notes.release_notes`
WHERE DATE(published_at) >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
ORDER BY data DESC, product_name;
