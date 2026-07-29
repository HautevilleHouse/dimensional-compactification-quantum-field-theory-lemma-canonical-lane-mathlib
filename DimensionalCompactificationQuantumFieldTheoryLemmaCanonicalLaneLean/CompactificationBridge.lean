import DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.EffectiveFieldTheoryLayer

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompactificationSubstrateClosed sourceCompactificationSubstrate

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact source_compactification_substrate_closed

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse
