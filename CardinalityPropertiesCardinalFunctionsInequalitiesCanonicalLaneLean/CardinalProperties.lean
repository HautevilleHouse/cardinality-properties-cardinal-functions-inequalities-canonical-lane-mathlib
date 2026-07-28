import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

structure CardinalPropertiesPackage where
  regularity : Prop
  cofinality : Prop
  limitCardinal : Prop
  inaccessibleCardinal : Prop
  regularityClosed : regularity
  cofinalityClosed : cofinality
  limitCardinalClosed : limitCardinal
  inaccessibleCardinalClosed : inaccessibleCardinal

structure CardinalPropertiesEvidence (P : CardinalPropertiesPackage) where
  regularityCl : P.regularity
  cofinalityCl : P.cofinality
  limitCl : P.limitCardinal
  inaccessibleCl : P.inaccessibleCardinal

def CardinalPropertiesClosed (P : CardinalPropertiesPackage) : Prop :=
  P.regularity ∧ P.cofinality ∧ P.limitCardinal ∧ P.inaccessibleCardinal

theorem cardinal_properties_closed_from_evidence (P : CardinalPropertiesPackage)
    (E : CardinalPropertiesEvidence P) : CardinalPropertiesClosed P := by
  exact And.intro E.regularityCl
    (And.intro E.cofinalityCl
      (And.intro E.limitCl E.inaccessibleCl))

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse