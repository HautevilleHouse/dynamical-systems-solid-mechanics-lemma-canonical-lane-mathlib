import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type
  strainTensor : Type
  linearElasticity : Prop
  compatibility : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  linearElasticityClosed : E.linearElasticity
  compatibilityClosed : E.compatibility

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.linearElasticity ∧ E.compatibility

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.linearElasticityClosed Ev.compatibilityClosed

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
