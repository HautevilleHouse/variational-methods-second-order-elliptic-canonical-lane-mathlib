import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure EllipticRegularityPackage where
  operatorOrder : ℕ
  sourceRegularity : ℕ
  solutionRegularity : ℕ
  interiorEstimate : Prop

structure EllipticRegularityEvidence (E : EllipticRegularityPackage) where
  interiorEstimateClosed : E.interiorEstimate

def EllipticRegularityClosed (E : EllipticRegularityPackage) : Prop :=
  E.interiorEstimate

theorem elliptic_regularity_closed_from_evidence (E : EllipticRegularityPackage)
    (Ev : EllipticRegularityEvidence E) : EllipticRegularityClosed E := by
  exact Ev.interiorEstimateClosed

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse