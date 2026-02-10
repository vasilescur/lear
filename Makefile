.PHONY: build install dev clean sha

build:
	python -m build

install:
	pip install .

dev:
	pip install -e .

clean:
	rm -rf dist/ build/ *.egg-info/
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true

sha:
	@echo "Download the release tarball and run:"
	@echo "  shasum -a 256 lear-1.0.0.tar.gz"
	@echo "Then update Formula/lear.rb with the sha256 value."
