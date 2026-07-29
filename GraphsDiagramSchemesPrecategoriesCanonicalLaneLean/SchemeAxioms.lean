import canonicalLaneMathlib.AdmissibleClass
import GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.GraphObjects

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure SchemeAxiomsPackage (S : SchemeObject) where
  scheme : S
  incidenceReflexive : ∀ x : S.underlyingGraph.carrier, S.incidenceStructure x x
  incidenceSymmetric : ∀ x y, S.incidenceStructure x y → S.incidenceStructure y x
  incidenceConsistent : ∀ x y, S.incidenceStructure x y → S.underlyingGraph.adjacency x y

structure SchemeAxiomsEvidence {S : SchemeObject} (P : SchemeAxiomsPackage S) where
  incidenceReflexiveClosed : P.incidenceReflexive
  incidenceSymmetricClosed : P.incidenceSymmetric
  incidenceConsistentClosed : P.incidenceConsistent

def SchemeAxiomsClosed {S : SchemeObject} (P : SchemeAxiomsPackage S) : Prop :=
  P.incidenceReflexive ∧ P.incidenceSymmetric ∧ P.incidenceConsistent

theorem scheme_axioms_closed_from_evidence
    {S : SchemeObject} (P : SchemeAxiomsPackage S) (E : SchemeAxiomsEvidence P) :
    SchemeAxiomsClosed P := by
  exact And.intro E.incidenceReflexiveClosed (And.intro E.incidenceSymmetricClosed E.incidenceConsistentClosed)

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
