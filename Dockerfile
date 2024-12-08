FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8888
CMD ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

# docker build -t jupyterlab .
# docker run -p 8888:8888 -v /Users/tod/Desktop/docker-nlp:/app jupyterlab