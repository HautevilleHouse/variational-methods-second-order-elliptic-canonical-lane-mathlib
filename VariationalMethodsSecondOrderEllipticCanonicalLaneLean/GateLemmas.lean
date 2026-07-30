import canonicalLaneMathlib.AdmissibleClass
import VariationalMethodsSecondOrderEllipticCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse