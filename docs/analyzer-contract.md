# Analyzer Contract

This document describes the **public interface** between the VoiceBloom app layer and the analyzer layer.

It is intentionally contract-focused. It explains what the app sends, what it gets back, and what guarantees the UI can rely on. It does **not** document the private implementation behind those results.

## Public Contract Summary

| Topic | Publicly explained |
|---|---|
| Audio enters as app-shaped input | Yes |
| The analyzer consumes normalized app-side chunks | Yes |
| The analyzer emits aligned metric series | Yes |
| Invalid or masked frames can be nullable | Yes |
| Internal feature extraction details | No |
| Model architecture and training details | No |

## Request Responsibilities

The app-side runtime is responsible for:

- microphone capture
- shaping audio into the analyzer's expected input format
- maintaining stream lifecycle for a live session
- deciding which product-facing metrics it wants to surface

## Response Responsibilities

The analyzer-side contract is responsible for returning:

- whether a stream emission occurred
- frame-aligned metric series
- nullable values when a frame should not be surfaced as trustworthy
- lightweight diagnostic metadata suitable for UI decisions

## Product-Facing Metrics

The public contract can safely talk about high-level metrics such as:

- pitch
- resonance
- vocal weight or thinness
- constriction

The contract intentionally avoids documenting the full internal representation that produces those values.

## Stability Guarantees

The public repo may state these guarantees:

1. The app consumes a stable request/response boundary rather than binding UI directly to private model code.
2. Metric series are frame-aligned and suitable for charting or live feedback.
3. The analyzer may withhold values when confidence or quality gates are not met.

## Out of Scope

These should stay private:

- internal feature layout
- private preprocessing constants
- private gating settings
- training data and private model assets
- production implementation of the runtime encoder
