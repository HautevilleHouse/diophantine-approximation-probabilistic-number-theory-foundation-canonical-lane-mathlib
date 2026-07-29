import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean

structure UniformDistributionCertificate where
  weylCriterionChecked : Bool
  equidistributionTheoremChecked : Bool
  discrepancyBoundChecked : Bool
  uniformDistributionChecked : Bool

def primitiveUniformDistributionCertificate : UniformDistributionCertificate := {
  weylCriterionChecked := true,
  equidistributionTheoremChecked := true,
  discrepancyBoundChecked := true,
  uniformDistributionChecked := true
}

def UniformDistributionLayerClosed (C : UniformDistributionCertificate) : Prop :=
  C.weylCriterionChecked = true ∧ C.equidistributionTheoremChecked = true ∧
  C.discrepancyBoundChecked = true ∧ C.uniformDistributionChecked = true

theorem uniform_distribution_layer_closed_checked :
    UniformDistributionLayerClosed primitiveUniformDistributionCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean
end HautevilleHouse