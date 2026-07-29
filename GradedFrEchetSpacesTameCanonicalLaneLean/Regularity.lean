import canonicalLaneMathlib.AdmissibleClass
import GradedFrEchetSpacesTameCanonicalLaneLean.ImplicitFunction

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure RegularityPackage (G : GradedFrechetSpace) where
  tameEstimatesForDerivatives : Prop
  uniformBoundednessPrinciple : Prop
  tameInverseTheorem : Prop
  tameEstimatesForDerivativesClosed : tameEstimatesForDerivatives
  uniformBoundednessPrincipleClosed : uniformBoundednessPrinciple
  tameInverseTheoremClosed : tameInverseTheorem

structure RegularityEvidence {G : GradedFrechetSpace}
    (R : RegularityPackage G) where
  tameEstimatesForDerivativesClosed : R.tameEstimatesForDerivatives
  uniformBoundednessPrincipleClosed : R.uniformBoundednessPrinciple
  tameInverseTheoremClosed : R.tameInverseTheorem

def RegularityClosed {G : GradedFrechetSpace}
    (R : RegularityPackage G) : Prop :=
  R.tameEstimatesForDerivatives ∧ R.uniformBoundednessPrinciple ∧
  R.tameInverseTheorem

theorem regularity_closed_from_evidence {G : GradedFrechetSpace}
    (R : RegularityPackage G) (E : RegularityEvidence R) :
    RegularityClosed R := by
  exact And.intro E.tameEstimatesForDerivativesClosed
    (And.intro E.uniformBoundednessPrincipleClosed
      E.tameInverseTheoremClosed)

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse