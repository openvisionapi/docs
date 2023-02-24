SHELL := /bin/bash

SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

setup:
	@(\
	    python3 -m venv .venv && \
	    source .venv/bin/activate &&  \
	    pip3 install -U pip && \
	    pip3 install -r requirements/packages.txt \
	)

pip-update:
	pip-compile --output-file=requirements/packages.txt -U requirements/packages.in --resolver=backtracking

gen:
	@(\
	    source .venv/bin/activate &&  \
	    make html && \
	    watchmedo shell-command --recursive --patterns="*.rst; *.yaml" --command "make html" source \
	)

help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

%: Makefile
	@(\
	    source .venv/bin/activate &&  \
	    $(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O) \
	)
