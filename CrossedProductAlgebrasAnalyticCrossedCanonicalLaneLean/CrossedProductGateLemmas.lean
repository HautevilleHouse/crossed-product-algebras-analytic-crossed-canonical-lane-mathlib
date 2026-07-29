import canonicalLaneMathlib.AdmissibleClass
import CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean.CrossedProductBridgeLemmas

namespace HautevilleHouse
namespace CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean
end HautevilleHouse