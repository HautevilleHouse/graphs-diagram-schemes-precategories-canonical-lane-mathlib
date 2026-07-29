import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure GraphCategory where
  objects : Type u
  homSets : (X Y : objects) → Type v
  identity : (X : objects) → homSets X X
  composition : (X Y Z : objects) → homSets X Y → homSets Y Z → homSets X Z
  associativity : ∀ (X Y Z W : objects) (f : homSets X Y) (g : homSets Y Z) (h : homSets Z W), composition X Y W (composition X Y Z f g) h = composition X Z W f (composition Y Z W g h)
  identityLaw : ∀ (X Y : objects) (f : homSets X Y), composition X X Y (identity X) f = f ∧ composition X Y Y f (identity Y) = f

def oppositeCategory (C : GraphCategory) : GraphCategory where
  objects := C.objects
  homSets X Y := C.homSets Y X
  identity X := C.identity X
  composition X Y Z f g := C.composition Z Y X g f
  associativity := by
    intro X Y Z W f g h
    simp [C.associativity]
  identityLaw := by
    intro X Y f
    exact C.identityLaw Y X f

theorem opposite_opposite (C : GraphCategory) : oppositeCategory (oppositeCategory C) = C := by
  rfl

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
