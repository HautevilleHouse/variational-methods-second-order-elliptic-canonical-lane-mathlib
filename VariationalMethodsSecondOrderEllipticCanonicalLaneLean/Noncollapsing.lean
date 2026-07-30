import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure NoncollapsingPackage := where
  scaleInvariantBound : Prop
  curvatureControl : Prop
  compactEmbedding : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  scaleInvariantBoundClosed : N.scaleInvariantBound
  curvatureControlClosed : N.curvatureControl
  compactEmbeddingClosed : N.compactEmbedding

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.scaleInvariantBound ∧ N.curvatureControl ∧ N.compactEmbedding

theorem noncollapsing_closed_from_evidence (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantBoundClosed (And.intro E.curvatureControlClosed E.compactEmbeddingClosed)

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse