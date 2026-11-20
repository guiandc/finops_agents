-- Heurística de palavras-chave para ACHAR candidatas a impacto de custo.
-- Isto NÃO é o classificador: é um baseline barato para comparar com o agente nos evals.
SELECT
  DATE(published_at) AS data,
  product_name,
  release_note_type,
  description
FROM `bigquery-public-data.google_cloud_release_notes.release_notes`
WHERE DATE(published_at) >= DATE '2024-01-01'
  AND REGEXP_CONTAINS(
    LOWER(description),
    r'pric|billing|charge|cost|free tier|no cost|deprecat|discontinu|end of life|shut ?down|sunset|quota|\bsku\b|discount'
  )
ORDER BY data DESC;
