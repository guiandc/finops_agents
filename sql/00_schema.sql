-- 1) Descubra o schema real ANTES de assumir nomes de colunas.
SELECT column_name, data_type
FROM `bigquery-public-data.google_cloud_release_notes.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'release_notes'
ORDER BY ordinal_position;
