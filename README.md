# Simple calculator made with PySide6 and QML

Most of the code is in QML, in fact. For convenience. It provides a simple, declarative way to produce UI.

To build it, run:

```shell
# first, install the environment:
pip install -e .

# or if you use uv or poetry:

#if you use uv:
uv sync

#if you use poetry:
poetry sync

# if you use pixi:

pixi shell

# then follow the guidance and it will modify your pyproject.toml

# then, run the code
python main.py
```

Using tips:

`+ - * /` for operations

keyboard or the keypad for inputting numbers

`( )` for parentheses

`.` for dots