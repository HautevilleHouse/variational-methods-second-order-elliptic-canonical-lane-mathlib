import canonicalLaneMathlib.AdmissibleClass

def variationalMethodObject : String := "variational_methods_second_order_elliptic"

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SecondOrderEllipticOperator where
  domain : VariationalSpace
  codomain : VariationalSpace
  coefficientType : Type
  ellipticityConstant : ℝ
  boundednessConstant : ℝ

structure VariationalAdmittedObject where
  space : VariationalSpace
  operator : SecondOrderEllipticOperator
  wellPosedness : Prop
  solutionExistence : Prop
  solutionRegularity : Prop
  conclusion : wellPosedness ∧ solutionExistence ∧ solutionRegularity

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.wellPosedness ∧ O.solutionExistence ∧ O.solutionRegularity

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse