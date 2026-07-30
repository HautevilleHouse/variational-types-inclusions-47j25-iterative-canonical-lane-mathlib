import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure ExtendedRealConvergenceData where
  sequence : ℕ → ℝ
  epigraphicalLimit : ℝ → ℝ
  convergenceType : String
  boundedness : Prop
  monotonicity : Prop
  boundednessProof : boundedness
  monotonicityProof : monotonicity

structure ExtendedRealConvergencePackage where
  lowerSemicontinuousFunction : ℝ → ℝ
  proximalMapping : ℝ → ℝ
  enoThmApplied : Prop
  convergenceRateEstimate : Prop
  enoThmAppliedProof : enoThmApplied
  convergenceRateEstimateProof : convergenceRateEstimate

def ExtendedRealConvergenceClosed (P : ExtendedRealConvergencePackage) : Prop :=
  P.enoThmApplied ∧ P.convergenceRateEstimate

theorem extended_real_convergence_closed_from_package (P : ExtendedRealConvergencePackage) :
    ExtendedRealConvergenceClosed P :=
  And.intro P.enoThmAppliedProof P.convergenceRateEstimateProof

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse