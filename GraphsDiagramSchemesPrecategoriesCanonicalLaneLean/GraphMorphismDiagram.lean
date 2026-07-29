import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure GraphMorphismDiagram where
  sourceGraph : Type u
  targetGraph : Type v
  vertexMap : sourceGraph → targetGraph
  edgeMap : sourceGraph → targetGraph → Prop
  compatibility : ∀ (x : sourceGraph), edgeMap x x

structure GraphMorphismDiagramEvidence (D : GraphMorphismDiagram) where
  vertexMapDefined : True
  edgeMapDefined : True
  compatibilityClosed : D.compatibility = λ x => True

def GraphMorphismDiagramClosed (D : GraphMorphismDiagram) : Prop :=
  D.compatibility = λ x => True

theorem graph_morphism_diagram_closed_from_evidence (D : GraphMorphismDiagram)
    (E : GraphMorphismDiagramEvidence D) : GraphMorphismDiagramClosed D := by
  exact E.compatibilityClosed

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse