import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure VariationalInclusionObject where
  space : Type u
  norm : Type v
  operator : Type w
  inclusionCondition : Prop
  iterativeSolutionExists : Prop
  conclusion : iterativeSolutionExists

structure AdmissibleClass where
  object : VariationalInclusionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VariationalInclusionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def VariationalInclusionWitnessClosed (O : VariationalInclusionObject) : Prop :=
  O.iterativeSolutionExists

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse