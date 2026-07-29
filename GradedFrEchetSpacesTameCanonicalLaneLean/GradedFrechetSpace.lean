import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure GradedFrechetSpace where
  carrier : Type u
  seminorms : List (carrier → ℝ)
  gradedStructure : Prop
  separated : Prop
  complete : Prop
  gradedStructureClosed : gradedStructure
  separatedClosed : separated
  completeClosed : complete

structure GradedFrechetSpaceEvidence (G : GradedFrechetSpace) where
  gradedStructureClosed : G.gradedStructure
  separatedClosed : G.separated
  completeClosed : G.complete

def GradedFrechetSpaceClosed (G : GradedFrechetSpace) : Prop :=
  G.gradedStructure ∧ G.separated ∧ G.complete

theorem graded_frechet_space_closed_from_evidence (G : GradedFrechetSpace)
    (E : GradedFrechetSpaceEvidence G) : GradedFrechetSpaceClosed G := by
  exact And.intro E.gradedStructureClosed (And.intro E.separatedClosed E.completeClosed)

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse