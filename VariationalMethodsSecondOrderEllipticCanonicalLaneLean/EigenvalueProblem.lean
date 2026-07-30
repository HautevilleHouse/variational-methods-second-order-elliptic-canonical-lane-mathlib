import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure EigenvalueProblemPackage where
  rayleighQuotientMinimization : Prop
  discretenessOfSpectrum : Prop
  eigenfunctionRegularity : Prop
  variationalCharacterization : Prop

structure EigenvalueProblemEvidence (E : EigenvalueProblemPackage) where
  rayleighQuotientMinimizationClosed : E.rayleighQuotientMinimization
  discretenessOfSpectrumClosed : E.discretenessOfSpectrum
  eigenfunctionRegularityClosed : E.eigenfunctionRegularity
  variationalCharacterizationClosed : E.variationalCharacterization

def EigenvalueProblemClosed (E : EigenvalueProblemPackage) : Prop :=
  E.rayleighQuotientMinimization ∧ E.discretenessOfSpectrum ∧ E.eigenfunctionRegularity ∧ E.variationalCharacterization

theorem eigenvalue_problem_closed_from_evidence
    (E : EigenvalueProblemPackage) (Ev : EigenvalueProblemEvidence E) :
    EigenvalueProblemClosed E := by
  exact And.intro Ev.rayleighQuotientMinimizationClosed
    (And.intro Ev.discretenessOfSpectrumClosed
      (And.intro Ev.eigenfunctionRegularityClosed Ev.variationalCharacterizationClosed))

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse
