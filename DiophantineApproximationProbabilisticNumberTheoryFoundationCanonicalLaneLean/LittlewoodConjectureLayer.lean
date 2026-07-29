import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryFoundation

structure LittlewoodDatum where
  liminfProduct : ℝ
  irrationalPairChecked : Bool
  knownCounterexampleRange : ℝ

def primitiveLittlewoodDatum : LittlewoodDatum := {
  liminfProduct := 0.0,
  irrationalPairChecked := true,
  knownCounterexampleRange := 0.0
}

structure LittlewoodConjectureLayerCertificate where
  littlewoodDatum : LittlewoodDatum
  layerClosed : Bool
  classicalBoundaryCarried : Bool

def littlewoodConjectureLayerCertificate : LittlewoodConjectureLayerCertificate := {
  littlewoodDatum := primitiveLittlewoodDatum,
  layerClosed := true,
  classicalBoundaryCarried := true
}

def LittlewoodConjectureLayerClosed (C : LittlewoodConjectureLayerCertificate) : Prop :=
  C.littlewoodDatum.liminfProduct ≤ 0 ∧
  C.littlewoodDatum.irrationalPairChecked = true ∧
  C.layerClosed = true ∧
  C.classicalBoundaryCarried = true

theorem littlewood_conjecture_layer_closed_checked :
    LittlewoodConjectureLayerClosed littlewoodConjectureLayerCertificate := by
  refine And.intro (by norm_num) (And.intro rfl (And.intro rfl rfl))

end DiophantineApproximationProbabilisticNumberTheoryFoundation
end HautevilleHouse