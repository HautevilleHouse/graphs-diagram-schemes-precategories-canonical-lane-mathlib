import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (L : Limit A.object.diagram), L.limitObject = A.object.scheme

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let L : Limit A.object.diagram := A.object.limit
  exact ⟨L, rfl⟩

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
