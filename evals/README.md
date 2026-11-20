# Evals do Release Watcher

Conjunto rotulado à mão. É a medida de qualidade do agente e do prompt.

## Formato (`labeled_notes.csv`)

| coluna | valores |
|---|---|
| note_id | do `04_amostra_para_rotulagem.sql` |
| product_name, description | copiados da amostra |
| impacta_custo | `sim` / `nao` / `talvez` |
| tipo_impacto | `preco` / `deprecacao` / `novo_sku` / `fim_free_tier` / `quota` / `outro` / vazio |
| severidade | `alta` / `media` / `baixa` / vazio |
| justificativa | uma frase: por que você rotulou assim |

## Regras
- Escreva a justificativa. Os casos `talvez` são os mais valiosos: viram a definição da fronteira.
- Rotule ANTES de ver a saída do agente, para não ser influenciado.
- Não altere rótulos depois para "fazer o agente passar".
- Guarde parte (ex.: 20%) como conjunto de teste, sem ajustar o prompt olhando para ele.
