import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsSecondOrderEllipticCanonicalLaneLean

structure RegularityEstimatesPackage where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  holderEstimates : Prop
  schauderEstimates : Prop

structure RegularityEstimatesEvidence (R : RegularityEstimatesPackage) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  holderEstimatesClosed : R.holderEstimates
  schauderEstimatesClosed : R.schauderEstimates

def RegularityEstimatesClosed (R : RegularityEstimatesPackage) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.holderEstimates ∧ R.schauderEstimates

theorem regularity_estimates_closed_from_evidence
    (R : RegularityEstimatesPackage) (Ev : RegularityEstimatesEvidence R) :
    RegularityEstimatesClosed R := by
  exact And.intro Ev.interiorRegularityClosed
    (And.intro Ev.boundaryRegularityClosed
      (And.intro Ev.holderEstimatesClosed Ev.schauderEstimatesClosed))

end VariationalMethodsSecondOrderEllipticCanonicalLaneLean
end HautevilleHouse
