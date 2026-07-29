import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure ConstitutiveTheoryPackage where
  elasticLaw : Prop
  plasticFlow : Prop
  viscoelasticRelaxation : Prop
  hardeningRule : Prop
  damageEvolution : Prop
  closureConditions : Prop

structure ConstitutiveTheoryEvidence (C : ConstitutiveTheoryPackage) where
  elasticLawClosed : C.elasticLaw
  plasticFlowClosed : C.plasticFlow
  viscoelasticRelaxationClosed : C.viscoelasticRelaxation
  hardeningRuleClosed : C.hardeningRule
  damageEvolutionClosed : C.damageEvolution
  closureConditionsClosed : C.closureConditions

def ConstitutiveTheoryClosed (C : ConstitutiveTheoryPackage) : Prop :=
  C.elasticLaw ∧ C.plasticFlow ∧ C.viscoelasticRelaxation ∧
  C.hardeningRule ∧ C.damageEvolution ∧ C.closureConditions

theorem constitutive_theory_closed_from_evidence (C : ConstitutiveTheoryPackage)
    (E : ConstitutiveTheoryEvidence C) : ConstitutiveTheoryClosed C := by
  exact And.intro E.elasticLawClosed
    (And.intro E.plasticFlowClosed
      (And.intro E.viscoelasticRelaxationClosed
        (And.intro E.hardeningRuleClosed
          (And.intro E.damageEvolutionClosed E.closureConditionsClosed))))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse