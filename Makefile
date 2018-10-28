install:
	@pip install -r requirements.txt
	python db_create.py

run_server:
	gunicorn app:app.app -p app.pid -b 0.0.0.0:5000 -D

stop_server:
	kill -9 `cat app.pid`
