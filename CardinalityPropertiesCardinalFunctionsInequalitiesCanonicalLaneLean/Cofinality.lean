import CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean.CardinalArithmetic

namespace HautevilleHouse
namespace CardinalFunctionsInequalities

structure CofinalityPackage where
  cofinalityDefined : Prop
  cofinalityRegular : Prop
  cofinalitySingular : Prop
  cofinalityExponentiation : Prop
  cofinalityLimit : Prop

def CofinalityClosed (C : CofinalityPackage) : Prop :=
  C.cofinalityDefined ∧ C.cofinalityRegular ∧ C.cofinalitySingular ∧ C.cofinalityExponentiation ∧ C.cofinalityLimit

end CardinalFunctionsInequalities
end HautevilleHouse
