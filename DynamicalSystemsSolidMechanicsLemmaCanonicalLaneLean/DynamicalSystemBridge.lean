import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type
  timeDomain : Type
  evolutionOperator : timeDomain → stateSpace → stateSpace
  continuity : Prop
  groupProperty : Prop
  invariantMeasures : Prop

structure DynamicalSystemEvidence (D : DynamicalSystem) where
  continuityClosed : D.continuity
  groupPropertyClosed : D.groupProperty
  invariantMeasuresClosed : D.invariantMeasures

def DynamicalSystemClosed (D : DynamicalSystem) : Prop :=
  D.continuity ∧ D.groupProperty ∧ D.invariantMeasures

theorem dynamical_system_closed_from_evidence (D : DynamicalSystem)
    (E : DynamicalSystemEvidence D) : DynamicalSystemClosed D := by
  exact And.intro E.continuityClosed (And.intro E.groupPropertyClosed E.invariantMeasuresClosed)

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse