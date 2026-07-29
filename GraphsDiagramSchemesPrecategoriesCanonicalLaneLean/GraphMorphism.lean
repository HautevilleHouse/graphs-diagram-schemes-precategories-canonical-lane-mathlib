import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure GraphMorphism (G H : GraphObject) where
  vertexMap : G.vertexType → H.vertexType
  edgeMap : G.edgeType → H.edgeType
  sourceCompatibility : ∀ (e : G.edgeType), vertexMap (G.source e) = H.source (edgeMap e)
  targetCompatibility : ∀ (e : G.edgeType), vertexMap (G.target e) = H.target (edgeMap e)

structure DiagramMorphism (D E : DiagramObject) where
  objectMap : (i : D.indexCategory) → D.indexObj i → E.indexObj i
  naturality : Prop

structure SchemeMorphism (X Y : SchemeObject) where
  continuousMap : ContinuousMap X.underlyingSet Y.underlyingSet
  sheafMap : X.structureSheaf → Y.structureSheaf
  compatibility : Prop

structure PrecategoryMorphism (C D : PrecategoryObject) where
  objectMap : C.objectType → D.objectType
  morphismMap : (X Y : C.objectType) → C.morphismType X Y → D.morphismType (objectMap X) (objectMap Y)
  functoriality : Prop

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
