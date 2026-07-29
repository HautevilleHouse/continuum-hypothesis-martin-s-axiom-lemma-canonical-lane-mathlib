import ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean.ContinuumHypothesis

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure ZFCIndependencePackage {F : ForcingExtensionPackage} {M : MartinAxiomPackage F} {C : ContinuumHypothesisPackage M} where
  zfcAxioms : Prop
  forcingExtensionPreservesZFC : Prop
  independenceProof : Prop

structure ZFCIndependenceEvidence {F : ForcingExtensionPackage} {M : MartinAxiomPackage F} {C : ContinuumHypothesisPackage M} (Z : ZFCIndependencePackage C) where
  zfcAxiomsClosed : Z.zfcAxioms
  forcingExtensionPreservesZFCClosed : Z.forcingExtensionPreservesZFC
  independenceProofClosed : Z.independenceProof

def ZFCIndependenceClosed {F : ForcingExtensionPackage} {M : MartinAxiomPackage F} {C : ContinuumHypothesisPackage M} (Z : ZFCIndependencePackage C) : Prop :=
  Z.zfcAxioms ∧ Z.forcingExtensionPreservesZFC ∧ Z.independenceProof

theorem zfc_independence_closed_from_evidence {F : ForcingExtensionPackage} {M : MartinAxiomPackage F} {C : ContinuumHypothesisPackage M} (Z : ZFCIndependencePackage C) (E : ZFCIndependenceEvidence Z) :
    ZFCIndependenceClosed Z := by
  exact And.intro E.zfcAxiomsClosed
    (And.intro E.forcingExtensionPreservesZFCClosed E.independenceProofClosed)

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse