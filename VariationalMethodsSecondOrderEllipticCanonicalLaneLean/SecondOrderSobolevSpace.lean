import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderElliptic

structure SobolevSpace (Ω : Type*) [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω] where
  p : ℝ≥1
  k : ℕ
  carrier : Type*
  normedAddCommGroup : NormedAddCommGroup carrier
  innerProduct : RealInnerProduct carrier
  embedding : carrier → (Ω → ℝ)

structure SobolevAdmissibleObject (Ω : Type*) [TopologicalSpace Ω] [MeasureTheory.MeasureSpace Ω] where
  space : SobolevSpace Ω
  boundedDomain : Prop
  lipschitzBoundary : Prop
  zeroTraceSpace : Prop
  conclusion : zeroTraceSpace

def SobolevWitnessClosed (O : SobolevAdmissibleObject Ω) : Prop :=
  O.zeroTraceSpace

end VariationalMethodsSecondOrderElliptic
end HautevilleHouse