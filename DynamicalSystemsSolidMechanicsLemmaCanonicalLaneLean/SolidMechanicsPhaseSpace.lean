import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure SolidMechanicsPhaseSpace where
  configurationManifold : Type u
  tangentBundle : Type v
  cotangentBundle : Type w
  lagrangianFunction : Type x
  hamiltonianFunction : Type y
  smoothLagrangian : Prop
  smoothHamiltonian : Prop
  legendreTransformDefined : Prop
  phaseSpaceCompact : Prop

structure SolidMechanicsPhaseSpaceEvidence (P : SolidMechanicsPhaseSpace) where
  smoothLagrangianClosed : P.smoothLagrangian
  smoothHamiltonianClosed : P.smoothHamiltonian
  legendreTransformDefinedClosed : P.legendreTransformDefined
  phaseSpaceCompactClosed : P.phaseSpaceCompact

def SolidMechanicsPhaseSpaceClosed (P : SolidMechanicsPhaseSpace) : Prop :=
  P.smoothLagrangian ∧ P.smoothHamiltonian ∧ P.legendreTransformDefined ∧ P.phaseSpaceCompact

theorem solid_mechanics_phase_space_closed_from_evidence (P : SolidMechanicsPhaseSpace) (E : SolidMechanicsPhaseSpaceEvidence P) : SolidMechanicsPhaseSpaceClosed P := by
  exact And.intro E.smoothLagrangianClosed (And.intro E.smoothHamiltonianClosed (And.intro E.legendreTransformDefinedClosed E.phaseSpaceCompactClosed))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse