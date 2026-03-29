# Architecture

## Product Runtime

Voiceland on iOS currently follows this runtime boundary:

```text
Mic input
-> app-side request shaping
-> on-device preprocessing
-> on-device ML encoder
-> metric mapping
-> observable session state
-> SwiftUI rendering
```

## Publicly Explainable Layers

| Layer | Safe to explain publicly |
|---|---|
| SwiftUI state architecture | Yes |
| visual component system | Yes |
| on-device ML boundary | Yes |
| analyzer request/response contract | Yes |
| full private analyzer implementation | No |

## Public Docs In This Repo

| Document | Purpose |
|---|---|
| [repository-scope.md](repository-scope.md) | defines what belongs in the public repo |
| [publishing-boundary.md](publishing-boundary.md) | defines safe vs private areas |
| [analyzer-contract.md](analyzer-contract.md) | explains the public analyzer interface |
| [coreml-boundary.md](coreml-boundary.md) | explains where on-device ML sits in the runtime |

## Public Repo Positioning

This repository should explain the architecture boundary, not expose every implementation detail behind it.
