import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure MartinAxiomPackage where
  cccForcing : Prop
  denseSetCount : ℕ
  genericFilter : Prop
  axiomStatement : Prop

def MartinAxiomClosed (M : MartinAxiomPackage) : Prop :=
  M.cccForcing ∧ M.genericFilter ∧ M.axiomStatement

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
