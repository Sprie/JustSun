import Mathlib

namespace JustSun.JSP000301

/--
A positive integer is powerful (squareful) when every prime divisor occurs
with exponent at least two.  This divisor formulation is exactly what is
needed for the JSP-000301 statement.
-/
def Powerful (n : ℕ) : Prop :=
  ∀ p : ℕ, p.Prime → p ∣ n → p ^ 2 ∣ n

/-- The elementary natural-number notion of being a perfect square. -/
def NatSquare (n : ℕ) : Prop :=
  ∃ k : ℕ, k ^ 2 = n

/-- Every prime power with exponent at least two is powerful. -/
lemma powerful_prime_pow {p k : ℕ} (hp : p.Prime) (hk : 2 ≤ k) :
    Powerful (p ^ k) := by
  intro q hq hqdiv
  have hqp : q = p := Nat.prime_eq_prime_of_dvd_pow hq hp hqdiv
  subst q
  exact pow_dvd_pow p hk

/-- A product of powerful natural numbers is powerful. -/
lemma powerful_mul {a b : ℕ} (ha : Powerful a) (hb : Powerful b) :
    Powerful (a * b) := by
  intro p hp hpdvd
  rcases (Nat.Prime.dvd_mul hp).mp hpdvd with hpa | hpb
  · exact dvd_mul_of_dvd_left (ha p hp hpa) b
  · exact dvd_mul_of_dvd_right (hb p hp hpb) a

/--
Any natural number strictly between two consecutive squares is not itself a
square.
-/
lemma not_square_between {a n : ℕ}
    (hlo : a ^ 2 < n) (hhi : n < (a + 1) ^ 2) :
    ¬ NatSquare n := by
  rintro ⟨k, hk⟩
  by_cases hka : k ≤ a
  · have hs : k * k ≤ a * a := Nat.mul_self_le_mul_self hka
    simp only [pow_two] at hk hlo hhi
    omega
  · have hak : a + 1 ≤ k := by omega
    have hs : (a + 1) * (a + 1) ≤ k * k := Nat.mul_self_le_mul_self hak
    simp only [pow_two] at hk hlo hhi
    omega

/-- 12167 = 23^3 is powerful. -/
lemma powerful_12167 : Powerful 12167 := by
  have h : Powerful (23 ^ 3) :=
    powerful_prime_pow (p := 23) (k := 3) (by norm_num) (by norm_num)
  convert h using 1 <;> norm_num

/-- 12168 = 2^3 * 3^2 * 13^2 is powerful. -/
lemma powerful_12168 : Powerful 12168 := by
  have h2 : Powerful (2 ^ 3) :=
    powerful_prime_pow (p := 2) (k := 3) (by norm_num) (by norm_num)
  have h3 : Powerful (3 ^ 2) :=
    powerful_prime_pow (p := 3) (k := 2) (by norm_num) (by norm_num)
  have h13 : Powerful (13 ^ 2) :=
    powerful_prime_pow (p := 13) (k := 2) (by norm_num) (by norm_num)
  have h : Powerful ((2 ^ 3) * (3 ^ 2) * (13 ^ 2)) :=
    powerful_mul (powerful_mul h2 h3) h13
  convert h using 1 <;> norm_num

/-- 12167 lies strictly between 110^2 and 111^2. -/
lemma not_square_12167 : ¬ NatSquare 12167 := by
  apply not_square_between (a := 110)
  · norm_num
  · norm_num

/-- 12168 lies strictly between 110^2 and 111^2. -/
lemma not_square_12168 : ¬ NatSquare 12168 := by
  apply not_square_between (a := 110)
  · norm_num
  · norm_num

/--
Golomb's explicit counterexample: 12167 and 12168 are consecutive powerful
positive integers, and neither is a square.
-/
theorem exists_consecutive_powerful_neither_square :
    ∃ n : ℕ,
      0 < n ∧
      Powerful n ∧
      Powerful (n + 1) ∧
      ¬ NatSquare n ∧
      ¬ NatSquare (n + 1) := by
  refine ⟨12167, by norm_num, powerful_12167, ?_, not_square_12167, ?_⟩
  · simpa using powerful_12168
  · simpa using not_square_12168

/--
Formal answer to JSP-000301: the universal affirmative statement is false.
-/
theorem answer_is_no :
    ¬ ∀ n : ℕ,
      0 < n →
      Powerful n →
      Powerful (n + 1) →
      NatSquare n ∨ NatSquare (n + 1) := by
  intro h
  have hs :=
    h 12167 (by norm_num) powerful_12167 (by simpa using powerful_12168)
  rcases hs with hs | hs
  · exact not_square_12167 hs
  · exact not_square_12168 hs

#print axioms answer_is_no

end JustSun.JSP000301
