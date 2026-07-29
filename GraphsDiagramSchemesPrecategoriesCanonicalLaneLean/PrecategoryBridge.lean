import HautevilleHouse.GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.SchemeMorphismCategory
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SchemeMorphismCategoryClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A with
  | { object := C, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } => 
    by
      -- We need a witness that C is closed, let's extract from the gateWitness
      have h := A.gateWitness
      -- We assume the gateWitness provides bridgeClosed
      exact h

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse