import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure EllipticOperator where
  domainΩ : Type u
  coefficientMatrix : Ω → Matrix (Fin 3) (Fin 3) ℝ
  lowerOrderTerms : Ω → ℝ
  uniformEllipticity : ∃ θ > 0, ∀ x ∈ domainΩ, ∀ ξ : (Fin 3) → ℝ, 
    ξ ⬝ (coefficientMatrix x) ⬝ ξ ≥ θ * ‖ξ‖^2
  boundedCoefficients : ∃ C > 0, ∀ x ∈ domainΩ, ‖coefficientMatrix x‖ ≤ C ∧ |lowerOrderTerms x| ≤ C

structure DirichletData (E : EllipticOperator) where
  sourceTerm : E.domainΩ → ℝ
  boundaryData : E.domainΩ → ℝ
  sourceIntegrable : sourceTerm ∈ L^2(E.domainΩ)
  boundaryTraceable : boundaryData ∈ H^1/2(∂E.domainΩ)

def WeakSolution (E : EllipticOperator) (d : DirichletData E) : Set (H^1(E.domainΩ)) :=
  {u : H^1(E.domainΩ) | u|_∂ = d.boundaryData ∧ 
    ∀ v : H^1_0(E.domainΩ), ∫ (coefficientMatrix ∇u · ∇v + lowerOrderTerms * u * v) = ∫ sourceTerm * v}

theorem dirichlet_weak_solution_exists (E : EllipticOperator) (d : DirichletData E) :
    (WeakSolution E d).Nonempty := by
  sorry

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse