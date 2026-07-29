import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure GradedFrEchetSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  grading : ℕ → Set carrier
  completions : ∀ n : ℕ, ∃ (norm : carrier → ℝ), MetricSpace carrier

export GradedFrEchetSpace (carrier topology grading completions)

structure GradedFrEchetAdmittedObject where
  space : GradedFrEchetSpace
  tameCondition : Prop
  nuclearProperty : Prop
  conclusion : tameCondition ∧ nuclearProperty

def GradedFrEchetWitnessClosed (O : GradedFrEchetAdmittedObject) : Prop :=
  O.tameCondition ∧ O.nuclearProperty

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse