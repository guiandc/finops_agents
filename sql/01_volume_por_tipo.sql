-- Volume de notas por ano e tipo. Ajuste nomes de colunas conforme 00_schema.sql.
SELECT
  EXTRACT(YEAR FROM DATE(published_at)) AS ano,
  release_note_type,
  COUNT(*) AS qtd
FROM `bigquery-public-data.google_cloud_release_notes.release_notes`
GROUP BY ano, release_note_type
ORDER BY ano DESC, qtd DESC;
