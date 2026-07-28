import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

structure PcfTheoryPackage where
  pcfFamily : Cardinal → Set Cardinal
  cofinalityStructure : (a : Cardinal) → cf(pcfFamily a) ≤ 2^a
  shelahInequality : ∀ κ, κ ^ cf(κ) < ℶ_ω(κ)

structure PcfTheoryEvidence (P : PcfTheoryPackage) where
  cofinalityStructureClosed : P.cofinalityStructure
  shelahInequalityClosed : P.shelahInequality

def PcfTheoryClosed (P : PcfTheoryPackage) : Prop :=
  P.cofinalityStructure ∧ P.shelahInequality

theorem pcf_theory_closed_from_evidence (P : PcfTheoryPackage)
    (E : PcfTheoryEvidence P) : PcfTheoryClosed P := by
  exact And.intro E.cofinalityStructureClosed E.shelahInequalityClosed

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse
