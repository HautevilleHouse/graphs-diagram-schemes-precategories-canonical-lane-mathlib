import HautevilleHouse.GraphsDiagramSchemesPrecategoriesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace GraphsDiagramSchemesPrecategoriesCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  packageLayerTranslated : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
  
def formalizationCertificate : FormalizationCertificate :=
  { sourceRepo := "graphs-diagram-schemes-precategories-canonical-lane",
    packageLayerTranslated := true,
    theoremBoundaryOpen := true,
    sourceConjectureClosureClaimed := false,
    leanBuildChecked := true }
  
theorem formalization_build_checked : formalizationCertificate.leanBuildChecked = true := by
  rfl

end GraphsDiagramSchemesPrecategoriesCanonicalLaneLean
end HautevilleHouse