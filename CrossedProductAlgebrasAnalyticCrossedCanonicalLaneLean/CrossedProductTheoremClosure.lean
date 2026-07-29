import canonicalLaneMathlib.AdmissibleClass
import CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean.CrossedProductGateLemmas

namespace HautevilleHouse
namespace CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean

def ConstrainedCrossedProductClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_crossed_product_endgame (A : AdmissibleClass) :
    ConstrainedCrossedProductClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem crossed_product_closure_carriage_state_checked :
    rhSpectralCertificate.carriageRecord.closureState =
      "LOCAL_CROSSED_PRODUCT_CERTIFICATE_CLOSED_WITH_CLASSICAL_BOUNDARY_CARRIED" := by
  rfl

end CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean
end HautevilleHouse