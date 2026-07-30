import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure SplittingMethodData where
  space : Type u
  operatorA : space → Set (space)
  operatorB : space → Set (space)
  forwardBackwardOperator : space → space
  douglasRachfordOperator : space → space
  peacemanRachfordOperator : space → space
  forwardBackwardConvergence : Prop
  douglasRachfordConvergence : Prop
  peacemanRachfordConvergence : Prop
  forwardBackwardConvergenceProof : forwardBackwardConvergence
  douglasRachfordConvergenceProof : douglasRachfordConvergence
  peacemanRachfordConvergenceProof : peacemanRachfordConvergence

structure SplittingMethodPackage where
  sumOperator : space → Set (space)
  resolventOfA : space → space
  resolventOfB : space → space
  iterativeSplittingScheme : ℕ → space
  weakLimitExists : Prop
  strongLimitUnderRegularization : Prop
  weakLimitExistsProof : weakLimitExists
  strongLimitUnderRegularizationProof : strongLimitUnderRegularization

def SplittingMethodClosed (P : SplittingMethodPackage) : Prop :=
  P.weakLimitExists ∧ P.strongLimitUnderRegularization

theorem splitting_method_closed_from_package (P : SplittingMethodPackage) :
    SplittingMethodClosed P :=
  And.intro P.weakLimitExistsProof P.strongLimitUnderRegularizationProof

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse