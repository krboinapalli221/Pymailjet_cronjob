FROM ubuntu:20.04
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y python3 && apt-get install python3-pip -y && pip install mailjet-rest && apt-get install cron -y && apt-get install vim -y
COPY cronjob.sh .
COPY pymail.py .
RUN chmod +x /cronjob.sh
ENTRYPOINT /cronjob.sh