import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure GenericExtensionPackage where
  groundModel : Type u
  forcingPartialOrder : Prop
  genericFilter : Prop
  extensionModel : Type v
  forcingRelationDefined : Prop
  namesInterpretation : Prop
  genericExtensionExists : Prop

structure GenericExtensionEvidence (G : GenericExtensionPackage) where
  genericFilterClosed : G.genericFilter
  forcingRelationDefinedClosed : G.forcingRelationDefined
  namesInterpretationClosed : G.namesInterpretation
  genericExtensionExistsClosed : G.genericExtensionExists

def GenericExtensionClosed (G : GenericExtensionPackage) : Prop :=
  G.genericFilter ∧ G.forcingRelationDefined ∧ G.namesInterpretation ∧ G.genericExtensionExists

theorem generic_extension_closed_from_evidence (G : GenericExtensionPackage)
    (E : GenericExtensionEvidence G) : GenericExtensionClosed G := by
  exact And.intro E.genericFilterClosed
    (And.intro E.forcingRelationDefinedClosed
      (And.intro E.namesInterpretationClosed E.genericExtensionExistsClosed))

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse