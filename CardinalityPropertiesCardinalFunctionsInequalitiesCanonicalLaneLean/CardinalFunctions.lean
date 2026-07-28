import CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CardinalFunctionsInequalities

structure CardinalFunctionsPackage where
  continuumFunction : Type u → Type u
  cardinalExponentiation : Type u → Type u → Type u
  cofinality : Type u → Type u
  continuumHypothesis : Prop
  generalizedContinuumHypothesis : Prop
  cofinalityRegular : Prop

def ContinuumFunction (κ : Type u) : Type u := 
  CardinalFunctionsPackage.continuumFunction κ

def CardinalExponentiation (κ λ : Type u) : Type u :=
  CardinalFunctionsPackage.cardinalExponentiation κ λ

def Cofinality (κ : Type u) : Type u :=
  CardinalFunctionsPackage.cofinality κ

end CardinalFunctionsInequalities
end HautevilleHouse
