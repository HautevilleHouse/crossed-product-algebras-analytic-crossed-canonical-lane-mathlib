import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean.ConnesChernCharacterLayer

namespace HautevilleHouse
namespace CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean

def ConstrainedCrossedProductClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_crossed_product_endgame (A : AdmissibleClass) :
    ConstrainedCrossedProductClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean
end HautevilleHouse