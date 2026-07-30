import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure NonlinearVariationalProblemPackage where
  eulerLagrangeEquation : Prop
  mountainPassGeometry : Prop
  palaisSmaleCondition : Prop
  criticalPointExists : Prop

structure NonlinearVariationalProblemEvidence (N : NonlinearVariationalProblemPackage) where
  eulerLagrangeEquationClosed : N.eulerLagrangeEquation
  mountainPassGeometryClosed : N.mountainPassGeometry
  palaisSmaleConditionClosed : N.palaisSmaleCondition
  criticalPointExistsClosed : N.criticalPointExists

def NonlinearVariationalProblemClosed (N : NonlinearVariationalProblemPackage) : Prop :=
  N.eulerLagrangeEquation ∧ N.mountainPassGeometry ∧ N.palaisSmaleCondition ∧ N.criticalPointExists

theorem nonlinear_variational_problem_closed_from_evidence
    (N : NonlinearVariationalProblemPackage) (Ev : NonlinearVariationalProblemEvidence N) :
    NonlinearVariationalProblemClosed N := by
  exact And.intro Ev.eulerLagrangeEquationClosed
    (And.intro Ev.mountainPassGeometryClosed
      (And.intro Ev.palaisSmaleConditionClosed Ev.criticalPointExistsClosed))

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse
