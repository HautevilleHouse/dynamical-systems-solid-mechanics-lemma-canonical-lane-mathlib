import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure PhaseSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalSystemAdmittedObject where
  space : PhaseSpace
  smooth : Prop
  conservative : Prop
  conclusion : smooth ∧ conservative

structure DynamicalSystemEndgameState where
  object : DynamicalSystemAdmittedObject

def DynamicalSystemWitnessClosed (O : DynamicalSystemAdmittedObject) : Prop :=
  O.conclusion

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse