#!/bin/bash 
# Title: FireWorksBox_3
# Author: Jake Rightmyer, jr16196@bristol.ac.uk
# Affiliation: Genome Design Group, Life Sciences, University of Bristol
# Run Using: BlueCrystal Supercomputer and the PBS Queue System
# Last Updated: 2020-07-20

# Experiment - Testing qadapter settings, and WildType analysis of single and multi-generation simulations
# See https://github.com/CovertLab/WholeCellEcoliRelease/tree/master/runscripts/paper for other options
# UPDATE - using scripts from https://github.com/CovertLab/WholeCellEcoliRelease/tree/master/runscripts/jenkins

## To Run
# chmod u+x FireWorksBox_3.sh
# ./FireWorksBox_3.sh

## Initialise the Database (is this really the only way to do this?)
cd /newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks
lpad -l my_launchpad.yaml reset

## Pre Simulation Requirements
cd /newhome/jr16196/wholecell2/wcEcoli
# load required modules
module add tools/git-2.22.0
module add languages/gcc-7.1.0
# Set the $PYTHONPATH:
# export PYTHONPATH="$PWD:$PYTHONPATH"
# Compile the Cython code
make clean compile

## Create and Add FireWorks to the Launchpad
cd /newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks

DESC="KO Name EG10001 KO Index 18" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=18 LAST_VARIANT_INDEX=18 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10004 KO Index 21" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=21 LAST_VARIANT_INDEX=21 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10006 KO Index 22" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=22 LAST_VARIANT_INDEX=22 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10007 KO Index 23" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=23 LAST_VARIANT_INDEX=23 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10012 KO Index 27" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=27 LAST_VARIANT_INDEX=27 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10016 KO Index 31" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=31 LAST_VARIANT_INDEX=31 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10017 KO Index 32" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=32 LAST_VARIANT_INDEX=32 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10024 KO Index 38" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=38 LAST_VARIANT_INDEX=38 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10025 KO Index 39" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=39 LAST_VARIANT_INDEX=39 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10027 KO Index 41" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=41 LAST_VARIANT_INDEX=41 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10030 KO Index 44" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=44 LAST_VARIANT_INDEX=44 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10031 KO Index 45" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=45 LAST_VARIANT_INDEX=45 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10032 KO Index 46" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=46 LAST_VARIANT_INDEX=46 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10034 KO Index 48" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=48 LAST_VARIANT_INDEX=48 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10035 KO Index 49" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=49 LAST_VARIANT_INDEX=49 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10036 KO Index 50" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=50 LAST_VARIANT_INDEX=50 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10039 KO Index 52" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=52 LAST_VARIANT_INDEX=52 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10043 KO Index 56" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=56 LAST_VARIANT_INDEX=56 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10045 KO Index 58" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=58 LAST_VARIANT_INDEX=58 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10046 KO Index 59" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=59 LAST_VARIANT_INDEX=59 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10048 KO Index 61" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=61 LAST_VARIANT_INDEX=61 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10049 KO Index 62" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=62 LAST_VARIANT_INDEX=62 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10051 KO Index 64" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=64 LAST_VARIANT_INDEX=64 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10052 KO Index 65" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=65 LAST_VARIANT_INDEX=65 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10053 KO Index 66" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=66 LAST_VARIANT_INDEX=66 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10054 KO Index 67" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=67 LAST_VARIANT_INDEX=67 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10055 KO Index 68" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=68 LAST_VARIANT_INDEX=68 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10056 KO Index 69" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=69 LAST_VARIANT_INDEX=69 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10057 KO Index 70" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=70 LAST_VARIANT_INDEX=70 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10058 KO Index 71" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=71 LAST_VARIANT_INDEX=71 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10059 KO Index 72" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=72 LAST_VARIANT_INDEX=72 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10061 KO Index 74" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=74 LAST_VARIANT_INDEX=74 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10063 KO Index 76" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=76 LAST_VARIANT_INDEX=76 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10064 KO Index 77" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=77 LAST_VARIANT_INDEX=77 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10065 KO Index 78" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=78 LAST_VARIANT_INDEX=78 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10066 KO Index 79" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=79 LAST_VARIANT_INDEX=79 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10067 KO Index 80" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=80 LAST_VARIANT_INDEX=80 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10068 KO Index 81" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=81 LAST_VARIANT_INDEX=81 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10069 KO Index 82" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=82 LAST_VARIANT_INDEX=82 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10070 KO Index 83" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=83 LAST_VARIANT_INDEX=83 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10071 KO Index 84" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=84 LAST_VARIANT_INDEX=84 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10072 KO Index 85" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=85 LAST_VARIANT_INDEX=85 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10073 KO Index 86" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=86 LAST_VARIANT_INDEX=86 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10074 KO Index 87" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=87 LAST_VARIANT_INDEX=87 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10075 KO Index 88" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=88 LAST_VARIANT_INDEX=88 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10076 KO Index 89" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=89 LAST_VARIANT_INDEX=89 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10077 KO Index 90" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=90 LAST_VARIANT_INDEX=90 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10078 KO Index 91" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=91 LAST_VARIANT_INDEX=91 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10079 KO Index 92" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=92 LAST_VARIANT_INDEX=92 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10080 KO Index 93" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=93 LAST_VARIANT_INDEX=93 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10081 KO Index 94" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=94 LAST_VARIANT_INDEX=94 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10082 KO Index 95" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=95 LAST_VARIANT_INDEX=95 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10084 KO Index 97" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=97 LAST_VARIANT_INDEX=97 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10088 KO Index 101" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=101 LAST_VARIANT_INDEX=101 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10091 KO Index 104" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=104 LAST_VARIANT_INDEX=104 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10092 KO Index 105" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=105 LAST_VARIANT_INDEX=105 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10094 KO Index 107" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=107 LAST_VARIANT_INDEX=107 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10095 KO Index 108" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=108 LAST_VARIANT_INDEX=108 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10096 KO Index 109" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=109 LAST_VARIANT_INDEX=109 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10097 KO Index 110" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=110 LAST_VARIANT_INDEX=110 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10098 KO Index 111" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=111 LAST_VARIANT_INDEX=111 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10099 KO Index 112" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=112 LAST_VARIANT_INDEX=112 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10100 KO Index 113" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=113 LAST_VARIANT_INDEX=113 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10101 KO Index 114" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=114 LAST_VARIANT_INDEX=114 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10102 KO Index 115" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=115 LAST_VARIANT_INDEX=115 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10103 KO Index 116" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=116 LAST_VARIANT_INDEX=116 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10104 KO Index 117" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=117 LAST_VARIANT_INDEX=117 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10105 KO Index 118" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=118 LAST_VARIANT_INDEX=118 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10107 KO Index 120" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=120 LAST_VARIANT_INDEX=120 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10109 KO Index 122" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=122 LAST_VARIANT_INDEX=122 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10110 KO Index 123" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=123 LAST_VARIANT_INDEX=123 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10112 KO Index 125" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=125 LAST_VARIANT_INDEX=125 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10115 KO Index 128" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=128 LAST_VARIANT_INDEX=128 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10117 KO Index 130" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=130 LAST_VARIANT_INDEX=130 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10118 KO Index 131" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=131 LAST_VARIANT_INDEX=131 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10119 KO Index 132" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=132 LAST_VARIANT_INDEX=132 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10120 KO Index 133" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=133 LAST_VARIANT_INDEX=133 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10121 KO Index 134" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=134 LAST_VARIANT_INDEX=134 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10122 KO Index 135" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=135 LAST_VARIANT_INDEX=135 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10123 KO Index 136" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=136 LAST_VARIANT_INDEX=136 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10124 KO Index 137" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=137 LAST_VARIANT_INDEX=137 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10129 KO Index 142" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=142 LAST_VARIANT_INDEX=142 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10131 KO Index 144" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=144 LAST_VARIANT_INDEX=144 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10132 KO Index 145" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=145 LAST_VARIANT_INDEX=145 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10134 KO Index 147" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=147 LAST_VARIANT_INDEX=147 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10135 KO Index 148" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=148 LAST_VARIANT_INDEX=148 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10137 KO Index 150" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=150 LAST_VARIANT_INDEX=150 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10138 KO Index 151" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=151 LAST_VARIANT_INDEX=151 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10139 KO Index 152" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=152 LAST_VARIANT_INDEX=152 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10148 KO Index 161" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=161 LAST_VARIANT_INDEX=161 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10161 KO Index 174" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=174 LAST_VARIANT_INDEX=174 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10162 KO Index 175" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=175 LAST_VARIANT_INDEX=175 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10165 KO Index 178" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=178 LAST_VARIANT_INDEX=178 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10170 KO Index 183" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=183 LAST_VARIANT_INDEX=183 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10173 KO Index 185" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=185 LAST_VARIANT_INDEX=185 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10174 KO Index 186" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=186 LAST_VARIANT_INDEX=186 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10176 KO Index 188" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=188 LAST_VARIANT_INDEX=188 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10178 KO Index 190" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=190 LAST_VARIANT_INDEX=190 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10179 KO Index 191" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=191 LAST_VARIANT_INDEX=191 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10180 KO Index 192" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=192 LAST_VARIANT_INDEX=192 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10181 KO Index 193" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=193 LAST_VARIANT_INDEX=193 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10182 KO Index 194" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=194 LAST_VARIANT_INDEX=194 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10183 KO Index 195" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=195 LAST_VARIANT_INDEX=195 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10185 KO Index 197" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=197 LAST_VARIANT_INDEX=197 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10186 KO Index 198" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=198 LAST_VARIANT_INDEX=198 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10187 KO Index 199" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=199 LAST_VARIANT_INDEX=199 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10188 KO Index 200" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=200 LAST_VARIANT_INDEX=200 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10189 KO Index 201" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=201 LAST_VARIANT_INDEX=201 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10190 KO Index 202" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=202 LAST_VARIANT_INDEX=202 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10191 KO Index 203" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=203 LAST_VARIANT_INDEX=203 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10192 KO Index 204" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=204 LAST_VARIANT_INDEX=204 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10193 KO Index 205" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=205 LAST_VARIANT_INDEX=205 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10194 KO Index 206" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=206 LAST_VARIANT_INDEX=206 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10195 KO Index 207" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=207 LAST_VARIANT_INDEX=207 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10196 KO Index 208" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=208 LAST_VARIANT_INDEX=208 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10197 KO Index 209" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=209 LAST_VARIANT_INDEX=209 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10198 KO Index 210" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=210 LAST_VARIANT_INDEX=210 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10200 KO Index 211" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=211 LAST_VARIANT_INDEX=211 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10205 KO Index 216" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=216 LAST_VARIANT_INDEX=216 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10206 KO Index 217" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=217 LAST_VARIANT_INDEX=217 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10207 KO Index 218" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=218 LAST_VARIANT_INDEX=218 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10208 KO Index 219" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=219 LAST_VARIANT_INDEX=219 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10209 KO Index 220" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=220 LAST_VARIANT_INDEX=220 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10213 KO Index 224" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=224 LAST_VARIANT_INDEX=224 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10214 KO Index 225" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=225 LAST_VARIANT_INDEX=225 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10217 KO Index 228" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=228 LAST_VARIANT_INDEX=228 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10219 KO Index 230" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=230 LAST_VARIANT_INDEX=230 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10220 KO Index 231" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=231 LAST_VARIANT_INDEX=231 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10221 KO Index 232" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=232 LAST_VARIANT_INDEX=232 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10222 KO Index 233" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=233 LAST_VARIANT_INDEX=233 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10224 KO Index 235" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=235 LAST_VARIANT_INDEX=235 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10225 KO Index 236" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=236 LAST_VARIANT_INDEX=236 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10231 KO Index 242" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=242 LAST_VARIANT_INDEX=242 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10232 KO Index 243" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=243 LAST_VARIANT_INDEX=243 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10233 KO Index 244" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=244 LAST_VARIANT_INDEX=244 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10234 KO Index 245" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=245 LAST_VARIANT_INDEX=245 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10235 KO Index 246" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=246 LAST_VARIANT_INDEX=246 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10246 KO Index 257" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=257 LAST_VARIANT_INDEX=257 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10247 KO Index 258" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=258 LAST_VARIANT_INDEX=258 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10248 KO Index 259" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=259 LAST_VARIANT_INDEX=259 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10249 KO Index 260" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=260 LAST_VARIANT_INDEX=260 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10251 KO Index 262" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=262 LAST_VARIANT_INDEX=262 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10256 KO Index 267" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=267 LAST_VARIANT_INDEX=267 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10257 KO Index 268" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=268 LAST_VARIANT_INDEX=268 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10258 KO Index 269" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=269 LAST_VARIANT_INDEX=269 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10259 KO Index 270" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=270 LAST_VARIANT_INDEX=270 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10261 KO Index 272" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=272 LAST_VARIANT_INDEX=272 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10262 KO Index 273" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=273 LAST_VARIANT_INDEX=273 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10263 KO Index 274" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=274 LAST_VARIANT_INDEX=274 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10265 KO Index 276" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=276 LAST_VARIANT_INDEX=276 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10273 KO Index 284" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=284 LAST_VARIANT_INDEX=284 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10274 KO Index 285" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=285 LAST_VARIANT_INDEX=285 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10276 KO Index 287" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=287 LAST_VARIANT_INDEX=287 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10277 KO Index 288" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=288 LAST_VARIANT_INDEX=288 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10278 KO Index 289" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=289 LAST_VARIANT_INDEX=289 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10279 KO Index 290" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=290 LAST_VARIANT_INDEX=290 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10280 KO Index 291" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=291 LAST_VARIANT_INDEX=291 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10282 KO Index 293" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=293 LAST_VARIANT_INDEX=293 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10283 KO Index 294" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=294 LAST_VARIANT_INDEX=294 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10285 KO Index 296" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=296 LAST_VARIANT_INDEX=296 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10299 KO Index 310" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=310 LAST_VARIANT_INDEX=310 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10316 KO Index 327" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=327 LAST_VARIANT_INDEX=327 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10317 KO Index 328" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=328 LAST_VARIANT_INDEX=328 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10325 KO Index 336" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=336 LAST_VARIANT_INDEX=336 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10326 KO Index 337" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=337 LAST_VARIANT_INDEX=337 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10327 KO Index 338" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=338 LAST_VARIANT_INDEX=338 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10328 KO Index 339" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=339 LAST_VARIANT_INDEX=339 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10330 KO Index 341" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=341 LAST_VARIANT_INDEX=341 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10331 KO Index 342" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=342 LAST_VARIANT_INDEX=342 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10332 KO Index 343" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=343 LAST_VARIANT_INDEX=343 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10333 KO Index 344" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=344 LAST_VARIANT_INDEX=344 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10334 KO Index 345" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=345 LAST_VARIANT_INDEX=345 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10344 KO Index 355" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=355 LAST_VARIANT_INDEX=355 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10348 KO Index 359" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=359 LAST_VARIANT_INDEX=359 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10349 KO Index 360" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=360 LAST_VARIANT_INDEX=360 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10350 KO Index 361" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=361 LAST_VARIANT_INDEX=361 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10351 KO Index 362" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=362 LAST_VARIANT_INDEX=362 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10352 KO Index 363" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=363 LAST_VARIANT_INDEX=363 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10355 KO Index 365" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=365 LAST_VARIANT_INDEX=365 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10356 KO Index 366" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=366 LAST_VARIANT_INDEX=366 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10357 KO Index 367" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=367 LAST_VARIANT_INDEX=367 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10358 KO Index 368" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=368 LAST_VARIANT_INDEX=368 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10361 KO Index 371" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=371 LAST_VARIANT_INDEX=371 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10362 KO Index 372" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=372 LAST_VARIANT_INDEX=372 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10363 KO Index 373" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=373 LAST_VARIANT_INDEX=373 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10366 KO Index 376" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=376 LAST_VARIANT_INDEX=376 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10367 KO Index 377" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=377 LAST_VARIANT_INDEX=377 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10368 KO Index 378" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=378 LAST_VARIANT_INDEX=378 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10370 KO Index 380" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=380 LAST_VARIANT_INDEX=380 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10372 KO Index 382" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=382 LAST_VARIANT_INDEX=382 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10379 KO Index 389" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=389 LAST_VARIANT_INDEX=389 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10382 KO Index 392" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=392 LAST_VARIANT_INDEX=392 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10383 KO Index 393" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=393 LAST_VARIANT_INDEX=393 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10386 KO Index 396" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=396 LAST_VARIANT_INDEX=396 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10388 KO Index 398" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=398 LAST_VARIANT_INDEX=398 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10389 KO Index 399" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=399 LAST_VARIANT_INDEX=399 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10390 KO Index 400" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=400 LAST_VARIANT_INDEX=400 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10391 KO Index 401" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=401 LAST_VARIANT_INDEX=401 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10392 KO Index 402" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=402 LAST_VARIANT_INDEX=402 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10393 KO Index 403" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=403 LAST_VARIANT_INDEX=403 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10394 KO Index 404" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=404 LAST_VARIANT_INDEX=404 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10395 KO Index 405" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=405 LAST_VARIANT_INDEX=405 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10396 KO Index 406" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=406 LAST_VARIANT_INDEX=406 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10398 KO Index 408" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=408 LAST_VARIANT_INDEX=408 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10399 KO Index 409" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=409 LAST_VARIANT_INDEX=409 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10402 KO Index 412" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=412 LAST_VARIANT_INDEX=412 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10403 KO Index 413" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=413 LAST_VARIANT_INDEX=413 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10404 KO Index 414" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=414 LAST_VARIANT_INDEX=414 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10405 KO Index 415" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=415 LAST_VARIANT_INDEX=415 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10407 KO Index 417" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=417 LAST_VARIANT_INDEX=417 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10408 KO Index 418" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=418 LAST_VARIANT_INDEX=418 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10409 KO Index 419" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=419 LAST_VARIANT_INDEX=419 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10410 KO Index 420" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=420 LAST_VARIANT_INDEX=420 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10411 KO Index 421" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=421 LAST_VARIANT_INDEX=421 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10412 KO Index 422" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=422 LAST_VARIANT_INDEX=422 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10413 KO Index 423" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=423 LAST_VARIANT_INDEX=423 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10414 KO Index 424" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=424 LAST_VARIANT_INDEX=424 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10418 KO Index 428" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=428 LAST_VARIANT_INDEX=428 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10419 KO Index 429" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=429 LAST_VARIANT_INDEX=429 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10420 KO Index 430" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=430 LAST_VARIANT_INDEX=430 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10421 KO Index 431" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=431 LAST_VARIANT_INDEX=431 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10422 KO Index 432" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=432 LAST_VARIANT_INDEX=432 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10425 KO Index 435" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=435 LAST_VARIANT_INDEX=435 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10427 KO Index 437" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=437 LAST_VARIANT_INDEX=437 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10428 KO Index 438" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=438 LAST_VARIANT_INDEX=438 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10429 KO Index 439" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=439 LAST_VARIANT_INDEX=439 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10430 KO Index 440" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=440 LAST_VARIANT_INDEX=440 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10432 KO Index 442" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=442 LAST_VARIANT_INDEX=442 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10440 KO Index 450" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=450 LAST_VARIANT_INDEX=450 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10441 KO Index 451" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=451 LAST_VARIANT_INDEX=451 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10444 KO Index 454" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=454 LAST_VARIANT_INDEX=454 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10445 KO Index 455" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=455 LAST_VARIANT_INDEX=455 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10446 KO Index 456" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=456 LAST_VARIANT_INDEX=456 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10447 KO Index 457" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=457 LAST_VARIANT_INDEX=457 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10448 KO Index 458" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=458 LAST_VARIANT_INDEX=458 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10449 KO Index 459" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=459 LAST_VARIANT_INDEX=459 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10450 KO Index 460" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=460 LAST_VARIANT_INDEX=460 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10451 KO Index 461" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=461 LAST_VARIANT_INDEX=461 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10452 KO Index 462" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=462 LAST_VARIANT_INDEX=462 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10453 KO Index 463" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=463 LAST_VARIANT_INDEX=463 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10457 KO Index 467" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=467 LAST_VARIANT_INDEX=467 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10464 KO Index 474" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=474 LAST_VARIANT_INDEX=474 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10465 KO Index 475" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=475 LAST_VARIANT_INDEX=475 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10475 KO Index 485" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=485 LAST_VARIANT_INDEX=485 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10476 KO Index 486" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=486 LAST_VARIANT_INDEX=486 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10477 KO Index 487" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=487 LAST_VARIANT_INDEX=487 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10478 KO Index 488" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=488 LAST_VARIANT_INDEX=488 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10479 KO Index 489" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=489 LAST_VARIANT_INDEX=489 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10480 KO Index 490" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=490 LAST_VARIANT_INDEX=490 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10489 KO Index 499" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=499 LAST_VARIANT_INDEX=499 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10490 KO Index 500" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=500 LAST_VARIANT_INDEX=500 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10492 KO Index 502" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=502 LAST_VARIANT_INDEX=502 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10493 KO Index 503" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=503 LAST_VARIANT_INDEX=503 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10494 KO Index 504" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=504 LAST_VARIANT_INDEX=504 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10495 KO Index 505" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=505 LAST_VARIANT_INDEX=505 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10496 KO Index 506" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=506 LAST_VARIANT_INDEX=506 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10497 KO Index 507" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=507 LAST_VARIANT_INDEX=507 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10498 KO Index 508" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=508 LAST_VARIANT_INDEX=508 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10499 KO Index 509" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=509 LAST_VARIANT_INDEX=509 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10500 KO Index 510" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=510 LAST_VARIANT_INDEX=510 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10501 KO Index 511" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=511 LAST_VARIANT_INDEX=511 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10502 KO Index 512" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=512 LAST_VARIANT_INDEX=512 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10508 KO Index 518" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=518 LAST_VARIANT_INDEX=518 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10509 KO Index 519" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=519 LAST_VARIANT_INDEX=519 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10511 KO Index 521" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=521 LAST_VARIANT_INDEX=521 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10512 KO Index 522" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=522 LAST_VARIANT_INDEX=522 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10513 KO Index 523" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=523 LAST_VARIANT_INDEX=523 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10514 KO Index 524" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=524 LAST_VARIANT_INDEX=524 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10515 KO Index 525" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=525 LAST_VARIANT_INDEX=525 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10518 KO Index 528" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=528 LAST_VARIANT_INDEX=528 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10519 KO Index 529" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=529 LAST_VARIANT_INDEX=529 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10520 KO Index 530" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=530 LAST_VARIANT_INDEX=530 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10521 KO Index 531" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=531 LAST_VARIANT_INDEX=531 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10524 KO Index 534" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=534 LAST_VARIANT_INDEX=534 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10526 KO Index 536" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=536 LAST_VARIANT_INDEX=536 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10527 KO Index 537" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=537 LAST_VARIANT_INDEX=537 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10531 KO Index 541" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=541 LAST_VARIANT_INDEX=541 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10532 KO Index 542" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=542 LAST_VARIANT_INDEX=542 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10533 KO Index 543" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=543 LAST_VARIANT_INDEX=543 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10536 KO Index 546" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=546 LAST_VARIANT_INDEX=546 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10537 KO Index 547" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=547 LAST_VARIANT_INDEX=547 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10538 KO Index 548" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=548 LAST_VARIANT_INDEX=548 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10539 KO Index 549" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=549 LAST_VARIANT_INDEX=549 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10540 KO Index 550" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=550 LAST_VARIANT_INDEX=550 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10541 KO Index 551" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=551 LAST_VARIANT_INDEX=551 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10543 KO Index 553" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=553 LAST_VARIANT_INDEX=553 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10545 KO Index 555" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=555 LAST_VARIANT_INDEX=555 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10546 KO Index 556" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=556 LAST_VARIANT_INDEX=556 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10547 KO Index 557" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=557 LAST_VARIANT_INDEX=557 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10549 KO Index 559" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=559 LAST_VARIANT_INDEX=559 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10550 KO Index 560" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=560 LAST_VARIANT_INDEX=560 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10552 KO Index 562" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=562 LAST_VARIANT_INDEX=562 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10553 KO Index 563" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=563 LAST_VARIANT_INDEX=563 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10560 KO Index 570" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=570 LAST_VARIANT_INDEX=570 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10561 KO Index 571" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=571 LAST_VARIANT_INDEX=571 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10564 KO Index 574" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=574 LAST_VARIANT_INDEX=574 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10565 KO Index 575" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=575 LAST_VARIANT_INDEX=575 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10566 KO Index 576" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=576 LAST_VARIANT_INDEX=576 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10567 KO Index 577" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=577 LAST_VARIANT_INDEX=577 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10568 KO Index 578" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=578 LAST_VARIANT_INDEX=578 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10569 KO Index 579" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=579 LAST_VARIANT_INDEX=579 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10572 KO Index 582" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=582 LAST_VARIANT_INDEX=582 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10576 KO Index 586" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=586 LAST_VARIANT_INDEX=586 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10579 KO Index 589" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=589 LAST_VARIANT_INDEX=589 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

DESC="KO Name EG10581 KO Index 591" \
VARIANT="geneKnockout" FIRST_VARIANT_INDEX=591 LAST_VARIANT_INDEX=591 \
SINGLE_DAUGHTERS=1 N_GENS=2 N_INIT_SIMS=1 \
MASS_DISTRIBUTION=1 GROWTH_RATE_NOISE=1 D_PERIOD_DIVISION=1 \
LAUNCHPAD_FILE='/newhome/jr16196/wholecell2/wcEcoli/wholecell/fireworks/my_launchpad.yaml' \
python /newhome/jr16196/wholecell2/wcEcoli/runscripts/fw_queue.py

## Launch Rockets to collect the FireWorks (created by fw_queue.py) from the Launchpad (MongoDB hosted on MLab via Heroku) and run them on the Queue (BlueCrystal)
qlaunch -r -l my_launchpad.yaml -w my_fworker.yaml -q my_qadapter.yaml rapidfire --nlaunches infinite --sleep 30 --maxjobs_queue 100 

