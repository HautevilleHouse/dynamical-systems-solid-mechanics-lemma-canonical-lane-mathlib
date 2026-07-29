import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure DynamicsPackage where
  timeDomain : Type
  evolutionEquation : Prop
  wellPosedness : Prop
  stability : Prop

structure DynamicsEvidence (D : DynamicsPackage) where
  evolutionEquationClosed : D.evolutionEquation
  wellPosednessClosed : D.wellPosedness
  stabilityClosed : D.stability

def DynamicsClosed (D : DynamicsPackage) : Prop :=
  D.evolutionEquation ∧ D.wellPosedness ∧ D.stability

theorem dynamics_closed_from_evidence (D : DynamicsPackage) (Ev : DynamicsEvidence D) :
    DynamicsClosed D := by
  exact And.intro Ev.evolutionEquationClosed (And.intro Ev.wellPosednessClosed Ev.stabilityClosed)

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
