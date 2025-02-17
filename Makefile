# Declare variables
VENV = .venv
PYTHON_VERSION = python3.11
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip

# Create virtual environment, upgrade pip and install dependencies
$(VENV)/bin/activate: requirements.txt
	$(PYTHON_VERSION) -m venv $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt

install: $(VENV)/bin/activate
	echo "# Run source .venv/bin/activate to activate the virtual environment."

# Format code using black (src and tests directories)
format:	
	black src/*.py tests/*.py

# Lint code using pylint (src and tests directories)
lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py src/*.py

# Refactor code using format and lint commands
refactor: format lint

# Run tests using pytest
test:
	$(PYTHON) -m pytest -vv --cov=tests tests/test_*.py

# Run all commands
all: install refactor test