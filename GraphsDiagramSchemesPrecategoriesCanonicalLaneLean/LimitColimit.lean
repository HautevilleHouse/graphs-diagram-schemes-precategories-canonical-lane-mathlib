import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.MorphismComposition

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure LimitColimitData where
  coneObject : Type u
  coneProjections : Prop
  universalProperty : Prop
  coconeObject : Type v
  coconeInjections : Prop
  coconeUniversalProperty : Prop

structure LimitColimitEvidence (L : LimitColimitData) where
  coneObjectClosed : L.coneObject
  coneProjectionsClosed : L.coneProjections
  universalPropertyClosed : L.universalProperty
  coconeObjectClosed : L.coconeObject
  coconeInjectionsClosed : L.coconeInjections
  coconeUniversalPropertyClosed : L.coconeUniversalProperty

def LimitColimitClosed (L : LimitColimitData) : Prop :=
  L.coneObject ∧ L.coneProjections ∧ L.universalProperty ∧ L.coconeObject ∧ L.coconeInjections ∧ L.coconeUniversalProperty

theorem limit_colimit_closed_from_evidence (L : LimitColimitData) (E : LimitColimitEvidence L) :
    LimitColimitClosed L := by
  exact And.intro E.coneObjectClosed (And.intro E.coneProjectionsClosed (And.intro E.universalPropertyClosed (And.intro E.coconeObjectClosed (And.intro E.coconeInjectionsClosed E.coconeUniversalPropertyClosed))))

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse