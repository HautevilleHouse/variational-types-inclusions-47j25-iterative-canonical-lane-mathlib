import canonicalLaneMathlib.AdmissibleClass
import VariationalTypesInclusions47j25IterativeCanonicalLaneLean.VariationalInclusionPackage
import VariationalTypesInclusions47j25IterativeCanonicalLaneLean.IterativeMethodPackage

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | VariationalInclusionObject V => VariationalInclusionClosed V
  | IterativeMethodObject I => IterativeMethodClosed I
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  match A.object with
  | VariationalInclusionObject V =>
    exact A.closureWitness
  | IterativeMethodObject I =>
    exact A.closureWitness
  | _ =>
    exact False.elim (A.objectNotRecognized)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse