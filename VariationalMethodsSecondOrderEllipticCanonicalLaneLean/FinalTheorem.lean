import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsSecondOrderElliptic.LaxMilgramBridge
import HautevilleHouse.VariationalMethodsSecondOrderElliptic.FredholmAlternative

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderElliptic

def ConstrainedVariationalClosure (A : SobolevAdmissibleObject Ω) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variational_endgame (A : SobolevAdmissibleObject Ω) : ConstrainedVariationalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalMethodsSecondOrderElliptic
end HautevilleHouse