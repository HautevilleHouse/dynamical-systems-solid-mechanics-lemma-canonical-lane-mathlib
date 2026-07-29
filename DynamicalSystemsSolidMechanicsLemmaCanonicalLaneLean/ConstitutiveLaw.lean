import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure ConstitutiveLawPackage where
  stressStrainRelation : Type u
  elasticityTensor : Prop
  hookesLaw : Prop
  linearElasticRange : Prop
  plasticYieldCondition : Prop
  damageEvolution : Prop

structure ConstitutiveLawEvidence (C : ConstitutiveLawPackage) where
  elasticityTensorClosed : C.elasticityTensor
  hookesLawClosed : C.hookesLaw
  linearElasticRangeClosed : C.linearElasticRange
  plasticYieldConditionClosed : C.plasticYieldCondition
  damageEvolutionClosed : C.damageEvolution

def ConstitutiveLawClosed (C : ConstitutiveLawPackage) : Prop :=
  C.elasticityTensor ∧ C.hookesLaw ∧ C.linearElasticRange ∧ C.plasticYieldCondition ∧ C.damageEvolution

theorem constitutive_law_closed_from_evidence
    (C : ConstitutiveLawPackage) (E : ConstitutiveLawEvidence C) :
    ConstitutiveLawClosed C := by
  exact And.intro E.elasticityTensorClosed
    (And.intro E.hookesLawClosed
      (And.intro E.linearElasticRangeClosed
        (And.intro E.plasticYieldConditionClosed E.damageEvolutionClosed)))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse