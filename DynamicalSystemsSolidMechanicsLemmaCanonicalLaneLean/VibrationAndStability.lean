import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure VibrationAndStabilityPackage where
  modalAnalysis : Type u
  naturalFrequencies : Prop
  modeShapes : Prop
  dampingMatrix : Prop
  stabilityCriterion : Prop
  bucklingLoad : Prop

structure VibrationAndStabilityEvidence (V : VibrationAndStabilityPackage) where
  naturalFrequenciesClosed : V.naturalFrequencies
  modeShapesClosed : V.modeShapes
  dampingMatrixClosed : V.dampingMatrix
  stabilityCriterionClosed : V.stabilityCriterion
  bucklingLoadClosed : V.bucklingLoad

def VibrationAndStabilityClosed (V : VibrationAndStabilityPackage) : Prop :=
  V.naturalFrequencies ∧ V.modeShapes ∧ V.dampingMatrix ∧ V.stabilityCriterion ∧ V.bucklingLoad

theorem vibration_and_stability_closed_from_evidence
    (V : VibrationAndStabilityPackage) (E : VibrationAndStabilityEvidence V) :
    VibrationAndStabilityClosed V := by
  exact And.intro E.naturalFrequenciesClosed
    (And.intro E.modeShapesClosed
      (And.intro E.dampingMatrixClosed
        (And.intro E.stabilityCriterionClosed E.bucklingLoadClosed)))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse