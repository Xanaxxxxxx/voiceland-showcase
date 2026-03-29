# Voiceland

> Public Showcase

![Platform: iOS 26+](https://img.shields.io/badge/Platform-iOS%2026%2B-111827?style=flat-square)
![Swift: 5.9](https://img.shields.io/badge/Swift-5.9-f97316?style=flat-square)
![Runtime: Core ML](https://img.shields.io/badge/Runtime-Core_ML-2563eb?style=flat-square)
![License: Proprietary](https://img.shields.io/badge/License-Proprietary-dc2626?style=flat-square)

Voiceland is an on-device voice training app for pitch, resonance, vocal weight, and voice exploration.

A calm, supportive iPhone experience for people shaping a voice that feels like their own.

This repository is the public-facing layer for Voiceland's visual language, analyzer boundary, and selected demo-safe source files.

## Status

| Area | Status |
|---|---|
| iPhone app | Active development |
| TestFlight | In preparation |
| Android | Planned |
| Public repo scope | Curated showcase, not full product mirror |

## Start Here

| If you want to see... | Open |
|---|---|
| Visual source samples | [Showcase/README.md](Showcase/README.md) |
| Analyzer interface | [docs/analyzer-contract.md](docs/analyzer-contract.md) |
| On-device ML boundary | [docs/coreml-boundary.md](docs/coreml-boundary.md) |
| Demo data | [Fixtures/sample-metrics.json](Fixtures/sample-metrics.json) |
| Publishing boundary | [docs/publishing-boundary.md](docs/publishing-boundary.md) |
| Repo scope | [docs/repository-scope.md](docs/repository-scope.md) |

## Brand Lens

Voiceland is not intended to feel like a cold voice lab.

- supportive rather than judgmental
- precise without becoming clinical
- expressive without losing technical credibility

## What's Included

| Area | Included now |
|---|---|
| Visuals | ambient background, chrome, color semantics |
| Charts | grid styling and chart modifiers |
| Docs | analyzer contract, architecture, on-device ML boundary |
| Fixtures | demo-safe mock metric data |
| Media | placeholders for screenshots and short clips |

## Related Links

- [Voiceland main repository](https://github.com/Xanaxxxxxx/Voiceland)
- [Voiceland Showcase](https://github.com/Xanaxxxxxx/voiceland-showcase)

## Repository Shape

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

## Why This Repo Exists

Voiceland is a product where trust matters. This repo exists to show product taste and engineering boundaries without exposing the private runtime, model artifacts, or training assets.
