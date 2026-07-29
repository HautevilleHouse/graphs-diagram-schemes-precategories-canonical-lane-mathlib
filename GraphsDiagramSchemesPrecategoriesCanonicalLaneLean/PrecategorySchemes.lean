import GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.GraphAdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure PrecategoryPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  composition : ∀ A B C, morphisms A B → morphisms B C → morphisms A C
  identity : ∀ A, morphisms A A
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

structure PrecategoryEvidence (P : PrecategoryPackage) where
  associativityClosed : P.associativity
  identityLeftClosed : P.identityLeft
  identityRightClosed : P.identityRight

def PrecategoryClosed (P : PrecategoryPackage) : Prop :=
  P.associativity ∧ P.identityLeft ∧ P.identityRight

theorem precategory_closed_from_evidence (P : PrecategoryPackage) (E : PrecategoryEvidence P) :
    PrecategoryClosed P := by
  exact And.intro E.associativityClosed (And.intro E.identityLeftClosed E.identityRightClosed)

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse