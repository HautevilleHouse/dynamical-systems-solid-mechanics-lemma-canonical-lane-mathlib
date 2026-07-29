import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure PlasticityPackage where
  yieldSurface : Type
  flowRule : Type
  hardeningLaw : Type
  yieldConditionDefined : Prop
  associativeFlow : Prop
  consistencyCondition : Prop

structure PlasticityEvidence (P : PlasticityPackage) where
  yieldConditionDefinedClosed : P.yieldConditionDefined
  associativeFlowClosed : P.associativeFlow
  consistencyConditionClosed : P.consistencyCondition

def PlasticityClosed (P : PlasticityPackage) : Prop :=
  P.yieldConditionDefined ∧ P.associativeFlow ∧ P.consistencyCondition

theorem plasticity_closed_from_evidence (P : PlasticityPackage)
    (E : PlasticityEvidence P) : PlasticityClosed P := by
  exact And.intro E.yieldConditionDefinedClosed
    (And.intro E.associativeFlowClosed E.consistencyConditionClosed)

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse