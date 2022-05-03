cd pgAdmin

Docker-compose build

docker compose up

docker ps
docker inspect fcc97e066cc8 | grep IPAddress






C:\Development\Docker\pgAdmin>docker compose up
[+] Running 3/3
 - Network pgadmin_default       Created                                                                           0.0s
 - Contcd pgAdmin

Docker-compose build

docker compose up

docker ps
docker inspect fcc97e066cc8 | grep IPAddress






C:\Development\Docker\pgAdmin>docker compose up
[+] Running 3/3
 - Network pgadmin_default       Created                                                                           0.0s
 - Container pgadmin4_container  Started                                                                           1.0s
 - Container pg_container        Started                                                                           1.0s
Attaching to pg_container, pgadmin4_container
pg_container        | The files belonging to this database system will be owned by user "postgres".
pg_container        | This user must also own the server process.
pg_container        |
pg_container        | The database cluster will be initialized with locale "en_US.utf8".
pg_container        | The default database encoding has accordingly been set to "UTF8".
pg_container        | The default text search configuration will be set to "english".
pg_container        |
pg_container        | Data page checksums are disabled.
pg_container        |
pg_container        | fixing permissions on existing directory /var/lib/postgresql/data ... ok
pg_container        | creating subdirectories ... ok
pg_container        | selecting default max_connections ... 100
pg_container        | selecting default shared_buffers ... 128MB
pg_container        | selecting dynamic shared memory implementation ... posix
pg_container        | creating configuration files ... ok
pg_container        | running bootstrap script ... ok
pg_container        | performing post-bootstrap initialization ... ok
pg_container        | syncing data to disk ... ok
pg_container        |
pg_container        | Success. You can now start the database server using:
pg_container        |
pg_container        |     pg_ctl -D /var/lib/postgresql/data -l logfile start
pg_container        |
pg_container        |
pg_container        | WARNING: enabling "trust" authentication for local connections
pg_container        | You can change this by editing pg_hba.conf or using the option -A, or
pg_container        | --auth-local and --auth-host, the next time you run initdb.
pg_container        | waiting for server to start....2022-01-24 11:35:04.066 UTC [44] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
pg_container        | 2022-01-24 11:35:04.083 UTC [45] LOG:  database system was shut down at 2022-01-24 11:35:03 UTC
pg_container        | 2022-01-24 11:35:04.088 UTC [44] LOG:  database system is ready to accept connections
pg_container        |  done
pg_container        | server started
pg_container        | CREATE DATABASE
pg_container        |
pg_container        |
pg_container        | /usr/local/bin/docker-entrypoint.sh: ignoring /docker-entrypoint-initdb.d/*
pg_container        |
pg_container        | waiting for server to shut down...2022-01-24 11:35:04.476 UTC [44] LOG:  received fast shutdown request
pg_container        | .2022-01-24 11:35:04.481 UTC [44] LOG:  aborting any active transactions
pg_container        | 2022-01-24 11:35:04.483 UTC [44] LOG:  worker process: logical replication launcher (PID 51) exited with exit code 1
pg_container        | 2022-01-24 11:35:04.483 UTC [46] LOG:  shutting down
pg_container        | 2022-01-24 11:35:04.500 UTC [44] LOG:  database system is shut down
pg_container        |  done
pg_container        | server stopped
pg_container        |
pg_container        | PostgreSQL init process complete; ready for start up.
pg_container        |
pg_container        | 2022-01-24 11:35:04.589 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
pg_container        | 2022-01-24 11:35:04.589 UTC [1] LOG:  listening on IPv6 address "::", port 5432
pg_container        | 2022-01-24 11:35:04.595 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"pg_container        | 2022-01-24 11:35:04.610 UTC [62] LOG:  database system was shut down at 2022-01-24 11:35:04 UTC
pg_container        | 2022-01-24 11:35:04.618 UTC [1] LOG:  database system is ready to accept connections
pgadmin4_container  | NOTE: Configuring authentication for SERVER mode.
pgadmin4_container  |
pgadmin4_container  | [2022-01-24 11:35:18 +0000] [1] [INFO] Starting gunicorn 20.1.0
pgadmin4_container  | [2022-01-24 11:35:18 +0000] [1] [INFO] Listening at: http://[::]:80 (1)
pgadmin4_container  | [2022-01-24 11:35:18 +0000] [1] [INFO] Using worker: gthread
pgadmin4_container  | [2022-01-24 11:35:18 +0000] [88] [INFO] Booting worker with pid: 88
pgadmin4_container  | 2022-01-24 11:35:28,848: ERROR    pgadmin:        400 Bad Request: The CSRF session token is missing.
pgadmin4_container  | Traceback (most recent call last):
pgadmin4_container  |   File "/venv/lib/python3.9/site-packages/flask_wtf/csrf.py", line 261, in protect
pgadmin4_container  |     validate_csrf(self._get_csrf_token())
pgadmin4_container  |   File "/venv/lib/python3.9/site-packages/flask_wtf/csrf.py", line 103, in validate_csrf
pgadmin4_container  |     raise ValidationError("The CSRF session token is missing.")
pgadmin4_container  | wtforms.validators.ValidationError: The CSRF session token is missing.
pgadmin4_container  |
pgadmin4_container  | During handling of the above exception, another exception occurred:
pgadmin4_container  |
pgadmin4_container  | Traceback (most recent call last):
pgadmin4_container  |   File "/venv/lib/python3.9/site-packages/flask/app.py", line 1514, in full_dispatch_request
pgadmin4_container  |     rv = self.preprocess_request()
pgadmin4_container  |   File "/venv/lib/python3.9/site-packages/flask/app.py", line 1857, in preprocess_request
pgadmin4_container  |     rv = self.ensure_sync(before_func)()
pgadmin4_container  |   File "/venv/lib/python3.9/site-packages/flask_wtf/csrf.py", line 229, in csrf_protect
pgadmin4_container  |     self.protect()
pgadmin4_container  |   File "/venv/lib/python3.9/site-packages/flask_wtf/csrf.py", line 264, in protect
pgadmin4_container  |     self._error_response(e.args[0])
pgadmin4_container  |   File "/venv/lib/python3.9/site-packages/flask_wtf/csrf.py", line 307, in _error_response
pgadmin4_container  |     raise CSRFError(reason)
pgadmin4_container  | flask_wtf.csrf.CSRFError: 400 Bad Request: The CSRF session token is missing.
pgadmin4_container  | ::ffff:172.19.0.1 - - [24/Jan/2022:11:35:28 +0000] "GET /dashboard/dashboard_stats/1/16384?chart_names=session_stats,tps_stats,ti_stats,to_stats,bio_stats HTTP/1.1" 400 150 "http://localhost:5050/browser/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36"

