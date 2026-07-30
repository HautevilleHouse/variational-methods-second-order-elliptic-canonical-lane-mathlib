import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure LaxMilgramTheoremPackage where
  bilinearFormCoercive : Prop
  bilinearFormBounded : Prop
  linearFunctionalBounded : Prop
  uniqueSolution : Prop

structure LaxMilgramTheoremEvidence (L : LaxMilgramTheoremPackage) where
  bilinearFormCoerciveClosed : L.bilinearFormCoercive
  bilinearFormBoundedClosed : L.bilinearFormBounded
  linearFunctionalBoundedClosed : L.linearFunctionalBounded
  uniqueSolutionClosed : L.uniqueSolution

def LaxMilgramTheoremClosed (L : LaxMilgramTheoremPackage) : Prop :=
  L.bilinearFormCoercive ∧ L.bilinearFormBounded ∧ L.linearFunctionalBounded ∧ L.uniqueSolution

theorem lax_milgram_theorem_closed_from_evidence
    (L : LaxMilgramTheoremPackage) (Ev : LaxMilgramTheoremEvidence L) :
    LaxMilgramTheoremClosed L := by
  exact And.intro Ev.bilinearFormCoerciveClosed
    (And.intro Ev.bilinearFormBoundedClosed
      (And.intro Ev.linearFunctionalBoundedClosed Ev.uniqueSolutionClosed))

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse
