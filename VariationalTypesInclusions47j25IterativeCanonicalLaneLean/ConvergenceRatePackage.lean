import canonicalLaneMathlib.AdmissibleClass
import VariationalTypesInclusions47j25IterativeCanonicalLaneLean.VariationalInclusionsAdmissibleClass
import VariationalTypesInclusions47j25IterativeCanonicalLaneLean.OperatorClassPackage

/-!
# Convergence Rate Package
-/

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure ConvergenceRatePackage {O : VariationalInclusionObject}
    {I : IterativeMethodPackage O} {C : OperatorClassPackage I} (R : ConvergenceRatePackage) where
  linearConvergence : Prop
  superlinearConvergence : Prop
  errorEstimate : Prop
  asymptoticConstant : Prop

structure ConvergenceRateEvidence {O : VariationalInclusionObject}
    {I : IterativeMethodPackage O} {C : OperatorClassPackage I}
    (R : ConvergenceRatePackage) where
  linearConvergenceClosed : R.linearConvergence
  superlinearConvergenceClosed : R.superlinearConvergence
  errorEstimateClosed : R.errorEstimate
  asymptoticConstantClosed : R.asymptoticConstant

def ConvergenceRateClosed {O : VariationalInclusionObject}
    {I : IterativeMethodPackage O} {C : OperatorClassPackage I}
    (R : ConvergenceRatePackage) : Prop :=
  R.linearConvergence ∧ R.superlinearConvergence ∧ R.errorEstimate ∧ R.asymptoticConstant

theorem convergence_rate_closed_from_evidence
    {O : VariationalInclusionObject} {I : IterativeMethodPackage O}
    {C : OperatorClassPackage I} (R : ConvergenceRatePackage)
    (E : ConvergenceRateEvidence R) : ConvergenceRateClosed R := by
  exact And.intro E.linearConvergenceClosed
    (And.intro E.superlinearConvergenceClosed
      (And.intro E.errorEstimateClosed E.asymptoticConstantClosed))

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse