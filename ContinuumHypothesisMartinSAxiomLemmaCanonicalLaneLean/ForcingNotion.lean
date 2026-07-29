import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure ForcingNotion where
  partialOrder : Type u
  le : partialOrder → partialOrder → Prop
  denseSet : partialOrder → Prop
  filter : partialOrder → Prop
  genericFilterExists : Prop

def ForcingNotionClosed (P : ForcingNotion) : Prop := P.genericFilterExists

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
