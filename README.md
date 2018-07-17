# GOdMD_different_natoms

cd dat/2lao_A-1lst_A-1/

../../discrete/discrete -i dmdtest.in -pdbin 2lao_A.REF.pdb -pdbtarg 1lst_A.pdb -p1 2lao_A.aln -p2 1lst_A.aln -trj 2lao_A-1lst_A_trajectory.crd -ener energy.dat -o 2lao_A-1lst_A_1.log


### Parameters description from ```discrete/paramSet.f```

- TSNAP: Frequency to output structures in the simulation. Low number gives more structures.

- TRECT: Frequency to apply the Maxwell-Demon algorithm

- TACT: Frequency to update the bonded distances.

- ACCEPTANCE: Fraction of sampled structures that would be accepted in Monte Carlo test. Low values give biased results. High values may lead to convergence problems. I recommend values between 0.5 and 0.8

- GOENER: Energy depth of the well kcal/mol

- SIGMAGO: Width of bonded bonds, in Armstrongs.

- WELLWIDTH: Width of non-bonded bonds, in Armstrongs.

- RGYRPERCENT: Maximum distance to consider non-bonded and changing interactions (double go wells) as a fraction of the average radius of gyration

- RCUT1: Maximum distance to consider non-bonded and non-changing interactions (single go wells)

- MINWENERWELL: Minimum energy interaction per well. Below this number the pseudo-Metadynamics algorithm will ignore this interaction.

- SIGMAFAKE: Bonded distance for non-consecutive particles (a gap in the structure)
 