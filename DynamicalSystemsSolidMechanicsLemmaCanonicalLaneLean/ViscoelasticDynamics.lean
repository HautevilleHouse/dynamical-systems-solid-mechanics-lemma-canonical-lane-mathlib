import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure ViscoelasticDynamicsPackage where
  internalVariable : Type
  viscosityTensor : Type
  relaxationFunction : Type
  evolutionEquation : Prop
  thermodynamicConsistency : Prop
  stabilityCondition : Prop

structure ViscoelasticDynamicsEvidence (V : ViscoelasticDynamicsPackage) where
  evolutionEquationClosed : V.evolutionEquation
  thermodynamicConsistencyClosed : V.thermodynamicConsistency
  stabilityConditionClosed : V.stabilityCondition

def ViscoelasticDynamicsClosed (V : ViscoelasticDynamicsPackage) : Prop :=
  V.evolutionEquation ∧ V.thermodynamicConsistency ∧ V.stabilityCondition

theorem viscoelastic_dynamics_closed_from_evidence (V : ViscoelasticDynamicsPackage)
    (E : ViscoelasticDynamicsEvidence V) : ViscoelasticDynamicsClosed V := by
  exact And.intro E.evolutionEquationClosed
    (And.intro E.thermodynamicConsistencyClosed E.stabilityConditionClosed)

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse