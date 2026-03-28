# Showcase App

This folder now contains the first public-safe source set for the showcase repo.

## Included

- `Sources/Visuals`
  Public-safe ambient background and chrome extracted from the private app.
- `Sources/Charts`
  Grid and chart modifiers that show the chart language without exposing feature logic.
- `Sources/Tokens`
  Metric colors and glow helpers with no analyzer dependency.

## Intended Use

These files are meant to:

- show the visual quality bar
- provide small, readable source examples
- stay independent from private product logic

## Intentionally Excluded

- shipping navigation shells with feature dependencies
- on-device ML runtime integration
- production analyzer clients
- private model assets
