import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure FracturePackage where
  crackPropagation : Prop
  stressIntensityFactor : Prop
  energyReleaseRate : Prop
  fractureCriterion : Prop
  cohesiveZoneModel : Prop
  fatigueLife : Prop

structure FractureEvidence (F : FracturePackage) where
  crackPropagationClosed : F.crackPropagation
  stressIntensityFactorClosed : F.stressIntensityFactor
  energyReleaseRateClosed : F.energyReleaseRate
  fractureCriterionClosed : F.fractureCriterion
  cohesiveZoneModelClosed : F.cohesiveZoneModel
  fatigueLifeClosed : F.fatigueLife

def FractureClosed (F : FracturePackage) : Prop :=
  F.crackPropagation ∧ F.stressIntensityFactor ∧ F.energyReleaseRate ∧
  F.fractureCriterion ∧ F.cohesiveZoneModel ∧ F.fatigueLife

theorem fracture_closed_from_evidence (F : FracturePackage) (E : FractureEvidence F) :
    FractureClosed F := by
  exact And.intro E.crackPropagationClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.energyReleaseRateClosed
        (And.intro E.fractureCriterionClosed
          (And.intro E.cohesiveZoneModelClosed E.fatigueLifeClosed))))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse