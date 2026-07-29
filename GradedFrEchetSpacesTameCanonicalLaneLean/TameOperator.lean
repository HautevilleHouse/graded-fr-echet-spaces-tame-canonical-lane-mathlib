import canonicalLaneMathlib.AdmissibleClass
import GradedFrEchetSpacesTameCanonicalLaneLean.GradedFrechetSpace

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure TameOperator (G : GradedFrechetSpace) where
  operator : G.carrier → G.carrier
  continuous : Prop
  tameEstimate : Prop
  continuousClosed : continuous
  tameEstimateClosed : tameEstimate

structure TameOperatorEvidence {G : GradedFrechetSpace} (T : TameOperator G) where
  continuousClosed : T.continuous
  tameEstimateClosed : T.tameEstimate

def TameOperatorClosed {G : GradedFrechetSpace} (T : TameOperator G) : Prop :=
  T.continuous ∧ T.tameEstimate

theorem tame_operator_closed_from_evidence {G : GradedFrechetSpace}
    (T : TameOperator G) (E : TameOperatorEvidence T) : TameOperatorClosed T := by
  exact And.intro E.continuousClosed E.tameEstimateClosed

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse