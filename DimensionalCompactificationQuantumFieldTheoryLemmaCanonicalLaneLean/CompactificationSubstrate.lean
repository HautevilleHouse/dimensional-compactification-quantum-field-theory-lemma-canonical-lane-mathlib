import DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

structure CompactificationSubstrate where
  extraDimensions : Nat
  compactManifold : String
  kaluzaKleinTower : Prop
  effectiveFieldTheory : Prop
  extraDimensionsClosed : extraDimensions = 6
  compactManifoldClosed : compactManifold = "CalabiYau"
  kaluzaKleinTowerClosed : kaluzaKleinTower
  effectiveFieldTheoryClosed : effectiveFieldTheory

def sourceCompactificationSubstrate : CompactificationSubstrate := {
  extraDimensions := 6
  compactManifold := "CalabiYau"
  kaluzaKleinTower := sourceKaluzaKleinModes.length = 42
  effectiveFieldTheory := sourceEffectiveOperators.length = 7
  extraDimensionsClosed := rfl
  compactManifoldClosed := rfl
  kaluzaKleinTowerClosed := rfl
  effectiveFieldTheoryClosed := rfl
}

def CompactificationSubstrateClosed (S : CompactificationSubstrate) : Prop :=
  S.extraDimensions = 6 ∧ S.compactManifold = "CalabiYau" ∧ S.kaluzaKleinTower ∧ S.effectiveFieldTheory

theorem source_compactification_substrate_closed :
    CompactificationSubstrateClosed sourceCompactificationSubstrate := by
  exact And.intro sourceCompactificationSubstrate.extraDimensionsClosed
    (And.intro sourceCompactificationSubstrate.compactManifoldClosed
      (And.intro sourceCompactificationSubstrate.kaluzaKleinTowerClosed
        sourceCompactificationSubstrate.effectiveFieldTheoryClosed))

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse
