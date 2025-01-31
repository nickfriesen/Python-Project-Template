# Python-Project-Template
This repository serves as a template for new Python projects. The idea behind the template is to simplify the process of setting up a new Python project with the help of a Makefile. The Makefile can be adjusted by changing the repective components of the file.


# Makefile components
## Variables
The first lines of the Makefile declare some variables that are used throughout the file.

**VENV**: The `VENV` variable declares the name of the virtual environment. In this case set to `.venv` as commonly used.

**PYTHON_VERSION**: The `PYTHON_VERSION` variable declares the Python version that will be used for the virtual environment. It is currently set to Python 3.11, but can be changed according to the requirements of the project.

**PYTHON**: The `PYTHON` variable holds the path to the Python installation in the virtual environment.

**PIP**: The `PIP` variable holds the path to the pip installation in the virtual environment.

## Make commands
**install**: The `make install` command will:
    1. Create a virtual environment named according to the `VENV` variable,
    2. Upgrade pip, and
    3. Install the dependencies from the `requirements.txt` file (see below for more infromation).

**format**: The `make format` command formats the code using the *black* formatter.

**lint**: The `make lint` command lints the code using *pylint*.

**refactor**: The `make refactor` command combines the `format` and `lint` commands.

**test**: The `make test` command performs tests using the *pytest* framework.

**all**: The `make all` command will run the `install`, `refactor`, and `test` commands.


# Requirements.txt file
The *requirements.txt* file already includes some dependencies that can be applied to every Python project. The dependencies are also required for some of the *Makefile* commands.
The dependencies include:
- boto3
- black
- pylint
- pytest
- pytest-cov

and their respective dependencies.


# Usage
The intended usage is as following:
1. When starting a new Python project, the `make install` command should be run to create the virtual envirnoment and install all the necessary dependencies.

2. The command `source .venv/bin/activate` should be run to activate the virtual environment in the shell.

3. A git repo should be initialized using the `git init` command.

4. During development, the `make refactor` command can be used to clean the code and the `make test` command can be used to test the code.

