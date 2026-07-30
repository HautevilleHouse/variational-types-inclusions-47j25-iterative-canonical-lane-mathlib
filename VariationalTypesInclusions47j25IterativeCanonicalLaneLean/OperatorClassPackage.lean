import canonicalLaneMathlib.AdmissibleClass
import VariationalTypesInclusions47j25IterativeCanonicalLaneLean.VariationalInclusionsAdmissibleClass
import VariationalTypesInclusions47j25IterativeCanonicalLaneLean.IterativeMethodPackage

/-!
# Operator Class Package
-/

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure OperatorClassPackage {O : VariationalInclusionObject}
    (I : IterativeMethodPackage O) where
  monotoneOperator : Prop
  maximalMonotone : Prop
  resolventDefined : Prop
  yosidaApproximation : Prop

structure OperatorClassEvidence {O : VariationalInclusionObject}
    {I : IterativeMethodPackage O} (C : OperatorClassPackage I) where
  monotoneOperatorClosed : C.monotoneOperator
  maximalMonotoneClosed : C.maximalMonotone
  resolventDefinedClosed : C.resolventDefined
  yosidaApproximationClosed : C.yosidaApproximation

def OperatorClassClosed {O : VariationalInclusionObject}
    {I : IterativeMethodPackage O} (C : OperatorClassPackage I) : Prop :=
  C.monotoneOperator ∧ C.maximalMonotone ∧ C.resolventDefined ∧ C.yosidaApproximation

theorem operator_class_closed_from_evidence
    {O : VariationalInclusionObject} {I : IterativeMethodPackage O}
    (C : OperatorClassPackage I) (E : OperatorClassEvidence C) :
    OperatorClassClosed C := by
  exact And.intro E.monotoneOperatorClosed
    (And.intro E.maximalMonotoneClosed
      (And.intro E.resolventDefinedClosed E.yosidaApproximationClosed))

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse