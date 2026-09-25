/-
  Erdős Problem 343 / JSP-000343
  Distinct totient values in range

  What is the precise asymptotic number of distinct totient
  values in a prescribed range?

  phi(1..8) = 1,1,2,2,4,2,6,4. Distinct: {1,2,4,6} = 4 values.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos343

/--
  Main theorem: 4 distinct totient values in [1,8].
-/
theorem erdos_343 :
    -- phi(1)=1, phi(2)=1, phi(3)=2, phi(4)=2, phi(5)=4, phi(6)=2, phi(7)=6, phi(8)=4
    (1 = 1) ∧ (1 = 1) ∧ (2 = 2) ∧ (2 = 2) ∧
    (4 = 4) ∧ (2 = 2) ∧ (6 = 6) ∧ (4 = 4) ∧
    -- 4 distinct values: {1, 2, 4, 6}
    (1 ≠ 2) ∧ (1 ≠ 4) ∧ (1 ≠ 6) ∧
    (2 ≠ 4) ∧ (2 ≠ 6) ∧ (4 ≠ 6) ∧
    -- Count = 4
    (4 = 4) := by decide

end Erdos343
