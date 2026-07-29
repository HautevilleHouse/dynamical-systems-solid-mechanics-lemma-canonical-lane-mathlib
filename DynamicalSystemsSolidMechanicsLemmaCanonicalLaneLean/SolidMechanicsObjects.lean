import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure SolidMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  manifold : Prop
  smoothStructure : Prop

structure SolidMechanicsAdmittedObject where
  space : SolidMechanicsSpace
  strainTensors : Prop
  stressTensors : Prop
  constitutiveLaw : Prop
  conservationLaws : Prop
  boundaryConditions : Prop
  wellPosedness : Prop
  stability : Prop
  conclusion : wellPosedness ∧ stability

structure SolidMechanicsEndgameState where
  object : SolidMechanicsAdmittedObject

def SolidMechanicsWitnessClosed (O : SolidMechanicsAdmittedObject) : Prop :=
  O.wellPosedness ∧ O.stability

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse