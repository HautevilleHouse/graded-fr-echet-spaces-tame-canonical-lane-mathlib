import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

structure GradedFrechetSpace where
  carrier : Type
  seminorms : List (carrier → ℝ)
  gradingOpenCondition : Prop
  frechetCompleteness : Prop
  tameInequality : Prop

structure TameMap (X Y : GradedFrechetSpace) where
  linearMap : X.carrier → Y.carrier
  boundednessCondition : Prop
  tameDegreeShiftedBoundedness : Prop

structure AdmittedGradedFrechetObject where
  space : GradedFrechetSpace
  tameStructureConstrained : Prop
  tameConclusion : Prop

def GradedFrechetWitnessClosed (O : AdmittedGradedFrechetObject) : Prop :=
  O.tameConclusion

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
