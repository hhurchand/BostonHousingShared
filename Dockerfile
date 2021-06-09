FROM continuumio/miniconda:4.5.4

RUN apt-get update \
    && apt-get install -y python3-pip \
    && pip3 install --upgrade pip

RUN pip3 install numpy pandas matplotlib seaborn plotly sklearn mlflow

WORKDIR /app

COPY BostonData.py /app
COPY data/DonneeBoston/* /app/data/DonneeBoston/

CMD ["python3","BostonData.py"]

