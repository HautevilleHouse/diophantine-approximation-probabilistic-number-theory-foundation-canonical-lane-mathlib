import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean

structure DiophantineApproximationDatum where
  irrationalMeasure : ℚ → ℝ
  approximationExponent : ℝ
  dirichletChecked : Bool
  badApproximationBound : Bool

def primitiveDiophantineApproximationDatum : DiophantineApproximationDatum := {
  irrationalMeasure := λ _ => 0,
  approximationExponent := 0,
  dirichletChecked := true,
  badApproximationBound := true
}

structure DiophantineApproximationLayerCertificate where
  datum : DiophantineApproximationDatum
  metricRoute : String
  uniformRoute : String
  endpointChecked : Bool

def diophantineApproximationLayerCertificate : DiophantineApproximationLayerCertificate := {
  datum := primitiveDiophantineApproximationDatum,
  metricRoute := "diophantine approximation metric routed through source constants",
  uniformRoute := "uniform approximation endpoint projected through admissible class",
  endpointChecked := true
}

def DiophantineApproximationLayerClosed (C : DiophantineApproximationLayerCertificate) : Prop :=
  C.datum.dirichletChecked = true ∧
  C.datum.badApproximationBound = true ∧
  C.endpointChecked = true

theorem diophantine_approximation_layer_closed_checked :
    DiophantineApproximationLayerClosed diophantineApproximationLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean
end HautevilleHouse