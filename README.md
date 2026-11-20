# finops-agents

Agentes de FinOps para GCP. Primeiro entregável: **Release Watcher** (monitora release notes
do GCP e identifica o que pode impactar custo).

## Setup

```bash
python -m venv .venv && source .venv/bin/activate
pip install -e ".[dev]"
cp .env.example .env        # preencha o projeto sandbox
gcloud auth application-default login
```

## Rodar uma query de exploração (com teto de custo)

```bash
bq query --use_legacy_sql=false --maximum_bytes_billed=1000000000 < sql/00_schema.sql
```

## Fase 0: checklist
- [ ] Repositório criado e primeiro commit
- [ ] Projeto GCP sandbox pessoal, billing com orçamento e alerta
- [ ] `00_schema.sql` rodada; schema anotado
- [ ] Queries 01 a 03 exploradas
- [ ] 50 a 60 notas rotuladas em `evals/labeled_notes.csv`
