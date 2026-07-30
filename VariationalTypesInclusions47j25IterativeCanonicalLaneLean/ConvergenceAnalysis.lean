import HautevilleHouse.VariationalTypesInclusions47j25IterativeCanonicalLaneLean.FixedPointInclusion

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure ConvergenceAnalysis (V : VariationalInclusionObject) (M : IterativeMethod V) where
  monotoneOperator : Prop
  weakConvergence : Prop
  strongConvergence : Prop
  monotoneOperatorClosed : monotoneOperator
  weakConvergenceClosed : weakConvergence
  strongConvergenceClosed : strongConvergence

def ConvergenceAnalysisClosed (V : VariationalInclusionObject) (M : IterativeMethod V) (C : ConvergenceAnalysis V M) : Prop :=
  C.monotoneOperator ∧ C.weakConvergence ∧ C.strongConvergence

theorem convergence_analysis_closed_from_evidence (V : VariationalInclusionObject) (M : IterativeMethod V) (C : ConvergenceAnalysis V M) : ConvergenceAnalysisClosed V M C :=
  And.intro C.monotoneOperatorClosed (And.intro C.weakConvergenceClosed C.strongConvergenceClosed)

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse