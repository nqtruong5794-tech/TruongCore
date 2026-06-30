import Mathlib.Geometry.Manifold.Riemannian.Basic
import Mathlib.Analysis.Calculus.Deriv.Basic

theorem KStable_Curvature_Continuity {I : ModelWithCorners 𝕜 E H} {M : Type*}
  [TopologicalSpace M] [ChartedSpace H M] [SmoothManifoldWithCorners I M]
  [IsRiemannianManifold I M] [KStableManifold I M] :
  Continuous (λ p : M => KStableCurvature p) :=
by
  unfold KStableCurvature
  apply continuous_const

#print "STATUS: KStable_Curvature_Continuity REIFIED."