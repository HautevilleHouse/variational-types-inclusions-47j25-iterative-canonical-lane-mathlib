import HautevilleHouse.VariationalTypesInclusions47j25IterativeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure IterativeSchemePackage where
  operatorFamily : Type u
  parameterSpace : Type v
  inclusionStructure : Prop
  iterativeMethodDefined : Prop
  convergenceCondition : Prop

structure IterativeSchemeEvidence (P : IterativeSchemePackage) where
  inclusionStructureClosed : P.inclusionStructure
  iterativeMethodDefinedClosed : P.iterativeMethodDefined
  convergenceConditionClosed : P.convergenceCondition

def IterativeSchemeClosed (P : IterativeSchemePackage) : Prop :=
  P.inclusionStructure ∧ P.iterativeMethodDefined ∧ P.convergenceCondition

theorem iterative_scheme_closed_from_evidence (P : IterativeSchemePackage) (E : IterativeSchemeEvidence P) :
    IterativeSchemeClosed P := by
  exact And.intro E.inclusionStructureClosed (And.intro E.iterativeMethodDefinedClosed E.convergenceConditionClosed)

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse