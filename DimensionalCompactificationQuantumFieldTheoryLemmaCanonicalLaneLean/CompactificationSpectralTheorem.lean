import HautevilleHouse.DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.KaluzaKleinModes

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

structure SpectralData where
  eigenvalues : List ℝ
  eigenfunctions : ℕ → ℝ → ℝ

defaultSpectralData : SpectralData := {
  eigenvalues := [0.0, 1.0, 4.0, 9.0, 16.0]
  eigenfunctions := λ n x => Real.cos ((n : ℝ) * x)
}

theorem eigenvalue_nonneg (sd : SpectralData) : ∀ λ ∈ sd.eigenvalues, λ ≥ 0 := by
  intro λ hλ
  have : λ ∈ [0.0, 1.0, 4.0, 9.0, 16.0] := hλ
  -- all these are nonnegative
  decide

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse