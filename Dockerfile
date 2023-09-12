# Utiliza una imagen oficial de Apache Airflow como base
FROM apache/airflow:2.1.2

# Configura la variable de entorno AIRFLOW_HOME
ENV AIRFLOW_HOME=/opt/airflow

# Crea el directorio "dags" dentro del directorio de trabajo de Airflow
RUN mkdir -p $AIRFLOW_HOME/dags

# Copia el archivo DAG del directorio actual al directorio "dags" del contenedor
COPY my_dag1_docker_operador.py $AIRFLOW_HOME/dags/

# Copia el archivo de configuración personalizado
COPY airflow.cfg $AIRFLOW_HOME/airflow.cfg

# Expone el puerto 8080 para el servidor web de Airflow
EXPOSE 8080

# Inicia el servidor web de Airflow al iniciar el contenedor
# Resto del Dockerfile...

# Inicia el servidor web de Airflow al iniciar el contenedor
CMD ["airflow", "webserver", "-D"]





