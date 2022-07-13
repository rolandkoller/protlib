package-test:
	pip install twine
	python3 setup.py sdist bdist_wheel
	python3 -m twine upload --repository testpypi dist/*

package:
	pip install twine
	python3 setup.py sdist bdist_wheel
	python3 -m twine upload --repository pypi dist/*
