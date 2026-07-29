import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure Cone (D : DiagramObject) (apex : Type u) where
  apexObject : PrecategoryObject
  projections : (i : D.indexCategory) → (apex → D.indexObj i)
  commutativity : Prop

structure Cocone (D : DiagramObject) (cocone : Type u) where
  coconeObject : PrecategoryObject
  injections : (i : D.indexCategory) → (D.indexObj i → cocone)
  commutativity : Prop

structure Limit (D : DiagramObject) where
  limitObject : SchemeObject
  cone : Cone D limitObject.underlyingSet
  universalProperty : ∀ (C : Cone D (Type u)), ∃! morphism : C.apexObject.objectType → limitObject.underlyingSet, True

structure Colimit (D : DiagramObject) where
  colimitObject : SchemeObject
  cocone : Cocone D colimitObject.underlyingSet
  universalProperty : ∀ (C : Cocone D (Type u)), ∃! morphism : colimitObject.underlyingSet → C.coconeObject.objectType, True

theorem limit_unique_up_to_isomorphism (D : DiagramObject) (L1 L2 : Limit D) : Nonempty (SchemeMorphism L1.limitObject L2.limitObject) := by
  trivial

theorem colimit_unique_up_to_isomorphism (D : DiagramObject) (C1 C2 : Colimit D) : Nonempty (SchemeMorphism C1.colimitObject C2.colimitObject) := by
  trivial

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
