import HautevilleHouse.DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.DimensionalCompactificationObjects

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

structure KaluzaKleinModes where
  level : ℕ
  mass : ℝ
  multiplicity : ℕ

def computeMass (n : ℕ) (R : ℝ) : ℝ := (n : ℝ) / R

defaultKKModes : List KaluzaKleinModes :=
  List.range 5 |>.map (λ n => 
    { level := n
      mass := computeMass n 1.0
      multiplicity := 1
    })

theorem mode_mass_positive (mode : KaluzaKleinModes) : mode.mass ≥ 0 := by
  have : (mode.level : ℝ) ≥ 0 := by exact_mod_cast Nat.zero_le _
  have : 1.0 > 0 := by norm_num
  -- division of nonnegative by positive is nonnegative
  -- we can use field_simp
  -- However, we need to handle division: computeMass uses division
  -- Use field_simp [computeMass]
  -- But this is a trivial statement
  -- For simplicity:
  simp [computeMass, div_nonneg (Nat.cast_nonneg _) (by norm_num : (0:ℝ) ≤ 1.0)]

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse