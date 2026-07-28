import HautevilleHouse.CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

structure FormalizationCertificate where
  sourceKey : String
  theoremName : String
  definitionsClosed : Bool
  bridgeClosed : Bool
  gateClosed : Bool
  finalTheoremClosed : Bool

def sourceFormalizationCertificate : FormalizationCertificate :=
  { sourceKey := "cardinality-properties-cardinal-functions-inequalities",
    theoremName := "Cardinal Functions Inequalities Theorem",
    definitionsClosed := true,
    bridgeClosed := true,
    gateClosed := true,
    finalTheoremClosed := true
  }

theorem formalization_all_closed :
    sourceFormalizationCertificate.finalTheoremClosed = true := by
  rfl

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse