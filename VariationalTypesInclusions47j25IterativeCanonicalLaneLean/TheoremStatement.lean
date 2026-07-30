import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalTypesInclusions47j25IterativeCanonicalLaneLean

structure VariationalIterativeAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  iterativeMethod : Prop
  inclusionSolved : Prop
  conclusion : inclusionSolved

def VariationalIterativeWitnessClosed (O : VariationalIterativeAdmittedObject) : Prop :=
  O.inclusionSolved

end VariationalTypesInclusions47j25IterativeCanonicalLaneLean
end HautevilleHouse