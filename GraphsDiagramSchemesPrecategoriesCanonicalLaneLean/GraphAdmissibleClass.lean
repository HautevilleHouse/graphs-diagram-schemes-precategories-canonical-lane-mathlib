import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure GraphAdmissibleObject where
  carrier : Type u
  vertices : carrier → Prop
  edges : carrier → carrier → Prop
  diagramCommutes : Prop

structure GraphAdmittedObject where
  object : GraphAdmissibleObject
  closureCondition : Prop
  conclusion : closureCondition

def GraphWitnessClosed (O : GraphAdmittedObject) : Prop :=
  O.closureCondition

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse