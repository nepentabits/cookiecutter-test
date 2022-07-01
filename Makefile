venv:
	python3 -m venv venv
	./venv/bin/python -m pip install -r requirements.txt

venv-dev: venv
	./venv/bin/python -m pip install -r dev-requirements.txt

install-dev: venv-dev
	cd .. && ./cookiecutter_test/venv/bin/python -m pip install -e cookiecutter_test/

install: venv
	cd .. && ./cookiecutter_test/venv/bin/python -m pip install cookiecutter_test/

clean:
	rm -fr ./venv