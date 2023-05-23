#!/bin/bash
set -e # exit on first error encountered

program_entry_point='self_contained_python_app/main.py'

.venv/bin/conda-unpack

python_version=$(python --version | cut -d ' ' -f 2 | cut -d '.' -f 1,2)

conda run -n "self_contained_python_app" python .venv/lib/python"$python_version"/site-packages/"$program_entry_point"
