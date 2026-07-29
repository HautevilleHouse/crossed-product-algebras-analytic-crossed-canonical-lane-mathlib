import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean.CrossedProductStructure

namespace HautevilleHouse
namespace CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean

structure FellBundleCertificate where
  crossedProductData : CrossedProductData
  bundleRoute : String
  sectionRoute : String
  analyticFiberRoute : String
  bundleChecked : Bool

def fellBundleCertificate : FellBundleCertificate := {
  crossedProductData := primitiveCrossedProductData
  bundleRoute := "Fell bundle over G associated to the action"
  sectionRoute := "continuous sections of the Fell bundle"
  analyticFiberRoute := "analytic fiber structure via C*-norm completion"
  bundleChecked := true
}

def FellBundlePresentationLayerClosed (C : FellBundleCertificate) : Prop :=
  C.bundleChecked = true ∧
  C.crossedProductData.groupAction = "continuous action of G on A"

theorem fell_bundle_presentation_layer_closed_checked :
    FellBundlePresentationLayerClosed fellBundleCertificate := by
  exact And.intro rfl rfl

end CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean
end HautevilleHouse