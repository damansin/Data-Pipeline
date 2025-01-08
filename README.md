# Custom ELT Project using Docker, Airflow, dbt, and PostgreSQL

This project demonstrates a simple **ELT (Extract, Load, Transform)** pipeline using **Docker**, **Airflow**, **dbt**, and **PostgreSQL**. The pipeline extracts data from a source PostgreSQL database, loads it into a destination PostgreSQL database, and applies transformations using dbt for further analysis.

## Features:
- **Docker Compose** to orchestrate the services.
- **Airflow** for workflow orchestration, scheduling, and task management.
- **dbt** for data transformations and modeling.
- **PostgreSQL** as both source and destination databases.

## Getting Started:
1. Clone the repository.
2. Run `./start.sh` to bring up all the containers.
3. Access the Airflow UI at [http://localhost:8080](http://localhost:8080).
4. Set up connections and run the ELT pipeline.

This project showcases a complete ELT process with automation and modern data tools. It can be extended and customized for various data integration and transformation use cases.
