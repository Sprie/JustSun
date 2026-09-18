# Participation status

This repository tracks Sprie's participation work for The Justin Sun Prize.

## Submitted upstream

### JSP-000916 — existing-proof evidence registration

Role of Sprie: **source discovery, statement correspondence review, reproducible verification, catalog correction**.

Sprie does **not** claim mathematical-solution or Lean-formalization authorship.

- Upstream proof snapshot: `8822f7ddef30fadbd92e1c6ab4ed897af356af5e`
- Main theorems: `Erdos1105.erdos_1105`; `Erdos1105.erdos_1105_paths`
- Evidence: [evidence/JSP-000916.md](evidence/JSP-000916.md)
- Upstream PR: https://github.com/TheJustinSunPrize/awards/pull/1102
- Formal authors in pinned upstream metadata: Codex; GPT-5.6 Sol
- Proof reproduction CI: https://github.com/Sprie/JustSun/actions/runs/35318007706 — success, 8909 jobs
- Axioms for both terminal theorems: `[propext, Classical.choice, Quot.sound]`
- Awards fork branch: `Sprie/awards:jsp-000916-register-existing-lean`
- PR text: [submissions/JSP-000916-PR.md](submissions/JSP-000916-PR.md)
- Awards validation: https://github.com/Sprie/JustSun/actions/runs/35319380858 — success
- PR head: `d84ccc5799cf805e8636a1485a0a8bbe7b3988ad`; final diff: 2 files, +4/-3.
- Official upstream workflows currently report `action_required` with no jobs started, consistent with maintainer approval being required before fork workflows run.

### JSP-000517 — existing-proof evidence registration

Role of Sprie: **source discovery, statement correspondence review, reproducible verification, catalog correction**.

Sprie does **not** claim mathematical-solution or Lean-formalization authorship.

- Upstream proof repository: `plby/lean-proofs`
- Pinned upstream snapshot: `8822f7ddef30fadbd92e1c6ab4ed897af356af5e`
- Main theorem: `Erdos636.erdos_636`
- Evidence: [evidence/JSP-000517.md](evidence/JSP-000517.md)
- Upstream PR: https://github.com/TheJustinSunPrize/awards/pull/1095
- PR text: [submissions/JSP-000517-PR.md](submissions/JSP-000517-PR.md)
- Awards fork branch: `Sprie/awards:jsp-000517-register-existing-lean`
- Proof reproduction CI: https://github.com/Sprie/JustSun/actions/runs/35317022453 — success, 8790 jobs
- Final awards catalog validation: https://github.com/Sprie/JustSun/actions/runs/35318550519 — success
- Official upstream workflows currently report `action_required` with no jobs started, consistent with maintainer approval being required before fork workflows run.
- PR head: `8429e2dc4f1b3e45ccd6138306511eeb97d46f5d`; changed files: 2; mergeable at submission time.

### JSP-000699 — existing-proof evidence registration

Role of Sprie: **source discovery, statement correspondence review, reproducible verification, catalog correction**.

Sprie does **not** claim mathematical-solution or Lean-formalization authorship.

- Upstream proof repository: `plby/lean-proofs`
- Pinned upstream snapshot: `7d97d48c60396d8ca2ba67298a296749a8e0fe0b`
- Main theorem: `Erdos843.erdos_843`
- Reproduction CI: https://github.com/Sprie/JustSun/actions/runs/35305353679
- Axioms: `[propext, Classical.choice, Quot.sound]`
- Evidence: [evidence/JSP-000699.md](evidence/JSP-000699.md)
- Upstream PR: https://github.com/TheJustinSunPrize/awards/pull/1083
- PR text: [submissions/JSP-000699-PR.md](submissions/JSP-000699-PR.md)
- Awards fork branch: `Sprie/awards:jsp-000699-register-existing-lean`
- Awards validation: https://github.com/Sprie/JustSun/actions/runs/35305855496
- Last competition check before this status update: no matching upstream PR or issue found.

## Do not duplicate upstream

### JSP-000747 — existing-proof evidence registration

Role of Sprie: **source discovery, statement correspondence review, reproducible verification, catalog correction**.

Sprie does **not** claim mathematical-solution or Lean-formalization authorship.

- Upstream proof repository: `plby/lean-proofs`
- Pinned upstream snapshot: `7d97d48c60396d8ca2ba67298a296749a8e0fe0b`
- Main theorem: `Erdos896.erdos_896`
- Reproduction CI: https://github.com/Sprie/JustSun/actions/runs/35305492621
- Build: 8781 jobs completed successfully
- Axioms: `[propext, Classical.choice, Quot.sound]`
- Evidence: [evidence/JSP-000747.md](evidence/JSP-000747.md)
- Existing upstream PR by another contributor: https://github.com/TheJustinSunPrize/awards/pull/1040
- Decision: do **not** open a duplicate PR; keep Sprie's reproduction as independent verification evidence only.
- PR text retained for archive: [submissions/JSP-000747-PR.md](submissions/JSP-000747-PR.md)
- Awards fork branch: `Sprie/awards:jsp-000747-register-existing-lean`
- Awards validation: https://github.com/Sprie/JustSun/actions/runs/35305855496
- Last competition check before this status update: no matching upstream PR or issue found.

## Independent formalization completed

### JSP-000301 — consecutive powerful numbers

Role of Sprie: **independent Lean formalization**.

- Proof commit: `954af206055a6e027d19d723ae28190f3fc2e0f3`
- Main theorem: `JustSun.JSP000301.answer_is_no`
- Source: [JustSun/JSP000301.lean](JustSun/JSP000301.lean)
- CI: https://github.com/Sprie/JustSun/actions/runs/35301134156
- Axioms: `[propext, Classical.choice, Quot.sound]`
- Awards fork branch: `Sprie/awards:lean-proof-jsp-000301-sprie`
- Priority note: other JSP-000301 formalizations already exist; no first-formalization claim is made.

## Selection policy for new original formalizations

A new target should pass all of these checks immediately before work begins:

1. Official catalog says `Solved` and does not yet record an accepted Lean proof.
2. Exact JSP-ID search finds no competing upstream PR or issue worth avoiding.
3. Public proof repositories are searched so stale catalog metadata is not mistaken for an empty target.
4. Prefer a finite witness/certificate, explicit counterexample, or short construction over deep analytic infrastructure.
5. The formal theorem must cover the full catalog statement; partial progress is tracked separately and not submitted as a complete formalization.
