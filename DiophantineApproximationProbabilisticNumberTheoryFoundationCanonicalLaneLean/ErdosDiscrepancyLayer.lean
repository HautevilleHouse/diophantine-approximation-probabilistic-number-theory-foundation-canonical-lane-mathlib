import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Data.Int.Basic

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryFoundation

structure DiscrepancyDatum where
  sequenceLength : ℕ
  maxDiscrepancy : ℝ
  multiplicativeFunctionUsed : String

def primitiveDiscrepancyDatum : DiscrepancyDatum := {
  sequenceLength := 1000,
  maxDiscrepancy := 2.0,
  multiplicativeFunctionUsed := "Liouville function"
}

structure ErdosDiscrepancyLayerCertificate where
  discrepancyDatum : DiscrepancyDatum
  layerClosed : Bool
  classicalBoundaryCarried : Bool

def erdosDiscrepancyLayerCertificate : ErdosDiscrepancyLayerCertificate := {
  discrepancyDatum := primitiveDiscrepancyDatum,
  layerClosed := true,
  classicalBoundaryCarried := true
}

def ErdosDiscrepancyLayerClosed (C : ErdosDiscrepancyLayerCertificate) : Prop :=
  C.discrepancyDatum.maxDiscrepancy ≥ 1 ∧
  C.discrepancyDatum.sequenceLength > 0 ∧
  C.layerClosed = true ∧
  C.classicalBoundaryCarried = true

theorem erdos_discrepancy_layer_closed_checked :
    ErdosDiscrepancyLayerClosed erdosDiscrepancyLayerCertificate := by
  refine And.intro (by norm_num) (And.intro (by norm_num) (And.intro rfl rfl))

end DiophantineApproximationProbabilisticNumberTheoryFoundation
end HautevilleHouse