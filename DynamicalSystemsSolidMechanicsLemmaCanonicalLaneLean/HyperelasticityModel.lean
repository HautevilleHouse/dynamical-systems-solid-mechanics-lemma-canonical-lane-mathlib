import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure HyperelasticityPackage where
  deformationGradientField : Type
  strainEnergyDensity : Type
  firstPiolaKirchhoffStress : Type
  constitutiveLaw : Prop
  polyconvexCondition : Prop
  growthCondition : Prop

structure HyperelasticityEvidence (H : HyperelasticityPackage) where
  constitutiveLawClosed : H.constitutiveLaw
  polyconvexConditionClosed : H.polyconvexCondition
  growthConditionClosed : H.growthCondition

def HyperelasticityClosed (H : HyperelasticityPackage) : Prop :=
  H.constitutiveLaw ∧ H.polyconvexCondition ∧ H.growthCondition

theorem hyperelasticity_closed_from_evidence (H : HyperelasticityPackage)
    (E : HyperelasticityEvidence H) : HyperelasticityClosed H := by
  exact And.intro E.constitutiveLawClosed
    (And.intro E.polyconvexConditionClosed E.growthConditionClosed)

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse