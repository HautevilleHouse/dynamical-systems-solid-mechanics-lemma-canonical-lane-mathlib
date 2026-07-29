import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure HamiltonianDynamicsSolidPackage where
  hamiltonianFunction : Type u
  phaseSpace : Type v
  symplecticForm : Type w
  hamiltonianVectorField : Type x
  hamiltonianWellDefined : Prop
  symplecticFormNondegenerate : Prop
  vectorFieldHamiltonian : Prop
  flowPreservesSymplectic : Prop

structure HamiltonianDynamicsSolidEvidence (H : HamiltonianDynamicsSolidPackage) where
  hamiltonianWellDefinedClosed : H.hamiltonianWellDefined
  symplecticFormNondegenerateClosed : H.symplecticFormNondegenerate
  vectorFieldHamiltonianClosed : H.vectorFieldHamiltonian
  flowPreservesSymplecticClosed : H.flowPreservesSymplectic

def HamiltonianDynamicsSolidClosed (H : HamiltonianDynamicsSolidPackage) : Prop :=
  H.hamiltonianWellDefined ∧ H.symplecticFormNondegenerate ∧ H.vectorFieldHamiltonian ∧ H.flowPreservesSymplectic

theorem hamiltonian_dynamics_solid_closed_from_evidence (H : HamiltonianDynamicsSolidPackage) (E : HamiltonianDynamicsSolidEvidence H) : HamiltonianDynamicsSolidClosed H := by
  exact And.intro E.hamiltonianWellDefinedClosed (And.intro E.symplecticFormNondegenerateClosed (And.intro E.vectorFieldHamiltonianClosed E.flowPreservesSymplecticClosed))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse