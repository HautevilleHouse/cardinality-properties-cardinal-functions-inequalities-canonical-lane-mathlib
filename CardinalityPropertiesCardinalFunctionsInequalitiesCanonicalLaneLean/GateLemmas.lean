import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse
