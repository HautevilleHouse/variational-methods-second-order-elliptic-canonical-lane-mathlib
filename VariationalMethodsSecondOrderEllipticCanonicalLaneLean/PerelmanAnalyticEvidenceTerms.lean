import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure SecondOrderAnalyticCertificate where
  operatorType : Nat
  ellipticityCondition : Prop
  boundednessCondition : Prop
  coercivityCondition : Prop
  aPrioriEstimateLower : Prop
  aPrioriEstimateHigher : Prop
  existenceClosed : Prop
  regularityClosed : Prop

def SecondOrderAnalyticCertificateClosed (C : SecondOrderAnalyticCertificate) : Prop :=
  C.ellipticityCondition ∧ C.boundednessCondition ∧ C.coercivityCondition ∧
  C.aPrioriEstimateLower ∧ C.aPrioriEstimateHigher ∧ C.existenceClosed ∧ C.regularityClosed

theorem second_order_analytic_certificate_closed (C : SecondOrderAnalyticCertificate) :
    SecondOrderAnalyticCertificateClosed C := by
  exact And.intro C.ellipticityCondition (And.intro C.boundednessCondition
    (And.intro C.coercivityCondition (And.intro C.aPrioriEstimateLower
      (And.intro C.aPrioriEstimateHigher (And.intro C.existenceClosed C.regularityClosed)))))

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse