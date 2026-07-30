import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalTypesInclusions47j25IterativeCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse