import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure SecondOrderEllipticOperatorPackage where
  coefficientFunctions : Prop
  uniformEllipticity : Prop
  boundedCoefficients : Prop
  symmetricPart : Prop

structure SecondOrderEllipticOperatorEvidence (E : SecondOrderEllipticOperatorPackage) where
  coefficientFunctionsClosed : E.coefficientFunctions
  uniformEllipticityClosed : E.uniformEllipticity
  boundedCoefficientsClosed : E.boundedCoefficients
  symmetricPartClosed : E.symmetricPart

def SecondOrderEllipticOperatorClosed (E : SecondOrderEllipticOperatorPackage) : Prop :=
  E.coefficientFunctions ∧ E.uniformEllipticity ∧ E.boundedCoefficients ∧ E.symmetricPart

theorem second_order_elliptic_operator_closed_from_evidence
    (E : SecondOrderEllipticOperatorPackage) (Ev : SecondOrderEllipticOperatorEvidence E) :
    SecondOrderEllipticOperatorClosed E := by
  exact And.intro Ev.coefficientFunctionsClosed
    (And.intro Ev.uniformEllipticityClosed
      (And.intro Ev.boundedCoefficientsClosed Ev.symmetricPartClosed))

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse
