import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure VariationalInclusionPackage where
  space : Type u
  norm : space → ℝ
  multivaluedOperator : space → Set (space)
  inclusionCondition : Prop
  existenceResult : Prop
  iterativeScheme : Type v
  convergenceCondition : Prop

structure VariationalInclusionEvidence (V : VariationalInclusionPackage) where
  inclusionConditionClosed : V.inclusionCondition
  existenceResultClosed : V.existenceResult
  convergenceConditionClosed : V.convergenceCondition

def VariationalInclusionClosed (V : VariationalInclusionPackage) : Prop :=
  V.inclusionCondition ∧ V.existenceResult ∧ V.convergenceCondition

theorem variational_inclusion_closed_from_evidence (V : VariationalInclusionPackage)
    (E : VariationalInclusionEvidence V) : VariationalInclusionClosed V := by
  exact And.intro E.inclusionConditionClosed (And.intro E.existenceResultClosed E.convergenceConditionClosed)

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse