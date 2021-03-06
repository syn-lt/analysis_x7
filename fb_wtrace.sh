#!/bin/sh

rm -rf analysis/
mkdir analysis

cp -r ../../analysis .

# python analysis/overview_fb.py
# #srun -p x-men --mem 32GB python analysis/synapse_dynamics_fb.py
# python analysis/synapse_dynamics_fb.py
# python analysis/synapse_weight_snapshots_log_fb.py
# python analysis/synapse_weight_snapshots_fb.py
# python analysis/network_activity_fb.py
# python analysis/turnover_fb.py
# python analysis/turnover_x_Aminus_fb.py


# python -m analysis.single_wtraces
srun -p x-men --mem 62GB python -m analysis.combined_wtrace

# python analysis/turnover_x_Aminus_fitonly_fb.py
# python analysis/active_synapses_x_Aminus_fb.py
