import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure EquiconsistencyPackage where
  zfcConsistent : Prop
  chConsistent : Prop
  macConsistent : Prop
  consistencyProof : Prop

def EquiconsistencyClosed (E : EquiconsistencyPackage) : Prop :=
  E.zfcConsistent ∧ E.chConsistent ∧ E.macConsistent ∧ E.consistencyProof

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse
