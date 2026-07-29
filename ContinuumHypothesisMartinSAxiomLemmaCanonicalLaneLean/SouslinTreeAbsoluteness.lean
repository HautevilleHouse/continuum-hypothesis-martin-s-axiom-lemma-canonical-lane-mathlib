import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure SouslinTreeAbsolutenessPackage {F : ForcingExtensionPackage}
    (M : MartinAxiomPackage F) where
 noSouslinTreeInL : Prop
 souslinTreeInGenericExtension : Prop
 absolutenessWitness : Prop

structure SouslinTreeAbsolutenessEvidence {F : ForcingExtensionPackage}
    {M : MartinAxiomPackage F} (S : SouslinTreeAbsolutenessPackage M) where
  noSouslinTreeInLClosed : S.noSouslinTreeInL
  souslinTreeInGenericExtensionClosed : S.souslinTreeInGenericExtension
  absolutenessWitnessClosed : S.absolutenessWitness

def SouslinTreeAbsolutenessClosed {F : ForcingExtensionPackage}
    {M : MartinAxiomPackage F} (S : SouslinTreeAbsolutenessPackage M) : Prop :=
  S.noSouslinTreeInL ∧ S.souslinTreeInGenericExtension ∧ S.absolutenessWitness

theorem souslin_tree_absoluteness_closed_from_evidence
    {F : ForcingExtensionPackage} {M : MartinAxiomPackage F}
    (S : SouslinTreeAbsolutenessPackage M) (E : SouslinTreeAbsolutenessEvidence S) :
    SouslinTreeAbsolutenessClosed S := by
  exact And.intro E.noSouslinTreeInLClosed
    (And.intro E.souslinTreeInGenericExtensionClosed E.absolutenessWitnessClosed)

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse