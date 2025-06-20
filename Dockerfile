# Use Python 3.10 como base
FROM python:3.10-slim

# Define diretório de trabalho
WORKDIR /app

# Copia os arquivos
COPY . /app

# Atualiza pip e instala dependências
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Exponha a porta usada pelo Streamlit
EXPOSE 8501

# Comando para iniciar o app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
