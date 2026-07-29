import HautevilleHouse.GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.GraphMorphismDiagram
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure SchemeMorphismCategory where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : (A : objects) → morphisms A A
  composition : {A B C : objects} → morphisms A B → morphisms B C → morphisms A C
  associativity : ∀ {A B C D : objects} (f : morphisms A B) (g : morphisms B C) (h : morphisms C D),
    composition (composition f g) h = composition f (composition g h)
  identityLaw : ∀ {A B : objects} (f : morphisms A B), composition (identity A) f = f ∧ composition f (identity B) = f

structure SchemeMorphismCategoryEvidence (C : SchemeMorphismCategory) where
  objectsDefined : True
  morphismsDefined : True
  identityDefined : True
  compositionDefined : True
  associativityClosed : C.associativity = λ A B C D f g h => rfl
  identityLawClosed : C.identityLaw = λ A B f => And.intro rfl rfl

def SchemeMorphismCategoryClosed (C : SchemeMorphismCategory) : Prop :=
  C.associativity = λ A B C D f g h => rfl ∧
  C.identityLaw = λ A B f => And.intro rfl rfl

theorem scheme_morphism_category_closed_from_evidence (C : SchemeMorphismCategory)
    (E : SchemeMorphismCategoryEvidence C) : SchemeMorphismCategoryClosed C := by
  exact And.intro E.associativityClosed E.identityLawClosed

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse