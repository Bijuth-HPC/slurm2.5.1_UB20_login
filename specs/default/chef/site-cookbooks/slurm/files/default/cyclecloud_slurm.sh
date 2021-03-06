#!/usr/bin/env bash
export PATH=$PATH:/usr/bin
bootstrap=/opt/cycle/slurm
# Slurm used to start processes in /var/log/slurmctld
# As backup, just kick off the process in the bootstrap dir
cd /var/log/slurmctld || cd $bootstrap
cyclecloud_slurm_python=/opt/cycle/jetpack/system/embedded/bin/python
export PYTHONPATH=$bootstrap
$cyclecloud_slurm_python -m cyclecloud_slurm "$@"
exit $?
