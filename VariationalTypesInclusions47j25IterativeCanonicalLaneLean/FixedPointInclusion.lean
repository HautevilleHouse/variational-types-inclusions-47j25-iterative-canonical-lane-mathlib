import HautevilleHouse.VariationalTypesInclusions47j25IterativeCanonicalLaneLean.IterativeMethod

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure FixedPointInclusion (V : VariationalInclusionObject) where
  fixedPointCondition : V.fixedPointCondition
  inclusionSolved : V.inclusionSolved
  fixedPointConditionClosed : fixedPointCondition
  inclusionSolvedClosed : inclusionSolved

def FixedPointInclusionClosed (V : VariationalInclusionObject) (F : FixedPointInclusion V) : Prop :=
  F.fixedPointCondition ∧ F.inclusionSolved

theorem fixed_point_inclusion_closed_from_evidence (V : VariationalInclusionObject) (F : FixedPointInclusion V) : FixedPointInclusionClosed V F :=
  And.intro F.fixedPointConditionClosed F.inclusionSolvedClosed

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse