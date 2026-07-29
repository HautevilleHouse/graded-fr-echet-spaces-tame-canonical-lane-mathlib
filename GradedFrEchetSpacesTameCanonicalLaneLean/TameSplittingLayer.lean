import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure TameSplittingLayerPackage {G : GradedFrechetNuclearSpacePackage} where
  decompositionIntoLevels : Prop
  tameSplittingProperty : Prop
  interpolationEstimate : Prop

structure TameSplittingLayerEvidence {G : GradedFrechetNuclearSpacePackage} (T : TameSplittingLayerPackage G) where
  decompositionIntoLevelsClosed : T.decompositionIntoLevels
  tameSplittingPropertyClosed : T.tameSplittingProperty
  interpolationEstimateClosed : T.interpolationEstimate

def TameSplittingLayerClosed {G : GradedFrechetNuclearSpacePackage} (T : TameSplittingLayerPackage G) : Prop :=
  T.decompositionIntoLevels ∧ T.tameSplittingProperty ∧ T.interpolationEstimate

theorem tame_splitting_layer_closed_from_evidence
    {G : GradedFrechetNuclearSpacePackage} (T : TameSplittingLayerPackage G)
    (E : TameSplittingLayerEvidence T) : TameSplittingLayerClosed T := by
  exact And.intro E.decompositionIntoLevelsClosed (And.intro E.tameSplittingPropertyClosed E.interpolationEstimateClosed)

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse