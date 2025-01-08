# ELT Pipeline Project

This repository demonstrates a custom **Extract, Load, Transform (ELT)** pipeline using **Docker**, **Apache Airflow**, **dbt**, and **PostgreSQL**. The project automates the process of extracting data from a source PostgreSQL database, loading it into a destination database, and transforming it using dbt.

## Project Structure

- **docker-compose.yaml**: Configures Docker Compose to run the necessary services in containers:
  - `source_postgres`: Source PostgreSQL database.
  - `destination_postgres`: Destination PostgreSQL database.
  - `postgres`: Stores metadata for Airflow.
  - `webserver` & `scheduler`: Airflow services to manage workflows.

- **elt/elt_script.py**: Python script that handles the ELT process by extracting data from the source database and loading it into the destination database.

- **airflow/dags/elt_dag.py**: Airflow Directed Acyclic Graph (DAG) that orchestrates the ELT process, including running the Python ELT script and dbt for transformations.

- **custom_postgres**: Folder containing dbt models for data transformations.

- **source_db_init/init.sql**: Initializes the source PostgreSQL database with sample data.

## How It Works

1. **Docker Compose**: Launches the containers for the source and destination databases, Airflow, and metadata storage.

2. **ELT Process**: 
   - Data is extracted from the source PostgreSQL database using a Python script (`elt_script.py`).
   - The data is then loaded into the destination PostgreSQL database.
   - Finally, dbt applies transformations to the data in the destination database for analysis.

3. **Airflow**: Orchestrates the workflow using a DAG:
   - The first task (`run_elt_script`) executes the Python ELT script to load data.
   - The second task (`dbt_run`) runs dbt to transform the data in the destination database.

4. **Cron Job**: Automates the ELT process by running the tasks at specified intervals.

## Technologies Used

- Docker
- PostgreSQL
- Apache Airflow
- dbt (data build tool)
- Python
