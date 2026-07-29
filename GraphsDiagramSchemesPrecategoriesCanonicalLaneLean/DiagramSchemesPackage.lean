import GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.PrecategorySchemes

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure DiagramSchemePackage (P : PrecategoryPackage) where
  diagramShape : Type u
  diagramFunctor : diagramShape → PrecategoryPackage
  limitCondition : Prop
  colimitCondition : Prop

structure DiagramSchemeEvidence (P : PrecategoryPackage) (D : DiagramSchemePackage P) where
  limitConditionClosed : D.limitCondition
  colimitConditionClosed : D.colimitCondition

def DiagramSchemeClosed (P : PrecategoryPackage) (D : DiagramSchemePackage P) : Prop :=
  D.limitCondition ∧ D.colimitCondition

theorem diagram_scheme_closed_from_evidence (P : PrecategoryPackage) (D : DiagramSchemePackage P) (E : DiagramSchemeEvidence P D) :
    DiagramSchemeClosed P D := by
  exact And.intro E.limitConditionClosed E.colimitConditionClosed

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse