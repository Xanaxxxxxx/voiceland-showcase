# Core ML Boundary

This document explains **where on-device ML sits** in the Voiceland runtime and where it does **not**.

The goal is to make the architecture understandable without exposing the model pipeline deeply enough to reproduce it.

## Boundary Summary

| Layer | Responsibility |
|---|---|
| Swift app runtime | audio capture, stream lifecycle, UI state |
| App-side preprocessing | converts live input into a model-ready representation |
| On-device ML model | transforms that representation into a compact intermediate output |
| App-side postprocessing | turns model output into UI-facing metrics and suppresses unreliable frames |
| SwiftUI | renders the result for live training feedback |

## What The Model Does

The model is used as an **intermediate encoder**, not as a full end-to-end app runtime.

Publicly safe description:

- the model receives an app-prepared input representation
- the model emits a compact intermediate output
- the app transforms that output into the product metrics shown in the UI

## What Stays Outside The Model

These responsibilities remain outside the model:

- microphone and audio session control
- stream buffering
- session reset semantics
- UI-facing metric selection
- UI-facing masking behavior
- chart rendering and state observation

## Why This Boundary Exists

This boundary is useful to explain publicly because it shows engineering discipline:

- the app runtime stays local on device
- the model is isolated behind a narrow interface
- the UI is not tightly coupled to private model code
- the same architectural boundary supports future platform work

## What This Document Does Not Reveal

This public repo should not document:

- exact input construction
- exact intermediate representation
- exact mapping formulas
- exact gating settings
- export internals or private model asset details
