# Architecture

## Layers

- `project_core`: núcleo reutilizável
- `apps`: executáveis consumidores do core
- `tests`: validação automática
- `benchmarks`: medição experimental

## Goals

- separação clara entre API pública e implementação
- build reproduzível
- suporte a Linux e Windows