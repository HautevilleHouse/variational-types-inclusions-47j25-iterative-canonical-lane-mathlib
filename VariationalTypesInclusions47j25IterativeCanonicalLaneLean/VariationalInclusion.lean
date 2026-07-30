import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure VariationalInclusionPackage where
  space : Type u
  operator : Type v
  multivaluedField : Type w
  convexStructure : Prop
  monotonicityCondition : Prop
  solutionExistence : Prop
  iterativeMethodConverges : Prop

structure VariationalInclusionEvidence (V : VariationalInclusionPackage) where
  convexStructureClosed : V.convexStructure
  monotonicityConditionClosed : V.monotonicityCondition
  solutionExistenceClosed : V.solutionExistence
  iterativeMethodConvergesClosed : V.iterativeMethodConverges

def VariationalInclusionClosed (V : VariationalInclusionPackage) : Prop :=
  V.convexStructure ∧ V.monotonicityCondition ∧ V.solutionExistence ∧ V.iterativeMethodConverges

theorem variational_inclusion_closed_from_evidence (V : VariationalInclusionPackage)
    (E : VariationalInclusionEvidence V) : VariationalInclusionClosed V := by
  exact And.intro E.convexStructureClosed
    (And.intro E.monotonicityConditionClosed
      (And.intro E.solutionExistenceClosed E.iterativeMethodConvergesClosed))

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse