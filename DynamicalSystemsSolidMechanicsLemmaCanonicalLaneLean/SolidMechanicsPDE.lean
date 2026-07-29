import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure SolidMechanicsPDEPackage where
  displacementField : Type
  stressTensor : Type
  strainTensor : Type
  equilibriumEquation : Prop
  constitutiveRelation : Prop
  boundaryConditions : Prop
  regularity : Prop

structure SolidMechanicsPDEEvidence (P : SolidMechanicsPDEPackage) where
  equilibriumEquationClosed : P.equilibriumEquation
  constitutiveRelationClosed : P.constitutiveRelation
  boundaryConditionsClosed : P.boundaryConditions
  regularityClosed : P.regularity

def SolidMechanicsPDEClosed (P : SolidMechanicsPDEPackage) : Prop :=
  P.equilibriumEquation ∧ P.constitutiveRelation ∧ P.boundaryConditions ∧ P.regularity

theorem solid_mechanics_pde_closed_from_evidence (P : SolidMechanicsPDEPackage)
    (E : SolidMechanicsPDEEvidence P) : SolidMechanicsPDEClosed P := by
  exact And.intro E.equilibriumEquationClosed (And.intro E.constitutiveRelationClosed
    (And.intro E.boundaryConditionsClosed E.regularityClosed))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse