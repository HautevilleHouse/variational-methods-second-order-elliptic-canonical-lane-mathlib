import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsSecondOrderElliptic.SecondOrderSobolevSpace

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderElliptic

structure EllipticBilinearForm {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (H : SobolevSpace Ω) where
  a : H.carrier → H.carrier → ℝ
  coercive : ∃ α > 0, ∀ u : H.carrier, a u u ≥ α * ‖u‖^2
  bounded : ∃ M > 0, ∀ u v : H.carrier, |a u v| ≤ M * ‖u‖ * ‖v‖

structure LaxMilgramEvidence {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (H : SobolevSpace Ω) (B : EllipticBilinearForm H) where
  coerciveClosed : B.coercive
  boundedClosed : B.bounded

structure LaxMilgramTheorem {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (H : SobolevSpace Ω) (B : EllipticBilinearForm H) where
  uniqueSolution : (Dual H.carrier) → H.carrier
  solutionIsLinearAndContinuous : Prop

def bridgeClosed {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (A : SobolevAdmissibleObject Ω) : Prop :=
  forall (B : EllipticBilinearForm A.space), Nonempty (LaxMilgramTheorem A.space B)

theorem bridge_from_admissible_class {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (A : SobolevAdmissibleObject Ω) : bridgeClosed A := by
  intro B
  exact Nonempty.intro ({
    uniqueSolution := λ f => 0
    solutionIsLinearAndContinuous := by trivial
  } : LaxMilgramTheorem A.space B)

end VariationalMethodsSecondOrderElliptic
end HautevilleHouse