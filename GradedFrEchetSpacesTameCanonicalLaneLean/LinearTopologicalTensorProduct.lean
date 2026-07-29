import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure LinearTopologicalTensorProductPackage {G : GradedFrechetNuclearSpacePackage} where
  projectiveTensorProduct : Type
  injectiveTensorProduct : Type
  nuclearMappingProperty : Prop
  tameTensorProductStructure : Prop

structure LinearTopologicalTensorProductEvidence {G : GradedFrechetNuclearSpacePackage}
    (T : LinearTopologicalTensorProductPackage G) where
  nuclearMappingPropertyClosed : T.nuclearMappingProperty
  tameTensorProductStructureClosed : T.tameTensorProductStructure

def LinearTopologicalTensorProductClosed {G : GradedFrechetNuclearSpacePackage}
    (T : LinearTopologicalTensorProductPackage G) : Prop :=
  T.nuclearMappingProperty ∧ T.tameTensorProductStructure

theorem linear_topological_tensor_product_closed_from_evidence
    {G : GradedFrechetNuclearSpacePackage} (T : LinearTopologicalTensorProductPackage G)
    (E : LinearTopologicalTensorProductEvidence T) : LinearTopologicalTensorProductClosed T := by
  exact And.intro E.nuclearMappingPropertyClosed E.tameTensorProductStructureClosed

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse