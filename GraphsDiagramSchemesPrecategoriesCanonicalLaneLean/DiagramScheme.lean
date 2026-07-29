import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphsDiagramSchemesPrecategories.GraphMorphism

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategories

structure DiagramScheme (C : Type u) [Category.{v} C] where
  underlyingGraph : Graph (C.Obj) (C.Mor)
  srcCompatible : ∀ (f : C.Mor), C.src f = underlyingGraph.src f
  tgtCompatible : ∀ (f : C.Mor), C.tgt f = underlyingGraph.tgt f

structure DiagramMorphism {C D : Type u} [Category.{v} C] [Category.{v} D] (F : DiagramScheme C) (G : DiagramScheme D) where
  objMap : C.Obj → D.Obj
  morMap : C.Mor → D.Mor
  respectsSource : ∀ f, D.src (morMap f) = objMap (C.src f)
  respectsTarget : ∀ f, D.tgt (morMap f) = objMap (C.tgt f)

theorem diagram_morphism_id {C : Type u} [Category.{v} C] (F : DiagramScheme C) : DiagramMorphism F F := by
  refine ⟨id, id, λ f => ?_, λ f => ?_⟩
  · simp
  · simp

end GraphsDiagramSchemesPrecategories
end HautevilleHouse