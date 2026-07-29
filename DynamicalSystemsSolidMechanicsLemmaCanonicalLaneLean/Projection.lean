import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dynamicalSystemProjection : Projection DynamicalSystemEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dynamical_system_projection_idempotent (x : DynamicalSystemEndgameState) :
    dynamicalSystemProjection.toFun (dynamicalSystemProjection.toFun x) = dynamicalSystemProjection.toFun x := by
  exact dynamicalSystemProjection.idempotent x

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse