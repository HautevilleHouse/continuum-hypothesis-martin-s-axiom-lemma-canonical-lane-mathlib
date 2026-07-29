import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean

structure SolovayModelPackage where
  inaccessibleCardinal : Cardinal
  LevyCollapse : Prop
  hereditarilyOrdinalDefinableSets : Type u
  lebesgueMeasurableSets : Prop
  axiomOfChoiceHolds : Prop
  continuumHypothesisFails : Prop

structure SolovayModelEvidence (S : SolovayModelPackage) where
  levyCollapseClosed : S.LevyCollapse
  lebesgueMeasurableSetsClosed : S.lebesgueMeasurableSets
  axiomOfChoiceHoldsClosed : S.axiomOfChoiceHolds
  continuumHypothesisFailsClosed : S.continuumHypothesisFails

def SolovayModelClosed (S : SolovayModelPackage) : Prop :=
  S.LevyCollapse ∧ S.lebesgueMeasurableSets ∧ S.axiomOfChoiceHolds ∧ S.continuumHypothesisFails

theorem solovay_model_closed_from_evidence (S : SolovayModelPackage)
    (E : SolovayModelEvidence S) : SolovayModelClosed S := by
  exact And.intro E.levyCollapseClosed
    (And.intro E.lebesgueMeasurableSetsClosed
      (And.intro E.axiomOfChoiceHoldsClosed E.continuumHypothesisFailsClosed))

end ContinuumHypothesisMartinSAxiomLemmaCanonicalLaneLean
end HautevilleHouse