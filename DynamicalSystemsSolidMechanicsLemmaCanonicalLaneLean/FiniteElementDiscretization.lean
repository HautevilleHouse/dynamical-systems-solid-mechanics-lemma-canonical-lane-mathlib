import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure FiniteElementDiscretizationPackage where
  meshDescription : Type u
  shapeFunctions : Prop
  stiffnessMatrix : Prop
  massMatrix : Prop
  loadVector : Prop
  boundaryConditions : Prop
  errorEstimates : Prop

structure FiniteElementDiscretizationEvidence (F : FiniteElementDiscretizationPackage) where
  shapeFunctionsClosed : F.shapeFunctions
  stiffnessMatrixClosed : F.stiffnessMatrix
  massMatrixClosed : F.massMatrix
  loadVectorClosed : F.loadVector
  boundaryConditionsClosed : F.boundaryConditions
  errorEstimatesClosed : F.errorEstimates

def FiniteElementDiscretizationClosed (F : FiniteElementDiscretizationPackage) : Prop :=
  F.shapeFunctions ∧ F.stiffnessMatrix ∧ F.massMatrix ∧ F.loadVector ∧ F.boundaryConditions ∧ F.errorEstimates

theorem finite_element_discretization_closed_from_evidence
    (F : FiniteElementDiscretizationPackage) (E : FiniteElementDiscretizationEvidence F) :
    FiniteElementDiscretizationClosed F := by
  exact And.intro E.shapeFunctionsClosed
    (And.intro E.stiffnessMatrixClosed
      (And.intro E.massMatrixClosed
        (And.intro E.loadVectorClosed
          (And.intro E.boundaryConditionsClosed E.errorEstimatesClosed))))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse