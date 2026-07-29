import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure CrackPropagationPackage where
  crackTipModel : Type u
  stressIntensityFactor : Prop
  propagationCriterion : Prop
  energyReleaseRate : Prop
  cohesiveZoneModel : Prop
  fatigueCycleCount : Prop

structure CrackPropagationEvidence (C : CrackPropagationPackage) where
  stressIntensityFactorClosed : C.stressIntensityFactor
  propagationCriterionClosed : C.propagationCriterion
  energyReleaseRateClosed : C.energyReleaseRate
  cohesiveZoneModelClosed : C.cohesiveZoneModel
  fatigueCycleCountClosed : C.fatigueCycleCount

def CrackPropagationClosed (C : CrackPropagationPackage) : Prop :=
  C.stressIntensityFactor ∧ C.propagationCriterion ∧ C.energyReleaseRate ∧ C.cohesiveZoneModel ∧ C.fatigueCycleCount

theorem crack_propagation_closed_from_evidence
    (C : CrackPropagationPackage) (E : CrackPropagationEvidence C) :
    CrackPropagationClosed C := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.propagationCriterionClosed
      (And.intro E.energyReleaseRateClosed
        (And.intro E.cohesiveZoneModelClosed E.fatigueCycleCountClosed)))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse