import orjson
import pandas as pd
import pyarrow as pa
from pyarrow import csv
import io

from self_contained_python_app.some_module import bar


def main():
    foo()


def foo():
    print(pa.__version__)
    print(pd.__version__)
    print(orjson.__version__)
    print("foo")
    print(bar())
    print(read_csv_with_pyarrow())


def read_csv_with_pyarrow():
    s = (
        "animals,n_legs,entry\n"
        "Flamingo,2,2022-03-01\n"
        "Horse,4,2022-03-02\n"
        "Brittle stars,5,2022-03-03\n"
        "Centipede,100,2022-03-04"
    )
    source = io.BytesIO(s.encode())
    df = csv.read_csv(source)
    return df.to_pandas()


if __name__ == "__main__":
    main()
