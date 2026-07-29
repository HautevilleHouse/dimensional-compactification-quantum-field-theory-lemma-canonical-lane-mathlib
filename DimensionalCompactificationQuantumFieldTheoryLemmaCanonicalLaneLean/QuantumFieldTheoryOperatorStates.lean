import DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Algebraic.Basic

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean

abbrev Spacetime := Fin 4 → ℝ
abbrev FieldConfig := Spacetime → ℝ
abbrev HilbertSpace := FieldConfig → ℝ

structure Observable where
  name : String
  action : FieldConfig → ℝ

structure State where
  waveFunctional : HilbertSpace
  normalization : ℝ
  normalizationPositive : normalization > 0

def vacuumState : State := {
  waveFunctional := fun _ => 0
  normalization := 1
  normalizationPositive := by norm_num
}

def zeroObservable : Observable := {
  name := "zero"
  action := fun _ => 0
}

structure OperatorState where
  observable : Observable
  state : State
  expectationValue : ℝ
  expectationComputed : expectationValue = observable.action (fun _ => 0)

def primitiveOperatorState : OperatorState := {
  observable := zeroObservable
  state := vacuumState
  expectationValue := 0
  expectationComputed := rfl
}

def OperatorStateClosed (O : OperatorState) : Prop :=
  O.expectationValue = O.observable.action (fun _ => 0)

theorem primitive_operator_state_closed : OperatorStateClosed primitiveOperatorState := by
  unfold OperatorStateClosed primitiveOperatorState zeroObservable
  rfl

end DimensionalCompactificationQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse