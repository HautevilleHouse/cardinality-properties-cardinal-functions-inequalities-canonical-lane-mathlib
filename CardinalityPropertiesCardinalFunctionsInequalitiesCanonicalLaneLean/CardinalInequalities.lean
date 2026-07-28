import CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean.CardinalFunctions

namespace HautevilleHouse
namespace CardinalFunctionsInequalities

structure CardinalInequalitiesPackage where
  koenigTheorem : Prop
  cantorTheorem : Prop
  continuumHypothesisInequality : Prop
  cofinalityInequality : Prop
  exponentiationInequality : Prop

def CardinalInequalitiesClosed (C : CardinalInequalitiesPackage) : Prop :=
  C.koenigTheorem ∧ C.cantorTheorem ∧ C.continuumHypothesisInequality ∧ C.cofinalityInequality ∧ C.exponentiationInequality

end CardinalFunctionsInequalities
end HautevilleHouse
