import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure SolidMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : SolidMechanicsSpace
  deformationGradient : Type
  stressTensor : Type
  constitutiveRelation : Prop
  equilibriumSatisfied : Prop
  conclusion : equilibriumSatisfied

structure DynamicalEndgameState where
  object : DynamicalAdmittedObject

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.equilibriumSatisfied

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse