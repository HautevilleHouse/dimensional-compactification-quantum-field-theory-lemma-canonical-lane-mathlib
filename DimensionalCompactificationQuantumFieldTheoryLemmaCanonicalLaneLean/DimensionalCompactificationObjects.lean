import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

structure CompactifiedDimension where
  name : String
  radius : ℝ

defaultInstance : CompactifiedDimension := {
  name := "S^1"
  radius := 1.0
}

structure DimensionalCompactificationObject where
  totalDimensions : ℕ
  compactifiedDimensions : List CompactifiedDimension
  effectiveFieldTheory : String
  kaluzaKleinModes : ℕ

defaultObject : DimensionalCompactificationObject := {
  totalDimensions := 5
  compactifiedDimensions := [defaultInstance]
  effectiveFieldTheory := "Einstein-Maxwell"
  kaluzaKleinModes := 100
}

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse