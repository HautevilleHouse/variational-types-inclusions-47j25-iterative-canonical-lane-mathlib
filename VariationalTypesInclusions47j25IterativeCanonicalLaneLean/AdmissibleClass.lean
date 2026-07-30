import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure AdmissibleClass where
  object : VariationalInclusionPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VariationalInclusionClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse