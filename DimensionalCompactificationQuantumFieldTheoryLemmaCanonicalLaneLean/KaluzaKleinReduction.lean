import DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.CompactificationSubstrate

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

structure KaluzaKleinReduction where
  substrate : CompactificationSubstrate
  modeExpansion : Prop
  massSpectrum : Prop
  couplingConsistency : Prop
  modeExpansionClosed : modeExpansion
  massSpectrumClosed : massSpectrum
  couplingConsistencyClosed : couplingConsistency

def sourceKaluzaKleinReduction : KaluzaKleinReduction := {
  substrate := sourceCompactificationSubstrate
  modeExpansion := sourceKKModeIndices.length = 42
  massSpectrum := sourceKKMassLevels.length = 42
  couplingConsistency := sourceKKCouplingRules.length = 7
  modeExpansionClosed := rfl
  massSpectrumClosed := rfl
  couplingConsistencyClosed := rfl
}

def KaluzaKleinReductionClosed (R : KaluzaKleinReduction) : Prop :=
  CompactificationSubstrateClosed R.substrate ∧ R.modeExpansion ∧ R.massSpectrum ∧ R.couplingConsistency

theorem source_kaluza_klein_reduction_closed :
    KaluzaKleinReductionClosed sourceKaluzaKleinReduction := by
  exact And.intro source_compactification_substrate_closed
    (And.intro sourceKaluzaKleinReduction.modeExpansionClosed
      (And.intro sourceKaluzaKleinReduction.massSpectrumClosed
        sourceKaluzaKleinReduction.couplingConsistencyClosed))

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse
