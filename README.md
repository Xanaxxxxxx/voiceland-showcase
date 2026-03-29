# VoiceBloom

> Public Showcase

![Platform: iPhone App](https://img.shields.io/badge/Platform-iPhone_App-0f172a?style=flat-square)
![Runtime: On-Device ML](https://img.shields.io/badge/Runtime-On--Device_ML-2563eb?style=flat-square)
![TestFlight: In Prep](https://img.shields.io/badge/TestFlight-In_Prep-f59e0b?style=flat-square)
![Android: Planned](https://img.shields.io/badge/Android-Planned-10b981?style=flat-square)
![License: All Rights Reserved](https://img.shields.io/badge/License-All_Rights_Reserved-dc2626?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/Xanaxxxxxx/voicebloom-showcase?style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/Xanaxxxxxx/voicebloom-showcase?style=flat-square)

VoiceBloom is a voice training product built around supportive live feedback, on-device analysis, and a calm, precise iPhone experience.

This repository is a public showcase for the product's visual language, app architecture, and analyzer boundary. It is meant for people who want a quick way to understand how VoiceBloom approaches voice practice, trust, and on-device runtime design on iOS.

## What You Can Explore Here

- the visual system behind the app
- chart and metric presentation patterns
- the app-to-analyzer interface at a public level
- the boundary between UI code and on-device ML
- demo-safe source files and fixtures

## Brand Lens

VoiceBloom is not positioned as a cold voice lab. The intended feel is:

- supportive rather than judgmental
- precise without becoming clinical
- expressive without losing technical credibility

## Availability

- iPhone app in active development
- Internal TestFlight distribution is being prepared
- Android app is planned and under consideration as part of the broader product roadmap

## Related Links

- [VoiceBloom main repository](https://github.com/Xanaxxxxxx/VoiceBloom)
- [VoiceBloom Showcase](https://github.com/Xanaxxxxxx/voicebloom-showcase)

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
