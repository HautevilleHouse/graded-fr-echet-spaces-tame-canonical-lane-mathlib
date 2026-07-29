import GradedFrechetSpacesTameCanonicalLaneLean.GradedFrechetStructure

/-!
# Tame Condition Package
-/

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

structure TameConditionPackage {G : GradedFrechetStructurePackage} where
  sobolevEmbedding : Prop
  compactEmbedding : Prop
  interpolationInequality : Prop
  linearMapControlled : Prop

structure TameConditionEvidence {G : GradedFrechetStructurePackage}
    (T : TameConditionPackage G) where
  sobolevEmbeddingClosed : T.sobolevEmbedding
  compactEmbeddingClosed : T.compactEmbedding
  interpolationInequalityClosed : T.interpolationInequality
  linearMapControlledClosed : T.linearMapControlled

def TameConditionClosed {G : GradedFrechetStructurePackage}
    (T : TameConditionPackage G) : Prop :=
  T.sobolevEmbedding ∧ T.compactEmbedding ∧ T.interpolationInequality ∧ T.linearMapControlled

theorem tame_condition_closed_from_evidence
    {G : GradedFrechetStructurePackage} (T : TameConditionPackage G)
    (E : TameConditionEvidence T) : TameConditionClosed T := by
  exact And.intro E.sobolevEmbeddingClosed
    (And.intro E.compactEmbeddingClosed
      (And.intro E.interpolationInequalityClosed E.linearMapControlledClosed))

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
