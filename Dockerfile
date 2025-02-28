# Usamos una imagen base de Python
FROM python:3.9-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos el archivo de dependencias
COPY requirements.txt .

# Instalamos las dependencias
RUN pip install -r requirements.txt

# Copiamos el código de la aplicación
COPY . .

# Exponemos el puerto en el que la app Flask correrá
EXPOSE 5000

# Comando para ejecutar la app Flask
CMD ["python", "app.py"]
