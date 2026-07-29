import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure ElasticWaveEquationPackage where
  waveSpeed : Type u
  displacementField : Type v
  pWaveSpeed : Prop
  sWaveSpeed : Prop
  waveEquationSatisfied : Prop
  boundaryConditions : Prop
  initialConditions : Prop

structure ElasticWaveEquationEvidence (E : ElasticWaveEquationPackage) where
  pWaveSpeedClosed : E.pWaveSpeed
  sWaveSpeedClosed : E.sWaveSpeed
  waveEquationSatisfiedClosed : E.waveEquationSatisfied
  boundaryConditionsClosed : E.boundaryConditions
  initialConditionsClosed : E.initialConditions

def ElasticWaveEquationClosed (E : ElasticWaveEquationPackage) : Prop :=
  E.pWaveSpeed ∧ E.sWaveSpeed ∧ E.waveEquationSatisfied ∧ E.boundaryConditions ∧ E.initialConditions

theorem elastic_wave_equation_closed_from_evidence (E : ElasticWaveEquationPackage) (Ev : ElasticWaveEquationEvidence E) : ElasticWaveEquationClosed E := by
  exact And.intro Ev.pWaveSpeedClosed (And.intro Ev.sWaveSpeedClosed (And.intro Ev.waveEquationSatisfiedClosed (And.intro Ev.boundaryConditionsClosed Ev.initialConditionsClosed)))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse