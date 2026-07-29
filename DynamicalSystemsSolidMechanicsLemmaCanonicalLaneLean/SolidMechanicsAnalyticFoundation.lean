import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure SolidMechanicsAnalyticFoundation where
  elasticity : ElasticityPackage
  elasticityEvidence : ElasticityEvidence elasticity
  dynamics : DynamicsPackage
  dynamicsEvidence : DynamicsEvidence dynamics
  lemma : SolidMechanicsLemma
  lemmaEvidence : SolidMechanicsLemmaEvidence lemma

def SolidMechanicsAnalyticFoundationClosed (A : SolidMechanicsAnalyticFoundation) : Prop :=
  ElasticityClosed A.elasticity ∧ DynamicsClosed A.dynamics ∧ SolidMechanicsLemmaClosed A.lemma

theorem solid_mechanics_analytic_foundation_closed_from_evidence (A : SolidMechanicsAnalyticFoundation) :
    SolidMechanicsAnalyticFoundationClosed A := by
  exact And.intro (elasticity_closed_from_evidence A.elasticity A.elasticityEvidence)
        (And.intro (dynamics_closed_from_evidence A.dynamics A.dynamicsEvidence)
           (solid_mechanics_lemma_closed_from_evidence A.lemma A.lemmaEvidence))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
