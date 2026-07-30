import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure RayleighQuotient (H : Type*) [HilbertSpace H] (a : BilinearForm H) where
  R : (H \ {0}) → ℝ
  Rdef : ∀ u : H \ {0}, R u = a.B u u / ‖u‖^2

structure EigenvalueProblem (H : Type*) [HilbertSpace H] (a : BilinearForm H) (m : LinearForm H) where
  eigenvalue : ℝ
  eigenvector : H
  eigenvectorNonzero : eigenvector ≠ 0
  equation : ∀ v : H, a.B eigenvector v = eigenvalue * m.l (eigenvector * v)

def Spectrum (H : Type*) [HilbertSpace H] (a : BilinearForm H) (m : LinearForm H) : Set ℝ :=
  {λ : ℝ | ∃ u ≠ 0, ∀ v : H, a.B u v = λ * m.l (u * v)}

theorem spectrum_nonempty_compact (H : Type*) [HilbertSpace H] (a : BilinearForm H) (m : LinearForm H) :
    Spectrum H a m ≠ ∅ ∧ IsCompact (Spectrum H a m) := by
  sorry

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse