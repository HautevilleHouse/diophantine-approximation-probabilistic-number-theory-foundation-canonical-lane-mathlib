import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∧ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact And.intro A.endpointSatisfied A.remainderRecorded

end DiophantineApproximationProbabilisticNumberTheoryFoundationCanonicalLaneLean
end HautevilleHouse