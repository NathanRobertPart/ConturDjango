source /unix/cedar/software/sl6/Herwig-Tip/setupEnv.sh; cd /home/npart/bitbucket/conturtest/ctest/mY_100_mX_1600; source /home/npart/bitbucket/conturtest/setupContur.sh; Herwig run --seed=1001600 --tag=mY_100_mX_1600 --jobs=2 --numevents=30000 LHC.run;