import HautevilleHouse.CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean.CardinalFunctionsPackage

namespace HautevilleHouse
namespace CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean

structure CardinalFunctionAnalyticCertificate {X : Type u} [TopologicalSpace X]
    (P : CardinalFunctionsPackage X) where
  weightInequalityProof : Prop
  densityInequalityProof : Prop
  spreadInequalityProof : Prop
  weightInequalityProofClosed : weightInequalityProof
  densityInequalityProofClosed : densityInequalityProof
  spreadInequalityProofClosed : spreadInequalityProof
  cardinalFunctionsEvidence : CardinalFunctionsEvidence P

def CardinalFunctionAnalyticCertificateClosed {X : Type u} [TopologicalSpace X]
    {P : CardinalFunctionsPackage X} (C : CardinalFunctionAnalyticCertificate P) : Prop :=
  C.weightInequalityProof ∧ C.densityInequalityProof ∧ C.spreadInequalityProof ∧
  CardinalFunctionsPackageClosed P

theorem cardinal_function_analytic_certificate_closed
    {X : Type u} [TopologicalSpace X] {P : CardinalFunctionsPackage X}
    (C : CardinalFunctionAnalyticCertificate P) :
    CardinalFunctionAnalyticCertificateClosed C := by
  exact And.intro C.weightInequalityProofClosed
    (And.intro C.densityInequalityProofClosed
      (And.intro C.spreadInequalityProofClosed
        (cardinal_functions_package_closed_from_evidence P C.cardinalFunctionsEvidence)))

end CardinalityPropertiesCardinalFunctionsInequalitiesCanonicalLaneLean
end HautevilleHouse