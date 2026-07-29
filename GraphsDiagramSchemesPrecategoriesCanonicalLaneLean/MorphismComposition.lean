import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.GraphDiagramSchemesPrecategories

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure MorphismCompositionProof where
  identityMorphisms : Prop
  compositionLaw : Prop
  associativityProof : Prop
  identityLaw : Prop

structure MorphismCompositionEvidence (M : MorphismCompositionProof) where
  identityMorphismsClosed : M.identityMorphisms
  compositionLawClosed : M.compositionLaw
  associativityProofClosed : M.associativityProof
  identityLawClosed : M.identityLaw

def MorphismCompositionClosed (M : MorphismCompositionProof) : Prop :=
  M.identityMorphisms ∧ M.compositionLaw ∧ M.associativityProof ∧ M.identityLaw

theorem morphism_composition_closed_from_evidence (M : MorphismCompositionProof) (E : MorphismCompositionEvidence M) :
    MorphismCompositionClosed M := by
  exact And.intro E.identityMorphismsClosed (And.intro E.compositionLawClosed (And.intro E.associativityProofClosed E.identityLawClosed))

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse