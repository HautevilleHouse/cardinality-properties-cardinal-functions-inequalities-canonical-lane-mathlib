import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

structure CardinalAdmittedObject where
  kappa : Type u
  infinite : Prop
  powerSetLarger : Prop
  conclusion : powerSetLarger

structure AdmissibleClass where
  object : CardinalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse
