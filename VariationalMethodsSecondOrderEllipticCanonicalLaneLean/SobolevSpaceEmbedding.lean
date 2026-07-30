import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure SobolevSpaceEmbeddingPackage where
  sobolevNormEquivalence : Prop
  compactEmbedding : Prop
  poincareInequality : Prop
  traceOperatorBounded : Prop

structure SobolevSpaceEmbeddingEvidence (S : SobolevSpaceEmbeddingPackage) where
  sobolevNormEquivalenceClosed : S.sobolevNormEquivalence
  compactEmbeddingClosed : S.compactEmbedding
  poincareInequalityClosed : S.poincareInequality
  traceOperatorBoundedClosed : S.traceOperatorBounded

def SobolevSpaceEmbeddingClosed (S : SobolevSpaceEmbeddingPackage) : Prop :=
  S.sobolevNormEquivalence ∧ S.compactEmbedding ∧ S.poincareInequality ∧ S.traceOperatorBounded

theorem sobolev_space_embedding_closed_from_evidence
    (S : SobolevSpaceEmbeddingPackage) (Ev : SobolevSpaceEmbeddingEvidence S) :
    SobolevSpaceEmbeddingClosed S := by
  exact And.intro Ev.sobolevNormEquivalenceClosed
    (And.intro Ev.compactEmbeddingClosed
      (And.intro Ev.poincareInequalityClosed Ev.traceOperatorBoundedClosed))

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse
