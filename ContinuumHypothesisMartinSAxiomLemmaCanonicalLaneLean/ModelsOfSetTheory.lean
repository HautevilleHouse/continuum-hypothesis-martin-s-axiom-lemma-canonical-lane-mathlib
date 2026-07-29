import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure ZFCModel where
  universe : Type u
  membership : universe → universe → Prop
  axioms : Prop

def ZFCModelClosed (M : ZFCModel) : Prop := M.axioms

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
