import GradedFrechetSpacesTameCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

structure AdmissibleClass where
  object : GradedFrechetAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GradedFrechetWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
