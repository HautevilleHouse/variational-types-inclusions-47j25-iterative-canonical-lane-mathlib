import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure ProjectionAlgorithmData where
  underlyingSpace : Type u
  constraintSet : Set underlyingSpace
  projection : underlyingSpace → underlyingSpace
  projectionNonexpansive : Prop
  iterationMapping : underlyingSpace → underlyingSpace
  weakConvergence : Prop
  strongConvergence : Prop
  projectionNonexpansiveProof : projectionNonexpansive
  weakConvergenceProof : weakConvergence
  strongConvergenceProof : strongConvergence
  iterationMappingDefined : iterationMapping = λ x => projection x

structure ProjectionAlgorithmPackage where
  algorithmMap : underlyingSpace → underlyingSpace
  fixedPointSet : Set underlyingSpace
  convergenceRate : Nat
  opialCondition : Prop
  demiClosedness : Prop
  opialConditionProof : opialCondition
  demiClosednessProof : demiClosedness

def ProjectionAlgorithmClosed (P : ProjectionAlgorithmPackage) : Prop :=
  P.opialCondition ∧ P.demiClosedness

theorem projection_algorithm_closed_from_package (P : ProjectionAlgorithmPackage) :
    ProjectionAlgorithmClosed P :=
  And.intro P.opialConditionProof P.demiClosednessProof

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse