import variationalMethodsSecondOrderEllipticCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String := "variational-methods-second-order-elliptic-canonical-lane"
def sourceDescription : String := "Variational methods for second order elliptic PDEs"
def sourceTheoremBoundary : String := "classical boundary carried"
def baselineCertificateLane : String := "manifold_constrained"
def baselineCertificateAllPass : Bool := true
def outsideConstantDependencyCount : Nat := 0

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse
