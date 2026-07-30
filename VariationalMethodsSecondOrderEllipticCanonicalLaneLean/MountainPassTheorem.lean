import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsSecondOrderElliptic.LaxMilgramBridge

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderElliptic

structure MountainPassPackage {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (H : SobolevSpace Ω) where
  functional : H.carrier → ℝ
  palaisSmaleCondition : Prop
  mountainPassGeometry : Prop
  criticalPoint : Prop

structure MountainPassEvidence {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  {H : SobolevSpace Ω} (M : MountainPassPackage H) where
  palaisSmaleClosed : M.palaisSmaleCondition
  mountainPassGeometryClosed : M.mountainPassGeometry
  criticalPointClosed : M.criticalPoint

def MountainPassClosed {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  {H : SobolevSpace Ω} (M : MountainPassPackage H) : Prop :=
  M.palaisSmaleCondition ∧ M.mountainPassGeometry ∧ M.criticalPoint

theorem mountain_pass_closed_from_evidence {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  {H : SobolevSpace Ω} (M : MountainPassPackage H) (E : MountainPassEvidence M) : MountainPassClosed M := by
  exact And.intro E.palaisSmaleClosed (And.intro E.mountainPassGeometryClosed E.criticalPointClosed)

end VariationalMethodsSecondOrderElliptic
end HautevilleHouse