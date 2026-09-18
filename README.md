# JustSun

Lean formalizations prepared for participation in **The Justin Sun Prize**.

## First target: JSP-000301

**Problem:** If two consecutive positive integers are powerful, must at least one be a perfect square?

The answer is **no**. The formalization verifies Solomon W. Golomb's explicit counterexample:

- `12167 = 23^3`
- `12168 = 2^3 * 3^2 * 13^2`

Both numbers are powerful, they are consecutive, and both lie strictly between
`110^2 = 12100` and `111^2 = 12321`, so neither is a square.

The main theorem is:

```lean
JustSun.JSP000301.answer_is_no
```

Source: [`JustSun/JSP000301.lean`](JustSun/JSP000301.lean)

## Reproduce

The project pins Lean and Mathlib. With `elan` and `lake` installed:

```bash
lake exe cache get
lake build
```

CI runs the same build on every push.

## Attribution

The mathematical counterexample is credited to **Solomon W. Golomb**, *Powerful
numbers*, American Mathematical Monthly 77(8), 1970.

The Lean formalization in this repository is developed under the GitHub account
**Sprie**, with GPT-5.6 Sol used as an AI coding/proof assistant. See
[`ATTRIBUTION.md`](ATTRIBUTION.md).

This repository does not claim discovery of the mathematical counterexample.
