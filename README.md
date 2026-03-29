# VoiceBloom Showcase

VoiceBloom is a real-time voice training product focused on live feedback for pitch, resonance, vocal weight, and constriction exploration.

This repository is a public showcase for the product's visual language, app architecture, and analyzer boundary. It is meant for people who want a quick way to understand what VoiceBloom is building and how the experience is shaped on iOS.

## What You Can Explore Here

- the visual system behind the app
- chart and metric presentation patterns
- the app-to-analyzer interface at a public level
- the boundary between UI code and on-device ML
- demo-safe source files and fixtures

## Start Here

| If you want to see... | Open |
|---|---|
| Visual source samples | [Showcase/README.md](Showcase/README.md) |
| Analyzer interface | [docs/analyzer-contract.md](docs/analyzer-contract.md) |
| On-device ML boundary | [docs/coreml-boundary.md](docs/coreml-boundary.md) |
| Demo data | [Fixtures/sample-metrics.json](Fixtures/sample-metrics.json) |
| Repo scope | [docs/repository-scope.md](docs/repository-scope.md) |
| Publishing boundary | [docs/publishing-boundary.md](docs/publishing-boundary.md) |

## Current First Batch

| Area | Included now |
|---|---|
| Visuals | ambient background, chrome, color semantics |
| Charts | grid styling and chart modifiers |
| Docs | analyzer contract, architecture, on-device ML boundary |
| Fixtures | demo-safe mock metric data |
| Media | placeholders for screenshots and short clips |

## Why This Repo Exists

VoiceBloom is a product where trust matters. The app experience has to feel intentional, and the technical boundary has to feel credible. This repo exists to make that visible without turning the production system inside out.

## Repository Shape

```text
voicebloom-showcase/
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

## Key Docs

| Doc | Why it exists |
|---|---|
| [docs/repository-scope.md](docs/repository-scope.md) | keeps the repo intentionally narrow |
| [docs/publishing-boundary.md](docs/publishing-boundary.md) | defines what stays private |
| [docs/analyzer-contract.md](docs/analyzer-contract.md) | explains the analyzer interface safely |
| [docs/coreml-boundary.md](docs/coreml-boundary.md) | explains the runtime split without leaking implementation details |

## Current Status

This is a curated public layer, not a full product mirror.

Planned next:

- screenshots
- short demo clips
- a minimal public demo shell
