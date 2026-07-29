import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategories

class Precategory (Obj : Type u) : Type (u+1) where
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} (f : Hom X Y) (g : Hom Y Z) → Hom X Z
  idLeft : {X Y : Obj} (f : Hom X Y) → comp (id X) f = f
  idRight : {X Y : Obj} (f : Hom X Y) → comp f (id Y) = f
  assoc : {W X Y Z : Obj} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z) → comp (comp f g) h = comp f (comp g h)

theorem homSet (C : Precategory) (X Y : C.Obj) : Type v := C.Hom X Y

end GraphsDiagramSchemesPrecategories
end HautevilleHouse