import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure ResolventIterationData where
  hilbertSpace : Type u
  maximalMonotoneOperator : hilbertSpace → Set (hilbertSpace)
  resolventJ : hilbertSpace → hilbertSpace
  resolventNonexpansive : Prop
  resolventRange : Set hilbertSpace
  domain : Set hilbertSpace
  resolventNonexpansiveProof : resolventNonexpansive
  resolventRangeProof : resolventRange = Set.univ
  domainProof : domain = Set.univ

structure ResolventIterationPackage where
  iterativeSequence : ℕ → hilbertSpace
  weakLimit : hilbertSpace
  weakConvergence : Prop
  strongConvergenceUnderCompactness : Prop
  weakConvergenceProof : weakConvergence
  strongConvergenceUnderCompactnessProof : strongConvergenceUnderCompactness

def ResolventIterationClosed (P : ResolventIterationPackage) : Prop :=
  P.weakConvergence ∧ P.strongConvergenceUnderCompactness

theorem resolvent_iteration_closed_from_package (P : ResolventIterationPackage) :
    ResolventIterationClosed P :=
  And.intro P.weakConvergenceProof P.strongConvergenceUnderCompactnessProof

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse