import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphsDiagramSchemesPrecategories.GraphMorphism

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategories

structure GraphComplex (V E : Type u) [AddCommGroup V] [AddCommGroup E] where
  boundary : E → V
  boundarySq : ∀ e, boundary (boundary e) = 0

structure GraphHomology (V E : Type u) [AddCommGroup V] [AddCommGroup E] (C : GraphComplex V E) where
  cycles : Submodule ℤ E := Submodule.ker (C.boundary)
  boundaries : Submodule ℤ V := Submodule.range (C.boundary)
  homology : Type u := V ⧸ boundaries

theorem homology_group (V E : Type u) [AddCommGroup V] [AddCommGroup E] (C : GraphComplex V E) : AddCommGroup (GraphHomology.homology C) := by
  infer_instance

end GraphsDiagramSchemesPrecategories
end HautevilleHouse