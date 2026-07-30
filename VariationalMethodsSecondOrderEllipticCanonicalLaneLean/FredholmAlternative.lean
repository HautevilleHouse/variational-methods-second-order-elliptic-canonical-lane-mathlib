import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsSecondOrderElliptic.LaxMilgramBridge

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderElliptic

structure FredholmPackage {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (H : SobolevSpace Ω) where
  operator : H.carrier → H.carrier
  compactPerturbation : Prop
  fredholmIndex : ℤ
  kernelDimension : ℕ

def gateClosed {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (A : SobolevAdmissibleObject Ω) : Prop :=
  A.boundedDomain ∧ A.lipschitzBoundary

theorem gate_from_admissible_class {Ω : Type*} [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω]
  (A : SobolevAdmissibleObject Ω) : gateClosed A := by
  exact And.intro A.boundedDomain A.lipschitzBoundary

end VariationalMethodsSecondOrderElliptic
end HautevilleHouse