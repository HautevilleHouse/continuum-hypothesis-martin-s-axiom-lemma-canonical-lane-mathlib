import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure ForcingExtensionPackage where
  groundModel : Type u
  partialOrder : Type v
  genericFilter : Type w
  extensionModel : Type x
  CHFailsInExtension : Prop
  MAHoldsInExtension : Prop
  cofinalitiesPreserved : Prop

structure ForcingExtensionEvidence (F : ForcingExtensionPackage) where
  CHFailsInExtensionClosed : F.CHFailsInExtension
  MAHoldsInExtensionClosed : F.MAHoldsInExtension
  cofinalitiesPreservedClosed : F.cofinalitiesPreserved

def ForcingExtensionClosed (F : ForcingExtensionPackage) : Prop :=
  F.CHFailsInExtension ∧ F.MAHoldsInExtension ∧ F.cofinalitiesPreserved

theorem forcing_extension_closed_from_evidence
    (F : ForcingExtensionPackage) (E : ForcingExtensionEvidence F) :
    ForcingExtensionClosed F := by
  exact And.intro E.CHFailsInExtensionClosed
    (And.intro E.MAHoldsInExtensionClosed E.cofinalitiesPreservedClosed)

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse