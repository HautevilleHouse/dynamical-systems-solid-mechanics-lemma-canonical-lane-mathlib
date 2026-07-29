import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure ContactMechanicsPackage where
  contactInterface : Type u
  normalContactLaw : Prop
  tangentialFrictionLaw : Prop
  stickSlipTransition : Prop
  wearModel : Prop
  impactDynamics : Prop

structure ContactMechanicsEvidence (C : ContactMechanicsPackage) where
  normalContactLawClosed : C.normalContactLaw
  tangentialFrictionLawClosed : C.tangentialFrictionLaw
  stickSlipTransitionClosed : C.stickSlipTransition
  wearModelClosed : C.wearModel
  impactDynamicsClosed : C.impactDynamics

def ContactMechanicsClosed (C : ContactMechanicsPackage) : Prop :=
  C.normalContactLaw ∧ C.tangentialFrictionLaw ∧ C.stickSlipTransition ∧ C.wearModel ∧ C.impactDynamics

theorem contact_mechanics_closed_from_evidence
    (C : ContactMechanicsPackage) (E : ContactMechanicsEvidence C) :
    ContactMechanicsClosed C := by
  exact And.intro E.normalContactLawClosed
    (And.intro E.tangentialFrictionLawClosed
      (And.intro E.stickSlipTransitionClosed
        (And.intro E.wearModelClosed E.impactDynamicsClosed)))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse