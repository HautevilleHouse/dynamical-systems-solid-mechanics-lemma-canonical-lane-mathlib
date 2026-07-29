import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure SolidMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SolidMechanicsAdmittedObject where
  space : SolidMechanicsSpace
  elasticityTensor : Type
  constitutiveLaw : Prop
  deformationGradient : Type
  internalForces : Type
  conclusion : constitutiveLaw

structure SolidMechanicsEndgameState where
  object : SolidMechanicsAdmittedObject

def SolidMechanicsWitnessClosed (O : SolidMechanicsAdmittedObject) : Prop :=
  O.constitutiveLaw

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
