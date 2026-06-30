import AdelicTactics
import Mathlib.Geometry.Manifold.RiemannianMetric
import Mathlib.Analysis.Calculus.Deriv.Basic

theorem bianchi_first (X Y Z : VectorField M) :
  RiemannCurvatureTensor X Y Z + RiemannCurvatureTensor Y Z X + RiemannCurvatureTensor Z X Y = 0 :=
by
  by reify_spectral_gap

#print "STATUS: RIEMANN CURVATURE TENSOR KERNEL SEEDED."