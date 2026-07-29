import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure TameHomologyMappingPackage {G : GradedFrechetNuclearSpacePackage}
    {T : LinearTopologicalTensorProductPackage G} where
  chainComplexDefined : Prop
  homologyComputed : Prop
  tameMappingProperty : Prop

structure TameHomologyMappingEvidence {G : GradedFrechetNuclearSpacePackage}
    {T : LinearTopologicalTensorProductPackage G} (H : TameHomologyMappingPackage G T) where
  chainComplexDefinedClosed : H.chainComplexDefined
  homologyComputedClosed : H.homologyComputed
  tameMappingPropertyClosed : H.tameMappingProperty

def TameHomologyMappingClosed {G : GradedFrechetNuclearSpacePackage}
    {T : LinearTopologicalTensorProductPackage G} (H : TameHomologyMappingPackage G T) : Prop :=
  H.chainComplexDefined ∧ H.homologyComputed ∧ H.tameMappingProperty

theorem tame_homology_mapping_closed_from_evidence
    {G : GradedFrechetNuclearSpacePackage} {T : LinearTopologicalTensorProductPackage G}
    (H : TameHomologyMappingPackage G T) (E : TameHomologyMappingEvidence H) :
    TameHomologyMappingClosed H := by
  exact And.intro E.chainComplexDefinedClosed (And.intro E.homologyComputedClosed E.tameMappingPropertyClosed)

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse