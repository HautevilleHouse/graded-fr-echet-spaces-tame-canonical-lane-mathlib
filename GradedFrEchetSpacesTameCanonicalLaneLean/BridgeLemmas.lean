import GradedFrechetSpacesTameCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GradedFrechetSpacesTameCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GradedFrechetWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GradedFrechetSpacesTameCanonicalLaneLean
end HautevilleHouse
