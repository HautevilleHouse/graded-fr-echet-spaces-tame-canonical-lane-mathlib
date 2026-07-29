import GradedFrechetSpacesTameCanonicalLaneLean.RiemannianCurvature

/-!
# Graded Fréchet Structure Package
-/

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

structure GradedFrechetStructurePackage where
  gradingFamily : ℕ → Type u
  seminorms : ℕ → Type v
  gradedTopology : Prop
  completeness : Prop
  tameCondition : Prop

structure GradedFrechetStructureEvidence (G : GradedFrechetStructurePackage) where
  gradedTopologyClosed : G.gradedTopology
  completenessClosed : G.completeness
  tameConditionClosed : G.tameCondition

def GradedFrechetStructureClosed (G : GradedFrechetStructurePackage) : Prop :=
  G.gradedTopology ∧ G.completeness ∧ G.tameCondition

theorem graded_frechet_structure_closed_from_evidence
    (G : GradedFrechetStructurePackage) (E : GradedFrechetStructureEvidence G) :
    GradedFrechetStructureClosed G := by
  exact And.intro E.gradedTopologyClosed (And.intro E.completenessClosed E.tameConditionClosed)

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
