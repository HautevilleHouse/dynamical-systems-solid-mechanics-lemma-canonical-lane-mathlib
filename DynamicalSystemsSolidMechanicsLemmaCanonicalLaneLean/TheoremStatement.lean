import DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean.AdmissibleClass
import DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

def ConstrainedDynamicalSolidMechanicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamical_solid_mechanics_endgame (A : AdmissibleClass) :
    ConstrainedDynamicalSolidMechanicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse