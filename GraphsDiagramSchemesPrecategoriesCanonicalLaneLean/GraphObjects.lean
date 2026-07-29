import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure GraphObject where
  vertexType : Type u
  edgeType : Type v
  source : edgeType → vertexType
  target : edgeType → vertexType
  loopCondition : Prop

structure DiagramObject where
  indexCategory : Type w
  indexObj : indexCategory → Type x
  indexHom : (i j : indexCategory) → Type y
  diagramFunctor : (i : indexCategory) → (j : indexCategory) → indexHom i j → (indexObj i → indexObj j)
  functoriality : Prop

structure SchemeObject where
  underlyingSet : Type z
  topology : TopologicalSpace underlyingSet
  structureSheaf : Type a
  sheafCondition : Prop

structure PrecategoryObject where
  objectType : Type b
  morphismType : (X Y : objectType) → Type c
  identity : (X : objectType) → morphismType X X
  composition : (X Y Z : objectType) → morphismType X Y → morphismType Y Z → morphismType X Z
  associativity : Prop
  identityLaw : Prop

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
