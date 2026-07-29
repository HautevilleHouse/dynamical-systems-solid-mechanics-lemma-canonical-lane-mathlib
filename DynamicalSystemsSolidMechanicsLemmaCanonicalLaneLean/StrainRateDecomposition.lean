import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean

structure StrainRateDecompositionPackage where
  strainRateTensor : Type u
  symmetricPart : Prop
  skewSymmetricPart : Prop
  volumetricStrainRate : Prop
  deviatoricStrainRate : Prop
  decompositionUnique : Prop

structure StrainRateDecompositionEvidence (S : StrainRateDecompositionPackage) where
  symmetricPartClosed : S.symmetricPart
  skewSymmetricPartClosed : S.skewSymmetricPart
  volumetricStrainRateClosed : S.volumetricStrainRate
  deviatoricStrainRateClosed : S.deviatoricStrainRate
  decompositionUniqueClosed : S.decompositionUnique

def StrainRateDecompositionClosed (S : StrainRateDecompositionPackage) : Prop :=
  S.symmetricPart ∧ S.skewSymmetricPart ∧ S.volumetricStrainRate ∧ S.deviatoricStrainRate ∧ S.decompositionUnique

theorem strain_rate_decomposition_closed_from_evidence
    (S : StrainRateDecompositionPackage) (E : StrainRateDecompositionEvidence S) :
    StrainRateDecompositionClosed S := by
  exact And.intro E.symmetricPartClosed
    (And.intro E.skewSymmetricPartClosed
      (And.intro E.volumetricStrainRateClosed
        (And.intro E.deviatoricStrainRateClosed E.decompositionUniqueClosed)))

end DynamicalSystemsSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse