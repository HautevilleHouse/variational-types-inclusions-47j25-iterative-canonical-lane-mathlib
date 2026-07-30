import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure VariationalInclusionData where
  space : Type u
  operator : space → space
  setValuedMap : space → Set (space)
  inclusionCondition : Prop
  fixedPointStructure : Prop
  operatorMonotone : Prop
  inclusionConditionProof : inclusionCondition
  fixedPointStructureProof : fixedPointStructure
  operatorMonotoneProof : operatorMonotone

structure VariationalInclusionPackage where
  domain : Type u
  adversarialPerturbation : Type v
  iterativeScheme : Type w
  resolventOperator : domain → domain
  resolventNonexpansive : Prop
  resolventFirmlyNonexpansive : Prop
  iterativeConvergence : Prop
  resolventNonexpansiveProof : resolventNonexpansive
  resolventFirmlyNonexpansiveProof : resolventFirmlyNonexpansive
  iterativeConvergenceProof : iterativeConvergence

def VariationalInclusionClosed (P : VariationalInclusionPackage) : Prop :=
  P.resolventNonexpansive ∧ P.resolventFirmlyNonexpansive ∧ P.iterativeConvergence

theorem variational_inclusion_closed_from_package (P : VariationalInclusionPackage) :
    VariationalInclusionClosed P :=
  And.intro P.resolventNonexpansiveProof
    (And.intro P.resolventFirmlyNonexpansiveProof P.iterativeConvergenceProof)

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse