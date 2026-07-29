import DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let dims : CompactificationState := sourceCompactificationState
  dims.totalDimensions = dims.spacetimeDimensions + dims.internalDimensions

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h : sourceCompactificationState.totalDimensions = sourceCompactificationState.spacetimeDimensions + sourceCompactificationState.internalDimensions := by
    native_decide
  exact h

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse