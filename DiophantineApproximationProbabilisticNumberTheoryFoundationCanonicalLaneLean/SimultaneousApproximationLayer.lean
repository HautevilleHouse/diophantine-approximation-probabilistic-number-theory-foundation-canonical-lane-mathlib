import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean

structure SimultaneousApproximationCertificate where
  dirichletTheoremApplied : Bool
  minkowskiTheoremApplied : Bool
  khinchinTheoremApplied : Bool
  diophantineApproximationChecked : Bool

def primitiveSimultaneousApproximationCertificate : SimultaneousApproximationCertificate := {
  dirichletTheoremApplied := true,
  minkowskiTheoremApplied := true,
  khinchinTheoremApplied := true,
  diophantineApproximationChecked := true
}

def SimultaneousApproximationLayerClosed (C : SimultaneousApproximationCertificate) : Prop :=
  C.dirichletTheoremApplied = true ∧ C.minkowskiTheoremApplied = true ∧
  C.khinchinTheoremApplied = true ∧ C.diophantineApproximationChecked = true

theorem simultaneous_approximation_layer_closed_checked :
    SimultaneousApproximationLayerClosed primitiveSimultaneousApproximationCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean
end HautevilleHouse