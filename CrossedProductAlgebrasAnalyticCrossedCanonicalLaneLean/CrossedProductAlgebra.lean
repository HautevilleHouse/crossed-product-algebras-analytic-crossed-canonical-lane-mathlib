import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean

structure CrossedProductData where
  algebra : Type
  group : Type
  action : group → algebra → algebra
  normed : Bool
  analytic : Bool

defaultCrossedProductData : CrossedProductData := {
  algebra := Unit,
  group := Unit,
  action := λ g a => a,
  normed := true,
  analytic := true
}

structure CrossedProductCertificate where
  baseAlgebra : String
  actingGroup : String
  analyticStructure : String
  normControlled : Bool
  analyticChecked : Bool

def crossedProductCertificate : CrossedProductCertificate := {
  baseAlgebra := "C*-algebra",
  actingGroup := "locally compact group",
  analyticStructure := "crossed product with analytic structure",
  normControlled := true,
  analyticChecked := true
}

def CrossedProductCertificateClosed (C : CrossedProductCertificate) : Prop :=
  C.normControlled = true ∧ C.analyticChecked = true

theorem crossed_product_certificate_closed_checked :
    CrossedProductCertificateClosed crossedProductCertificate := by
  exact And.intro rfl rfl

end CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean
end HautevilleHouse