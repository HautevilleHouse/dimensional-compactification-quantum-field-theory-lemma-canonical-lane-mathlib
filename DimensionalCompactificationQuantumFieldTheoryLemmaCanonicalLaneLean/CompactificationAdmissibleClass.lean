import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.DimensionalCompactificationObjects

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

structure CompactificationAdmissibleClass where
  object : DimensionalCompactificationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CompactificationAdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse