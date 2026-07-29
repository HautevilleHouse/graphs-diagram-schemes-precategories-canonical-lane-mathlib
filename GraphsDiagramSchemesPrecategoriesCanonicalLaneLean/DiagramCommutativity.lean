import canonicalLaneMathlib.AdmissibleClass
import GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.GraphObjects

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure DiagramCommutativityPackage (G : GraphObject) (D : DiagramObject) where
  sourceGraph : G
  diagram : D
  squareCommutes : Prop
  triangleCommutes : Prop
  consistency : Prop

structure DiagramCommutativityEvidence {G : GraphObject} {D : DiagramObject} (P : DiagramCommutativityPackage G D) where
  squareCommutesClosed : P.squareCommutes
  triangleCommutesClosed : P.triangleCommutes
  consistencyClosed : P.consistency

def DiagramCommutativityClosed {G : GraphObject} {D : DiagramObject} (P : DiagramCommutativityPackage G D) : Prop :=
  P.squareCommutes ∧ P.triangleCommutes ∧ P.consistency

theorem diagram_commutativity_closed_from_evidence
    {G : GraphObject} {D : DiagramObject} (P : DiagramCommutativityPackage G D)
    (E : DiagramCommutativityEvidence P) : DiagramCommutativityClosed P := by
  exact And.intro E.squareCommutesClosed (And.intro E.triangleCommutesClosed E.consistencyClosed)

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
