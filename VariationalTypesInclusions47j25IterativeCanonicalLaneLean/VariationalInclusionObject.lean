import HautevilleHouse.VariationalTypesInclusions47j25IterativeCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure VariationalInclusionObject where
  space : Type u
  topology : TopologicalSpace space
  operator : space → space
  setValuedMap : space → Set (space)
  iterativeProcessDefined : Prop
  fixedPointCondition : Prop
  inclusionSolved : Prop
  conclusion : inclusionSolved

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse