import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

def ConstrainedSolidMechanicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_solid_mechanics_endgame (A : AdmissibleClass) :
    ConstrainedSolidMechanicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse