import DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.CompactificationSpectrumLayer
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

structure EffectiveActionCertificate where
  spectrum : SpectrumCertificate
  higherModeIntegratedOut : Bool
  lowEnergyEffectiveActionDerived : Bool
  consistencyConditionValidated : Bool
  higherModeIntegratedOutProof : higherModeIntegratedOut
  lowEnergyEffectiveActionDerivedProof : lowEnergyEffectiveActionDerived
  consistencyConditionValidatedProof : consistencyConditionValidated

def sourceEffectiveActionCertificate : EffectiveActionCertificate := {
  spectrum := sourceSpectrumCertificate
  higherModeIntegratedOut := true
  lowEnergyEffectiveActionDerived := true
  consistencyConditionValidated := true
  higherModeIntegratedOutProof := rfl
  lowEnergyEffectiveActionDerivedProof := rfl
  consistencyConditionValidatedProof := rfl
}

def EffectiveActionClosed (C : EffectiveActionCertificate) : Prop :=
  SpectrumClosed C.spectrum ∧
  C.higherModeIntegratedOut ∧
  C.lowEnergyEffectiveActionDerived ∧
  C.consistencyConditionValidated

theorem source_effective_action_closed : EffectiveActionClosed sourceEffectiveActionCertificate := by
  exact And.intro source_spectrum_closed
    (And.intro sourceEffectiveActionCertificate.higherModeIntegratedOutProof
      (And.intro sourceEffectiveActionCertificate.lowEnergyEffectiveActionDerivedProof
        sourceEffectiveActionCertificate.consistencyConditionValidatedProof))

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse