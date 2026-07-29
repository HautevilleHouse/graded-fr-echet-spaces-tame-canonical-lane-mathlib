import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TameGradedFrechetSpacesCanonicalLaneLean.TameGradedFrechetDomain

namespace HautevilleHouse
namespace TameGradedFrechetSpacesCanonicalLaneLean

structure DualPairingPackage where
  source : GradedFrechetObject
  target : GradedFrechetObject
  pairingDefined : Prop
  bilinear : Prop
  tameContinuity : Prop

structure DualPairingEvidence (P : DualPairingPackage) where
  pairingDefinedClosed : P.pairingDefined
  bilinearClosed : P.bilinear
  tameContinuityClosed : P.tameContinuity

def DualPairingClosed (P : DualPairingPackage) : Prop :=
  P.pairingDefined ∧ P.bilinear ∧ P.tameContinuity

theorem dual_pairing_closed_from_evidence (P : DualPairingPackage)
    (E : DualPairingEvidence P) : DualPairingClosed P := by
  exact And.intro E.pairingDefinedClosed
    (And.intro E.bilinearClosed E.tameContinuityClosed)

end TameGradedFrechetSpacesCanonicalLaneLean
end HautevilleHouse