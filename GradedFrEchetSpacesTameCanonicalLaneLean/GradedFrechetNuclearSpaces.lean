import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure GradedFrechetNuclearSpacePackage where
  indexSet : Type
  seminormFamily : indexSet → (Type → ℝ)
  nuclearDecomposition : Prop
  gradedStructure : Prop
  tameCondition : Prop

structure GradedFrechetNuclearSpaceEvidence (G : GradedFrechetNuclearSpacePackage) where
  nuclearDecompositionClosed : G.nuclearDecomposition
  gradedStructureClosed : G.gradedStructure
  tameConditionClosed : G.tameCondition

def GradedFrechetNuclearSpaceClosed (G : GradedFrechetNuclearSpacePackage) : Prop :=
  G.nuclearDecomposition ∧ G.gradedStructure ∧ G.tameCondition

theorem graded_frechet_nuclear_space_closed_from_evidence
    (G : GradedFrechetNuclearSpacePackage) (E : GradedFrechetNuclearSpaceEvidence G) :
    GradedFrechetNuclearSpaceClosed G := by
  exact And.intro E.nuclearDecompositionClosed (And.intro E.gradedStructureClosed E.tameConditionClosed)

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse