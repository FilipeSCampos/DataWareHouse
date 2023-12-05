from airflow import DAG
from airflow.decorators import dag, task
from airflow.operators.python import PythonOperator
from airflow.providers.microsoft.azure.hooks.wasb import WasbHook
from datetime import datetime, timedelta
import pandas as pd
from sqlalchemy import create_engine


# Define the Azure Blob Storage connection ID
AZURE_CONN_ID = 'https://airflowmineracao.blob.core.windows.net/airlfowdag/dados.json'

# Define the PostgreSQL connection ID
POSTGRES_CONN_ID = 'localhost:5432'

# Define the DAG
default_args = {
    'owner': 'Filipe Campos',
    'depends_on_past': False,
    'start_date': datetime(2023, 1, 1),
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

@dag(
    'etl_azure',
    default_args=default_args,
    description='ETL pipeline for data from AzureBlob to Data Warehouse',
    schedule_interval=timedelta(days=1),
)

def etl_pipeline():
    
    @task()
    def download_data_from_azure_blob():

        blob_connection = WasbHook(wasb_conn_id="azure_blob_storage")
        data = blob_connection.download('airlfowdag','dados.json')
        return data

        

    @task()
    def load_data_to_postgres(data):
        engine = create_engine('postgresql+psycopg2://postgres:admin@localhost:5432/Techno')

        for table_name, table_data in data.items():
            df = pd.DataFrame(table_data)
            df.to_sql(table_name, con=engine, if_exists='replace', index=False)

    data = download_data_from_azure_blob()
    load_data_to_postgres(data)

etl_dag = etl_pipeline()


