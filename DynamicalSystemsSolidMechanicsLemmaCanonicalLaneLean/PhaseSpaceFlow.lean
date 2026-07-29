import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure PhaseSpaceFlowPackage where
  vectorField : Prop
  flowMap : Prop
  existenceInterval : Prop
  uniquenessOfTrajectories : Prop

structure PhaseSpaceFlowEvidence (P : PhaseSpaceFlowPackage) where
  vectorFieldClosed : P.vectorField
  flowMapClosed : P.flowMap
  existenceIntervalClosed : P.existenceInterval
  uniquenessOfTrajectoriesClosed : P.uniquenessOfTrajectories

def PhaseSpaceFlowClosed (P : PhaseSpaceFlowPackage) : Prop :=
  P.vectorField ∧ P.flowMap ∧ P.existenceInterval ∧ P.uniquenessOfTrajectories

theorem phase_space_flow_closed_from_evidence (P : PhaseSpaceFlowPackage)
    (E : PhaseSpaceFlowEvidence P) : PhaseSpaceFlowClosed P := by
  exact And.intro E.vectorFieldClosed
    (And.intro E.flowMapClosed
      (And.intro E.existenceIntervalClosed E.uniquenessOfTrajectoriesClosed))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse