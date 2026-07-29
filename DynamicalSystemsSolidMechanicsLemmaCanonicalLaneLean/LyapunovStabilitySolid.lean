import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure LyapunovStabilitySolidPackage where
  equilibriumPoint : Type u
  lyapunovFunction : Type v
  positiveDefinite : Prop
  derivativeNegativeSemidefinite : Prop
  stabilityConclusion : Prop
  asymptoticStabilityCondition : Prop

structure LyapunovStabilitySolidEvidence (L : LyapunovStabilitySolidPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNegativeSemidefiniteClosed : L.derivativeNegativeSemidefinite
  stabilityConclusionClosed : L.stabilityConclusion
  asymptoticStabilityConditionClosed : L.asymptoticStabilityCondition

def LyapunovStabilitySolidClosed (L : LyapunovStabilitySolidPackage) : Prop :=
  L.positiveDefinite ∧ L.derivativeNegativeSemidefinite ∧ L.stabilityConclusion ∧ L.asymptoticStabilityCondition

theorem lyapunov_stability_solid_closed_from_evidence (L : LyapunovStabilitySolidPackage) (E : LyapunovStabilitySolidEvidence L) : LyapunovStabilitySolidClosed L := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.derivativeNegativeSemidefiniteClosed (And.intro E.stabilityConclusionClosed E.asymptoticStabilityConditionClosed))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse