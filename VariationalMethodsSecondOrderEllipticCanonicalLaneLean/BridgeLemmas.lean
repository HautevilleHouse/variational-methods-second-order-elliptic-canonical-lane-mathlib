import canonicalLaneMathlib.AdmissibleClass
import VariationalMethodsSecondOrderEllipticCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ v : A.object.sobolevSpace, A.object.functional A.object.minimizer ≤ A.object.functional v

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.minimizerProperty

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse