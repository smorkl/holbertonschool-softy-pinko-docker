# Usar una imagen base
FROM ubuntu:20.04

# Instalar dependencias necesarias
RUN apt update && apt install -y \
    python3 \
    python3-pip \
    curl

# Copiar los archivos de tu aplicación al contenedor
COPY . /app

# Establecer el directorio de trabajo
WORKDIR /app

# Instalar las dependencias de Python (si tienes un archivo requirements.txt)
RUN pip3 install -r requirements.txt

# Exponer el puerto que usará la aplicación
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python3", "app.py"]
