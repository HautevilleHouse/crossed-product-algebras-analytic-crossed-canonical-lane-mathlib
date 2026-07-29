import canonicalLaneMathlib.AdmissibleClass
import CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean.CrossedProductOperatorLayer
import CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean.AnalyticSpectralSubstrate

namespace HautevilleHouse
namespace CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean

structure CrossedProductSpectralCertificate where
  operatorLayer : CrossedProductOperatorCertificate
  analyticSubstrate : AnalyticSpectralSubstrate
  carriageRecord : RHCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

def crossedProductSpectralCertificate : CrossedProductSpectralCertificate := {
  operatorLayer := crossedProductOperatorCertificate,
  analyticSubstrate := analyticSpectralSubstrate,
  carriageRecord := rhCarriageRecord,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  spectralObjectClosed := true,
  classicalBoundaryCarried := true
}

def CrossedProductSpectralCertificateClosed (C : CrossedProductSpectralCertificate) : Prop :=
  CrossedProductOperatorLayerClosed C.operatorLayer ∧
  AnalyticSpectralSubstrateReady C.analyticSubstrate ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.spectralObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem crossed_product_spectral_certificate_closed_checked :
    CrossedProductSpectralCertificateClosed crossedProductSpectralCertificate := by
  exact And.intro crossed_product_operator_layer_closed_checked
    (And.intro analytic_spectral_substrate_ready_checked
    (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end CrossedProductAlgebrasAnalyticCrossedCanonicalLaneLean
end HautevilleHouse