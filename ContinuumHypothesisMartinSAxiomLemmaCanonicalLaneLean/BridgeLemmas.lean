import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CHWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse