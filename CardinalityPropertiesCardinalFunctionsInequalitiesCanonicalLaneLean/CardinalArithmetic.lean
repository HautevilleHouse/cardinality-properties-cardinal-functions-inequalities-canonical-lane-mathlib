import CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean.CardinalInequalities

namespace HautevilleHouse
namespace CardinalFunctionsInequalities

structure CardinalArithmeticPackage where
  cardinalAddition : Type u → Type u → Type u
  cardinalMultiplication : Type u → Type u → Type u
  cardinalExponentiationLaw : Prop
  infiniteCardinalAbsorption : Prop
  cardinalSumFormula : Prop

def CardinalArithmeticClosed (A : CardinalArithmeticPackage) : Prop :=
  A.cardinalExponentiationLaw ∧ A.infiniteCardinalAbsorption ∧ A.cardinalSumFormula

end CardinalFunctionsInequalities
end HautevilleHouse
