import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure AdmittedObject where
  graph : GraphObject
  diagram : DiagramObject
  scheme : SchemeObject
  precategory : PrecategoryObject
  limit : Limit diagram
  colimit : Colimit diagram

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∃ (L : Limit A.object.diagram), L.limitObject = A.object.scheme) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse
