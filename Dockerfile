# Utiliza la imagen base de Python
FROM python

# Establece el directorio de trabajo en el contenedor
WORKDIR /app/

# Copia todos los archivos y carpetas desde la carpeta actual (que contiene Dockerfile) en tu sistema local al contenedor
COPY . /app/

# Instala las dependencias desde el archivo "requirements.txt"
RUN pip install -r /app/librerias.txt

EXPOSE 5439

# Cambia los permisos del script para que sea ejecutable (si es necesario)
RUN chmod +x /app/script_completo_ultimo_definitivo.py

# Ejecuta el script de Python al iniciar el contenedor
CMD ["python", "/app/script_completo_ultimo_definitivo.py"]









