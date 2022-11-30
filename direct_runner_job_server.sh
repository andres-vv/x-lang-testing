export JOB_SERVER_PORT=8080

python -m apache_beam.runners.portability.local_job_service_main -p $JOB_SERVER_PORT