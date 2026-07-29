import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SolidMechanicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse