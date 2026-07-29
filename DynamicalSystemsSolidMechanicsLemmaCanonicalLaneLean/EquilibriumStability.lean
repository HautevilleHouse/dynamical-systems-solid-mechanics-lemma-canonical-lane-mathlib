import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure EquilibriumStabilityPackage where
  equilibriumPoint : Prop
  lyapunovFunction : Prop
  stabilityCondition : Prop
  asymptoticStability : Prop

structure EquilibriumStabilityEvidence (P : EquilibriumStabilityPackage) where
  equilibriumPointClosed : P.equilibriumPoint
  lyapunovFunctionClosed : P.lyapunovFunction
  stabilityConditionClosed : P.stabilityCondition
  asymptoticStabilityClosed : P.asymptoticStability

def EquilibriumStabilityClosed (P : EquilibriumStabilityPackage) : Prop :=
  P.equilibriumPoint ∧ P.lyapunovFunction ∧ P.stabilityCondition ∧ P.asymptoticStability

theorem equilibrium_stability_closed_from_evidence (P : EquilibriumStabilityPackage)
    (E : EquilibriumStabilityEvidence P) : EquilibriumStabilityClosed P := by
  exact And.intro E.equilibriumPointClosed
    (And.intro E.lyapunovFunctionClosed
      (And.intro E.stabilityConditionClosed E.asymptoticStabilityClosed))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse