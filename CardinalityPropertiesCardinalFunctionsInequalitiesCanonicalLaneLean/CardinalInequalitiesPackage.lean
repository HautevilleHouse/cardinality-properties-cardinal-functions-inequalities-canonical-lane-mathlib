import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

structure CardinalInequalitiesPackage where
  konigTheorem : ∀ κ λ, cf(κ) ≤ λ ∧ κ < λ ^ cf(κ) → κ ^ cf(κ) < λ ^ cf(κ)
  cantorTheorem : ∀ κ, κ < 2^κ
  cofinalityProperties : ∀ κ, cf(κ) ≤ κ ∧ cf(cf(κ)) = cf(κ)

structure CardinalInequalitiesEvidence (P : CardinalInequalitiesPackage) where
  konigTheoremClosed : P.konigTheorem
  cantorTheoremClosed : P.cantorTheorem
  cofinalityPropertiesClosed : P.cofinalityProperties

def CardinalInequalitiesClosed (P : CardinalInequalitiesPackage) : Prop :=
  P.konigTheorem ∧ P.cantorTheorem ∧ P.cofinalityProperties

theorem cardinal_inequalities_closed_from_evidence (P : CardinalInequalitiesPackage)
    (E : CardinalInequalitiesEvidence P) : CardinalInequalitiesClosed P := by
  exact And.intro E.konigTheoremClosed
    (And.intro E.cantorTheoremClosed E.cofinalityPropertiesClosed)

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse
