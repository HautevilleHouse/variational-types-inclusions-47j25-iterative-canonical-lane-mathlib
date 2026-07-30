import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure VariationaIterativeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VariationaIterativeObject where
  space : VariationaIterativeSpace
  inclusionType : Prop
  iterativeSolutionExists : Prop
  monotoneOperator : Prop
  conclusion : monotoneOperator

structure VariationaIterativeEndgameState where
  object : VariationaIterativeObject

def VariationalInclusionWitnessClosed (O : VariationaIterativeObject) : Prop :=
  O.monotoneOperator

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse