import canonicalLaneMathlib.AdmissibleClass
import GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.GraphObjects

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure PrecategoryCompositionPackage (P : PrecategoryObject) where
  precategory : P
  compositionAssociative : ∀ {A B C D : P.objects} (f : P.morphisms A B) (g : P.morphisms B C) (h : P.morphisms C D),
    P.composition (P.composition f g) h = P.composition f (P.composition g h)
  identityLeft : ∀ {A B : P.objects} (f : P.morphisms A B), P.composition (P.identity A) f = f
  identityRight : ∀ {A B : P.objects} (f : P.morphisms A B), P.composition f (P.identity B) = f

structure PrecategoryCompositionEvidence {P : PrecategoryObject} (C : PrecategoryCompositionPackage P) where
  compositionAssociativeClosed : C.compositionAssociative
  identityLeftClosed : C.identityLeft
  identityRightClosed : C.identityRight

def PrecategoryCompositionClosed {P : PrecategoryObject} (C : PrecategoryCompositionPackage P) : Prop :=
  C.compositionAssociative ∧ C.identityLeft ∧ C.identityRight

theorem precategory_composition_closed_from_evidence
    {P : PrecategoryObject} (C : PrecategoryCompositionPackage P)
    (E : PrecategoryCompositionEvidence C) : PrecategoryCompositionClosed C := by
  exact And.intro E.compositionAssociativeClosed (And.intro E.identityLeftClosed E.identityRightClosed)

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
