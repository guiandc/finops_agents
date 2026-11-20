# Decisões de arquitetura

## 001: Determinístico em código, LLM só onde há interpretação
Consultas, contagens e comparações são SQL/código. O LLM classifica, prioriza e redige.
Números nunca vêm do modelo.

## 002: Desenvolvimento só com dados públicos/sintéticos no repositório pessoal
Nenhum dado de billing, nome de projeto ou estrutura da empresa neste repositório.
Migração para o GitLab da empresa só depois, apontando para os dados reais.

## 003: Python + Google ADK (a confirmar)
Escolha inicial por afinidade com GCP e suporte a sub-agentes. Revisitar se atrapalhar.

## 004: Um agente antes de vários
Dividir em sub-agentes só quando houver dor concreta (contexto, custo ou qualidade).

## 005: Evals antes de funcionalidades
Conjunto rotulado em `evals/` nasce antes do primeiro agente.
