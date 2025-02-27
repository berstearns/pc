FROM python:3.11
WORKDIR /app
RUN git clone https://github.com/berstearns/pc .
RUN pip install -r ./context/requirements.txt
