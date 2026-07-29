import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure SolidMechanicsLemma where
  constitutiveRelation : Prop
  equilibriumCondition : Prop
  boundaryConditions : Prop
  uniqueness : Prop

structure SolidMechanicsLemmaEvidence (L : SolidMechanicsLemma) where
  constitutiveRelationClosed : L.constitutiveRelation
  equilibriumConditionClosed : L.equilibriumCondition
  boundaryConditionsClosed : L.boundaryConditions
  uniquenessClosed : L.uniqueness

def SolidMechanicsLemmaClosed (L : SolidMechanicsLemma) : Prop :=
  L.constitutiveRelation ∧ L.equilibriumCondition ∧ L.boundaryConditions ∧ L.uniqueness

theorem solid_mechanics_lemma_closed_from_evidence (L : SolidMechanicsLemma) (Ev : SolidMechanicsLemmaEvidence L) :
    SolidMechanicsLemmaClosed L := by
  exact And.intro Ev.constitutiveRelationClosed
        (And.intro Ev.equilibriumConditionClosed
          (And.intro Ev.boundaryConditionsClosed Ev.uniquenessClosed))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
