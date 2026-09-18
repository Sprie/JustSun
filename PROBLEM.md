# JSP-000301 — statement correspondence

Official catalog question:

> If two consecutive positive integers are powerful, must at least one be a
> perfect square?

The formal theorem

```lean
JustSun.JSP000301.answer_is_no
```

proves the negation of the full universal yes/no statement.

## Definitions

`Powerful n` is defined by

```lean
∀ p : ℕ, p.Prime → p ∣ n → p ^ 2 ∣ n
```

which is the standard squareful/powerful condition: every prime divisor occurs
with exponent at least two.

`NatSquare n` is

```lean
∃ k : ℕ, k ^ 2 = n
```

## Completeness

The theorem uses one explicit counterexample:

- `n = 12167`
- `n + 1 = 12168`

The proof verifies:

1. `0 < 12167`;
2. `12167` is powerful;
3. `12168` is powerful;
4. `12167` is not a square;
5. `12168` is not a square.

Therefore the original universal affirmative statement is false. No additional
mathematical assumptions are introduced.
