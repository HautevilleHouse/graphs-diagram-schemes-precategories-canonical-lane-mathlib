import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

def ConstrainedGraphsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphs_endgame (A : AdmissibleClass) : ConstrainedGraphsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
