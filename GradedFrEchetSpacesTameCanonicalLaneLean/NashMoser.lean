import canonicalLaneMathlib.AdmissibleClass
import GradedFrEchetSpacesTameCanonicalLaneLean.Regularity

namespace HautevilleHouse
namespace GradedFrEchetSpacesTameCanonicalLaneLean

structure NashMoserTheorem (G : GradedFrechetSpace) where
  lossOfDerivatives : Prop
  smoothingOperator : Prop
  iterativeScheme : Prop
  convergenceResult : Prop
  lossOfDerivativesClosed : lossOfDerivatives
  smoothingOperatorClosed : smoothingOperator
  iterativeSchemeClosed : iterativeScheme
  convergenceResultClosed : convergenceResult

structure NashMoserEvidence {G : GradedFrechetSpace}
    (N : NashMoserTheorem G) where
  lossOfDerivativesClosed : N.lossOfDerivatives
  smoothingOperatorClosed : N.smoothingOperator
  iterativeSchemeClosed : N.iterativeScheme
  convergenceResultClosed : N.convergenceResult

def NashMoserClosed {G : GradedFrechetSpace}
    (N : NashMoserTheorem G) : Prop :=
  N.lossOfDerivatives ∧ N.smoothingOperator ∧
  N.iterativeScheme ∧ N.convergenceResult

theorem nash_moser_closed_from_evidence {G : GradedFrechetSpace}
    (N : NashMoserTheorem G) (E : NashMoserEvidence N) :
    NashMoserClosed N := by
  exact And.intro E.lossOfDerivativesClosed
    (And.intro E.smoothingOperatorClosed
      (And.intro E.iterativeSchemeClosed E.convergenceResultClosed))

end GradedFrEchetSpacesTameCanonicalLaneLean
end HautevilleHouse