### Repo opened to support the following blog post:

https://medium.com/@yefeltz/real-self-contained-python-environments-9aef0018f692

### Basic needed setup

- Python 3.10 (if you have Pyenv installed, this project comes bundled with a .python-version file)
- Conda (tested with version 23.3.1)
- Mamba (tested with version 1.4.2)
- Optional: Poetry (tested with version 1.4.0)

### To reproduce the blog post workflow

1. Create and package (source machine)

```shell
make create_conda_env
make package_code_with_conda_env
```

2. Unpack and run

```shell
make unpack
chmod +x ./run_app.sh
./run_app.sh
```
