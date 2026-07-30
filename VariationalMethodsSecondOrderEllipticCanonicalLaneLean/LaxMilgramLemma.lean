import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure LaxMilgramPackage where
  H : Type u
  innerProduct : H → H → ℝ
  norm : H → ℝ
  bilinearForm : H → H → ℝ
  coercivity : ∃ α > 0, ∀ u : H, bilinearForm u u ≥ α * (norm u)^2
  boundedness : ∃ β > 0, ∀ u v : H, bilinearForm u v ≤ β * norm u * norm v
  linearFunctional : H → ℝ
  continuity : ∃ C > 0, ∀ v : H, linearFunctional v ≤ C * norm v

structure LaxMilgramEvidence (L : LaxMilgramPackage) where
  coercivityClosed : L.coercivity
  boundednessClosed : L.boundedness
  continuityClosed : L.continuity

def LaxMilgramClosed (L : LaxMilgramPackage) : Prop :=
  L.coercivity ∧ L.boundedness ∧ L.continuity

theorem lax_milgram_closed_from_evidence (L : LaxMilgramPackage) (E : LaxMilgramEvidence L) : LaxMilgramClosed L := by
  exact And.intro E.coercivityClosed (And.intro E.boundednessClosed E.continuityClosed)

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse
