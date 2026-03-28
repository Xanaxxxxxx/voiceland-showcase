# Public Boundary

## Decision Table

| Status | What belongs here | Why |
|---|---|---|
| Publish directly | background chrome, chart helpers, palette tokens, fixtures, contract docs | high signal, low moat risk |
| Publish after adaptation | navigation shell examples, on-device ML boundary docs, simplified analyzer diagrams | useful, but must be de-coupled from shipping code |
| Keep private | analyzer runtime, model weights, training data, subscription/auth/backend code | these materially protect the product moat |

## Rules

1. Public code should be understandable without private dependencies.
2. Public examples should be fixture-driven, not production-runtime driven.
3. Public docs can explain boundaries and data flow, but not enough to reconstruct the analyzer.
