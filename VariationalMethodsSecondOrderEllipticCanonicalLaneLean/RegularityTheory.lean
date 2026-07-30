import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsSecondOrderElliptic.LaxMilgramBridge

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderElliptic

structure RegularityPackage {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (H : SobolevSpace Ω) where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  higherRegularity : Prop

structure RegularityEvidence {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  {H : SobolevSpace Ω} (R : RegularityPackage H) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  higherRegularityClosed : R.higherRegularity

def RegularityClosed {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  {H : SobolevSpace Ω} (R : RegularityPackage H) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.higherRegularity

theorem regularity_closed_from_evidence {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  {H : SobolevSpace Ω} (R : RegularityPackage H) (E : RegularityEvidence R) : RegularityClosed R := by
  exact And.intro E.interiorRegularityClosed (And.intro E.boundaryRegularityClosed E.higherRegularityClosed)

end VariationalMethodsSecondOrderElliptic
end HautevilleHouse