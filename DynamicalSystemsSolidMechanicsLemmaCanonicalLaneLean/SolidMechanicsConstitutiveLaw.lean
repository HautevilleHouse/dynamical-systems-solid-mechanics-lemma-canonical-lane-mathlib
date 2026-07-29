import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure SolidMechanicsConstitutiveLawPackage where
  stressStrainRelation : Prop
  strainEnergy : Prop
  hyperelasticCondition : Prop
  frameIndifference : Prop

structure SolidMechanicsConstitutiveLawEvidence (P : SolidMechanicsConstitutiveLawPackage) where
  stressStrainRelationClosed : P.stressStrainRelation
  strainEnergyClosed : P.strainEnergy
  hyperelasticConditionClosed : P.hyperelasticCondition
  frameIndifferenceClosed : P.frameIndifference

def SolidMechanicsConstitutiveLawClosed (P : SolidMechanicsConstitutiveLawPackage) : Prop :=
  P.stressStrainRelation ∧ P.strainEnergy ∧ P.hyperelasticCondition ∧ P.frameIndifference

theorem solid_mechanics_constitutive_law_closed_from_evidence (P : SolidMechanicsConstitutiveLawPackage)
    (E : SolidMechanicsConstitutiveLawEvidence P) : SolidMechanicsConstitutiveLawClosed P := by
  exact And.intro E.stressStrainRelationClosed
    (And.intro E.strainEnergyClosed
      (And.intro E.hyperelasticConditionClosed E.frameIndifferenceClosed))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse