FROM python:3.6

COPY / /app

WORKDIR /app

RUN pip3 install -r requirements.txt
RUN apt-get update && apt-get install -y nvme-cli

EXPOSE 9900

CMD ["python", "nvme_exporter.py", "-p", "9900", "-u", "10"]
