import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalTypesInclusions47j25IterativeCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

def ConstrainedVariationalInclusionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variational_inclusion_endgame (A : AdmissibleClass) :
    ConstrainedVariationalInclusionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse