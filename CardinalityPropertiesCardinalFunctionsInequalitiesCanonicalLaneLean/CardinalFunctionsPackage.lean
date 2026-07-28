import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

structure CardinalFunctionsPackage where
  alephFunction : Ordinal → Cardinal
  bethFunction : Ordinal → Cardinal
  gimelFunction : Cardinal → Cardinal
  alephMonotone : ∀ α β, α ≤ β → alephFunction α ≤ alephFunction β
  bethFixedPoint : ∃ α, bethFunction α = ℵₐ
  gimelRelation : ∀ κ, gimelFunction κ = κ ^ cf(κ)

structure CardinalFunctionsEvidence (P : CardinalFunctionsPackage) where
  alephMonotoneClosed : P.alephMonotone
  bethFixedPointClosed : P.bethFixedPoint
  gimelRelationClosed : P.gimelRelation

def CardinalFunctionsClosed (P : CardinalFunctionsPackage) : Prop :=
  P.alephMonotone ∧ P.bethFixedPoint ∧ P.gimelRelation

theorem cardinal_functions_closed_from_evidence (P : CardinalFunctionsPackage)
    (E : CardinalFunctionsEvidence P) : CardinalFunctionsClosed P := by
  exact And.intro E.alephMonotoneClosed
    (And.intro E.bethFixedPointClosed E.gimelRelationClosed)

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse
