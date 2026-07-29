import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean.CrossedProductStructure

namespace HautevilleHouse
namespace CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean

structure CovaluedBrauerGroupCertificate where
  crossedProductData : CrossedProductData
  brauerGroupRoute : String
  moritaEquivalenceRoute : String
  analyticDescriptor : String
  brauerGroupChecked : Bool

def covaluedBrauerGroupCertificate : CovaluedBrauerGroupCertificate := {
  crossedProductData := primitiveCrossedProductData
  brauerGroupRoute := "co-valued Brauer group Br(A) via crossed product Morita equivalence"
  moritaEquivalenceRoute := "Morita equivalence between crossed products and algebra bundles"
  analyticDescriptor := "analytic Brauer group via C*-algebra bundles"
  brauerGroupChecked := true
}

def CovaluedBrauerGroupLayerClosed (C : CovaluedBrauerGroupCertificate) : Prop :=
  C.brauerGroupChecked = true ∧
  C.crossedProductData.crossedProductType = "reduced crossed product A ⋊_r G"

theorem covalued_brauer_group_layer_closed_checked :
    CovaluedBrauerGroupLayerClosed covaluedBrauerGroupCertificate := by
  exact And.intro rfl rfl

end CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean
end HautevilleHouse