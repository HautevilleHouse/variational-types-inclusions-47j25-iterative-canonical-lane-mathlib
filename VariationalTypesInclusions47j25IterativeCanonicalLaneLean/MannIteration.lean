import HautevilleHouse.VariationalTypesInclusions47j25IterativeCanonicalLaneLean.IterativeScheme

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure MannIterationPackage {G : IterativeSchemePackage} where
  relaxationSequence : Type u
  weightSequence : Type v
  fixedPointProperty : Prop
  weakConvergence : Prop
  strongConvergenceCond : Prop

structure MannIterationEvidence {G : IterativeSchemePackage} (M : MannIterationPackage G) where
  fixedPointPropertyClosed : M.fixedPointProperty
  weakConvergenceClosed : M.weakConvergence
  strongConvergenceCondClosed : M.strongConvergenceCond

def MannIterationClosed {G : IterativeSchemePackage} (M : MannIterationPackage G) : Prop :=
  M.fixedPointProperty ∧ M.weakConvergence ∧ M.strongConvergenceCond

theorem mann_iteration_closed_from_evidence {G : IterativeSchemePackage} (M : MannIterationPackage G) (E : MannIterationEvidence M) :
    MannIterationClosed M := by
  exact And.intro E.fixedPointPropertyClosed (And.intro E.weakConvergenceClosed E.strongConvergenceCondClosed)

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse