
conda_env_file := conda-env.yml
conda_env_name := self_contained_python_app
conda_pack_output_file := artifacts/$(conda_env_name).tar.gz
temp_pack_env := temp_pack_env


create_conda_env:
	mamba env create -f $(conda_env_file)

package_code_with_conda_env:
	mkdir -p artifacts
	mamba create --name "$(temp_pack_env)" --channel conda-forge --yes conda-pack
	conda run -n "$(temp_pack_env)" conda-pack -n "$(conda_env_name)" -o "$(conda_pack_output_file)" --n-threads -1 --compress-level 9
	conda env remove -n "$(temp_pack_env)"

unpack:
	mkdir -p ".venv"
	tar -xzf "$(conda_pack_output_file)" -C ".venv"


