import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure NeumannData (E : EllipticOperator) where
  sourceTerm : E.domainΩ → ℝ
  boundaryFlux : ∂E.domainΩ → ℝ
  sourceIntegrable : sourceTerm ∈ L^2(E.domainΩ)
  fluxIntegrable : boundaryFlux ∈ L^2(∂E.domainΩ)
  compatibility : ∫ sourceTerm + ∫_∂ boundaryFlux = 0

def WeakNeumannSolution (E : EllipticOperator) (n : NeumannData E) : Set (H^1(E.domainΩ)) :=
  {u : H^1(E.domainΩ) | ∀ v : H^1(E.domainΩ), 
    ∫ (coefficientMatrix ∇u · ∇v + lowerOrderTerms * u * v) = ∫ sourceTerm * v + ∫_∂ boundaryFlux * v}

theorem neumann_weak_solution_exists (E : EllipticOperator) (n : NeumannData E) :
    (WeakNeumannSolution E n).Nonempty := by
  sorry

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse