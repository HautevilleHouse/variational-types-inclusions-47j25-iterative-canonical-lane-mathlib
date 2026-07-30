import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalTypesInclusions47j25IterativeCanonicalLaneLean.VariationalInclusion

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure IterativeMethodPackage {V : VariationalInclusionPackage} where
  iterationMapping : Type u
  initialGuess : Type v
  convergenceRate : Prop
  stoppingCriterion : Prop
  stabilityAnalysis : Prop

structure IterativeMethodEvidence {V : VariationalInclusionPackage}
    (I : IterativeMethodPackage V) where
  convergenceRateClosed : I.convergenceRate
  stoppingCriterionClosed : I.stoppingCriterion
  stabilityAnalysisClosed : I.stabilityAnalysis

def IterativeMethodClosed {V : VariationalInclusionPackage}
    (I : IterativeMethodPackage V) : Prop :=
  I.convergenceRate ∧ I.stoppingCriterion ∧ I.stabilityAnalysis

theorem iterative_method_closed_from_evidence {V : VariationalInclusionPackage}
    (I : IterativeMethodPackage V) (E : IterativeMethodEvidence I) :
    IterativeMethodClosed I := by
  exact And.intro E.convergenceRateClosed
    (And.intro E.stoppingCriterionClosed E.stabilityAnalysisClosed)

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse