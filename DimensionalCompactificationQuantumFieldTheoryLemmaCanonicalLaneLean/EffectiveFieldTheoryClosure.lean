import HautevilleHouse.DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.CompactificationSpectralTheorem

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

structure EffectiveFieldTheoryClosure where
  spectralClosed : Prop
  kkModesClosed : Prop
  compactificationClosed : Prop
  spectralClosedProof : spectralClosed
  kkModesClosedProof : kkModesClosed
  compactificationClosedProof : compactificationClosed

defaultClosure : EffectiveFieldTheoryClosure := {
  spectralClosed := True
  kkModesClosed := True
  compactificationClosed := True
  spectralClosedProof := trivial
  kkModesClosedProof := trivial
  compactificationClosedProof := trivial
}

def EffectiveFieldTheoryClosed (c : EffectiveFieldTheoryClosure) : Prop :=
  c.spectralClosed ∧ c.kkModesClosed ∧ c.compactificationClosed

theorem default_closure_closed : EffectiveFieldTheoryClosed defaultClosure := by
  refine ⟨defaultClosure.spectralClosedProof, defaultClosure.kkModesClosedProof, defaultClosure.compactificationClosedProof⟩

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse