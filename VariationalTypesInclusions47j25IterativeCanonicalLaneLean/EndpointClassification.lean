import canonicalLaneMathlib.AdmissibleClass
import VariationalTypesInclusions47j25IterativeCanonicalLaneLean.VariationalInclusionPackage

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure EndpointClassificationPackage (V : VariationalInclusionPackage) where
  solutionSpace : Type u
  uniqueness : Prop
  regularity : Prop
  stabilityUnderPerturbation : Prop
  endpointCondition : Prop

structure EndpointClassificationEvidence {V : VariationalInclusionPackage}
    (E : EndpointClassificationPackage V) where
  uniquenessClosed : E.uniqueness
  regularityClosed : E.regularity
  stabilityUnderPerturbationClosed : E.stabilityUnderPerturbation
  endpointConditionClosed : E.endpointCondition

def EndpointClassificationClosed {V : VariationalInclusionPackage}
    (E : EndpointClassificationPackage V) : Prop :=
  E.uniqueness ∧ E.regularity ∧ E.stabilityUnderPerturbation ∧ E.endpointCondition

theorem endpoint_classification_closed_from_evidence {V : VariationalInclusionPackage}
    (E : EndpointClassificationPackage V) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.uniquenessClosed (And.intro Ev.regularityClosed
    (And.intro Ev.stabilityUnderPerturbationClosed Ev.endpointConditionClosed))

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse