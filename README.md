# Steps taken

### Step 0
Setup venv and download apache-beam==2.43.0

### Step 1
Setup python job server as in `direct_runner_job_server.sh`

### Step 2
Build the Beam Java SDK container for a local pipeline execution as shown in [Step 4](https://beam.apache.org/documentation/sdks/java-multi-language-pipelines/#run-with-directrunner)

### Step 3
Run pipeline with the `run.sh` script

## Problem
Reading and Writing locally does not seem to work. 
Error in [logs](https://github.com/andres-vv/x-lang-testing/tree/main/logs):
`java.io.FileNotFoundException: No files matched spec: src/main/resources/input.csv`


Reading from a public gcs bucket works, but the sample problem arises when writing the output locally.
