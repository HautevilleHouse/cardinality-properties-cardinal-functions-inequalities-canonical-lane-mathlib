import CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CardinalFunctionsInequalities

structure CardinalSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure CardinalAdmittedObject where
  space : CardinalSpace
  cardinalInequality : Prop
  continuumHypothesis : Prop
  cofinalityProperty : Prop
  conclusion : cardinalInequality ∧ continuumHypothesis ∧ cofinalityProperty

structure CardinalEndgameState where
  object : CardinalAdmittedObject

def CardinalWitnessClosed (O : CardinalAdmittedObject) : Prop :=
  O.cardinalInequality ∧ O.continuumHypothesis ∧ O.cofinalityProperty

end CardinalFunctionsInequalities
end HautevilleHouse
