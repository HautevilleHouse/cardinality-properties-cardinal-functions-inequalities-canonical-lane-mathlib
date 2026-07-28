import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

structure CardinalArithmeticPropertiesPackage where
  regularCardinal : Cardinal → Prop
  singularCardinal : Cardinal → Prop
  cofinality : Cardinal → Cardinal
  stronglyInaccessible : Cardinal → Prop

def CardinalArithmeticPropertiesClosed (P : CardinalArithmeticPropertiesPackage) : Prop :=
  (∀ κ, P.regularCardinal κ ↔ κ = P.cofinality κ) ∧
  (∀ κ, P.singularCardinal κ ↔ κ > P.cofinality κ) ∧
  (∀ κ, P.stronglyInaccessible κ → P.regularCardinal κ)

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse
