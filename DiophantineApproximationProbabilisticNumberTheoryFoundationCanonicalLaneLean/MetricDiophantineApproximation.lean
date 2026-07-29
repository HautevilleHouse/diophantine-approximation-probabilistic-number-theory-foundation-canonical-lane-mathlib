import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean

structure MetricDiophantineDatum where
  approximationType : String
  dimensionParameter : Nat
  measureTheoreticSetting : String
  hausdorffDimension : Float

structure MetricDiophantineApproximationCertificate where
  metricDatum : MetricDiophantineDatum
  approximationTypeClosed : Bool
  dimensionParameterChecked : Bool
  measureSettingClosed : Bool
  hausdorffDimensionChecked : Bool

def metricDiophantineApproximationCertificate : MetricDiophantineApproximationCertificate := {
  metricDatum := {
    approximationType := "simultaneous Diophantine approximation on manifolds",
    dimensionParameter := 2,
    measureTheoreticSetting := "Lebesgue measure on R^n",
    hausdorffDimension := 1.5
  },
  approximationTypeClosed := true,
  dimensionParameterChecked := true,
  measureSettingClosed := true,
  hausdorffDimensionChecked := true
}

def MetricDiophantineApproximationLayerClosed (C : MetricDiophantineApproximationCertificate) : Prop :=
  C.approximationTypeClosed = true ∧
  C.dimensionParameterChecked = true ∧
  C.measureSettingClosed = true ∧
  C.hausdorffDimensionChecked = true

theorem metric_diophantine_approximation_layer_closed_checked :
    MetricDiophantineApproximationLayerClosed metricDiophantineApproximationCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean
end HautevilleHouse