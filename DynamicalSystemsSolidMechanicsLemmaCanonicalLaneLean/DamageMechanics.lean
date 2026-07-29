import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure DamageMechanicsPackage where
  damageVariable : Type
  damageCriterion : Type
  evolutionLaw : Type
  criterionDefined : Prop
  damageEvolutionDefined : Prop
  thermodynamicAdmissibility : Prop

structure DamageMechanicsEvidence (D : DamageMechanicsPackage) where
  criterionDefinedClosed : D.criterionDefined
  damageEvolutionDefinedClosed : D.damageEvolutionDefined
  thermodynamicAdmissibilityClosed : D.thermodynamicAdmissibility

def DamageMechanicsClosed (D : DamageMechanicsPackage) : Prop :=
  D.criterionDefined ∧ D.damageEvolutionDefined ∧ D.thermodynamicAdmissibility

theorem damage_mechanics_closed_from_evidence (D : DamageMechanicsPackage)
    (E : DamageMechanicsEvidence D) : DamageMechanicsClosed D := by
  exact And.intro E.criterionDefinedClosed
    (And.intro E.damageEvolutionDefinedClosed E.thermodynamicAdmissibilityClosed)

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse