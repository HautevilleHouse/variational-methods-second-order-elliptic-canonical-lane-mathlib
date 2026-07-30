import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure VariationalAdmittedObject where
  domainΩ : Type u
  sobolevSpace : H^1(domainΩ)
  functional : sobolevSpace → ℝ
  minimizer : sobolevSpace
  minimizerProperty : ∀ v : sobolevSpace, functional minimizer ≤ functional v

structure AdmissibleClass where
  object : VariationalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ v : A.object.sobolevSpace, A.object.functional A.object.minimizer ≤ A.object.functional v) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse