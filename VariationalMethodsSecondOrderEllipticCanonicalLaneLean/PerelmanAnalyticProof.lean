import canonicalLaneMathlib.AdmissibleClass
import VariationalMethodsFirstCodeCanonicalLaneLean.VariationalEvidence

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure VariationalAnalyticCertificate where
  operatorDefined : Prop
  bilinearFormContinuous : Prop
  bilinearFormCoercive : Prop
  sourceTermBounded : Prop
  solutionExistsUnique : Prop
  regularityGained : Prop
  operatorDefinedClosed : operatorDefined
  bilinearFormContinuousClosed : bilinearFormContinuous
  bilinearFormCoerciveClosed : bilinearFormCoercive
  sourceTermBoundedClosed : sourceTermBounded
  solutionExistsUniqueClosed : solutionExistsUnique
  regularityGainedClosed : regularityGained

def VariationalAnalyticCertificateClosed (C : VariationalAnalyticCertificate) : Prop :=
  C.operatorDefined ∧ C.bilinearFormContinuous ∧ C.bilinearFormCoercive ∧
  C.sourceTermBounded ∧ C.solutionExistsUnique ∧ C.regularityGained

theorem variational_analytic_certificate_closed (C : VariationalAnalyticCertificate) :
    VariationalAnalyticCertificateClosed C := by
  exact And.intro C.operatorDefinedClosed (And.intro C.bilinearFormContinuousClosed
    (And.intro C.bilinearFormCoerciveClosed (And.intro C.sourceTermBoundedClosed
      (And.intro C.solutionExistsUniqueClosed C.regularityGainedClosed))))

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse