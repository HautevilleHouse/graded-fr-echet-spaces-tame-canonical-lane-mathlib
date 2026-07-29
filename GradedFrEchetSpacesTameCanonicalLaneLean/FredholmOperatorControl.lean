import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure FredholmOperatorControlPackage {G : GradedFrechetNuclearSpacePackage} where
  fredholmIndexDefined : Prop
  spectralGapBound : Prop
  tameFredholmProperty : Prop

structure FredholmOperatorControlEvidence {G : GradedFrechetNuclearSpacePackage}
    (F : FredholmOperatorControlPackage G) where
  fredholmIndexDefinedClosed : F.fredholmIndexDefined
  spectralGapBoundClosed : F.spectralGapBound
  tameFredholmPropertyClosed : F.tameFredholmProperty

def FredholmOperatorControlClosed {G : GradedFrechetNuclearSpacePackage}
    (F : FredholmOperatorControlPackage G) : Prop :=
  F.fredholmIndexDefined ∧ F.spectralGapBound ∧ F.tameFredholmProperty

theorem fredholm_operator_control_closed_from_evidence
    {G : GradedFrechetNuclearSpacePackage} (F : FredholmOperatorControlPackage G)
    (E : FredholmOperatorControlEvidence F) : FredholmOperatorControlClosed F := by
  exact And.intro E.fredholmIndexDefinedClosed (And.intro E.spectralGapBoundClosed E.tameFredholmPropertyClosed)

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse