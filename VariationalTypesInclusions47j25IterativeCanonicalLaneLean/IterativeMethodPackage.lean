import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure IterativeMethodPackage where
  iterationMapping : Type u
  fixedPointCondition : Prop
  rateOfConvergence : Prop
  stability : Prop
  iterativeAlgorithm : Type v
  stoppingCriterion : Prop

structure IterativeMethodEvidence (I : IterativeMethodPackage) where
  fixedPointConditionClosed : I.fixedPointCondition
  rateOfConvergenceClosed : I.rateOfConvergence
  stabilityClosed : I.stability
  stoppingCriterionClosed : I.stoppingCriterion

def IterativeMethodClosed (I : IterativeMethodPackage) : Prop :=
  I.fixedPointCondition ∧ I.rateOfConvergence ∧ I.stability ∧ I.stoppingCriterion

theorem iterative_method_closed_from_evidence (I : IterativeMethodPackage)
    (E : IterativeMethodEvidence I) : IterativeMethodClosed I := by
  exact And.intro E.fixedPointConditionClosed
    (And.intro E.rateOfConvergenceClosed (And.intro E.stabilityClosed E.stoppingCriterionClosed))

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse