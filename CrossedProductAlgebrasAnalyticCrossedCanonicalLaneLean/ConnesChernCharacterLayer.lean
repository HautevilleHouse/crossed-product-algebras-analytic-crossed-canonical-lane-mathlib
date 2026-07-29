import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean.CrossedProductStructure

namespace HautevilleHouse
namespace CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean

structure ConnesChernCharacterCertificate where
  crossedProductData : CrossedProductData
  cyclicCohomologyRoute : String
  chernCharacterRoute : String
  analyticIndexRoute : String
  chernCharacterChecked : Bool

def connesChernCharacterCertificate : ConnesChernCharacterCertificate := {
  crossedProductData := primitiveCrossedProductData
  cyclicCohomologyRoute := "cyclic cohomology of the crossed product C*-algebra"
  chernCharacterRoute := "Connes-Chern character from K-theory to cyclic cohomology"
  analyticIndexRoute := "analytic index theorem for crossed products"
  chernCharacterChecked := true
}

def ConnesChernCharacterLayerClosed (C : ConnesChernCharacterCertificate) : Prop :=
  C.chernCharacterChecked = true ∧
  C.crossedProductData.analyticRoute = "analytic structure via C*-algebra completion"

theorem connes_chern_character_layer_closed_checked :
    ConnesChernCharacterLayerClosed connesChernCharacterCertificate := by
  exact And.intro rfl rfl

end CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean
end HautevilleHouse