import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure StrainStressConstitutivePackage where
  strainTensor : Type u
  stressTensor : Type v
  constitutiveLaw : Prop
  elasticityTensorDefined : Prop
  hyperelasticPotential : Prop
  smallStrainCompatibility : Prop
  objectiveRate : Prop

structure StrainStressConstitutiveEvidence (C : StrainStressConstitutivePackage) where
  constitutiveLawClosed : C.constitutiveLaw
  elasticityTensorDefinedClosed : C.elasticityTensorDefined
  hyperelasticPotentialClosed : C.hyperelasticPotential
  smallStrainCompatibilityClosed : C.smallStrainCompatibility
  objectiveRateClosed : C.objectiveRate

def StrainStressConstitutiveClosed (C : StrainStressConstitutivePackage) : Prop :=
  C.constitutiveLaw ∧ C.elasticityTensorDefined ∧ C.hyperelasticPotential ∧ C.smallStrainCompatibility ∧ C.objectiveRate

theorem strain_stress_constitutive_closed_from_evidence (C : StrainStressConstitutivePackage) (E : StrainStressConstitutiveEvidence C) : StrainStressConstitutiveClosed C := by
  exact And.intro E.constitutiveLawClosed (And.intro E.elasticityTensorDefinedClosed (And.intro E.hyperelasticPotentialClosed (And.intro E.smallStrainCompatibilityClosed E.objectiveRateClosed)))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse