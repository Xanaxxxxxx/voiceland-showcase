# Voiceland Showcase

Public-facing showcase repository for Voiceland.

This repo is a curated product and engineering window for users, collaborators, designers, and iOS engineers. It is **not** the production app repository.

## What Voiceland Is

Voiceland is a real-time voice training product focused on live feedback for pitch, resonance, vocal weight, and constriction exploration.

This repository exists to show:

- the product direction
- the visual language
- the engineering boundary around the analyzer
- the quality bar for the iOS experience

It does **not** contain the full shipping app or the private analyzer implementation.

## Start Here

| If you want to see... | Open |
|---|---|
| public repo scope | [docs/repository-scope.md](docs/repository-scope.md) |
| public/private boundary | [docs/public-boundary.md](docs/public-boundary.md) |
| analyzer interface | [docs/analyzer-contract.md](docs/analyzer-contract.md) |
| on-device ML boundary | [docs/coreml-boundary.md](docs/coreml-boundary.md) |
| visual source samples | [Showcase/README.md](Showcase/README.md) |
| mock demo data | [Fixtures/sample-metrics.json](Fixtures/sample-metrics.json) |

## Purpose

| Area | What this repo should show |
|---|---|
| Product | What Voiceland is and why real-time voice training matters |
| Design | Background language, chart chrome, metric color semantics |
| Architecture | Clear app-to-analyzer boundaries without exposing the moat |
| Analyzer contract | Request/response shape and fixture-driven examples |
| Engineering taste | Small, clean SwiftUI examples and disciplined documentation |

## Public vs Private

| Public | Private |
|---|---|
| Visual system primitives | Full shipping app source |
| Chart styling helpers | Private model assets |
| Demo-safe analyzer contract docs | Training code, datasets, and experiments |
| Mock fixtures and screenshots | Production analyzer runtime internals |
| Simplified architecture notes | Billing, auth, backend, and internal ops |

## Current First Batch

| Included now | Why |
|---|---|
| `Showcase/Sources/Visuals` | Distinctive, low-risk visual language |
| `Showcase/Sources/Charts` | Shows product taste without exposing business logic |
| `Showcase/Sources/Tokens` | Encodes metric semantics clearly |
| `Fixtures` | Makes the analyzer boundary concrete |
| `docs` | Explains scope, public boundaries, analyzer contract, and on-device ML boundary |
| `Media` | Reserved for screenshots and short demo clips |

## Suggested Structure

```text
voiceland-showcase/
├── README.md
├── LICENSE
├── Media/
├── docs/
├── Fixtures/
└── Showcase/
    ├── README.md
    └── Sources/
        ├── Charts/
        ├── Tokens/
        └── Visuals/
```

## Publishing Rule

If a file helps someone understand Voiceland's product quality or engineering discipline **without materially helping them replicate the core analyzer**, it belongs here.

## Key Docs

| Doc | Why it exists |
|---|---|
| [docs/repository-scope.md](docs/repository-scope.md) | keeps the repo intentionally narrow |
| [docs/public-boundary.md](docs/public-boundary.md) | defines what stays private |
| [docs/analyzer-contract.md](docs/analyzer-contract.md) | explains the analyzer interface safely |
| [docs/coreml-boundary.md](docs/coreml-boundary.md) | explains the runtime split without leaking implementation details |

## Repo Status

This is a curated public layer, not a full product mirror.

Current focus:

- visual primitives
- chart styling
- analyzer contract documentation
- on-device ML boundary documentation
- fixture-driven examples

Planned additions:

- screenshots
- short demo clips
- a minimal public demo shell
