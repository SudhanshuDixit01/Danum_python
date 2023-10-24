FROM python:3.8-slim-buster


WORKDIR /python-docker

COPY requirements.txt requirents.txt
RUN pip3 install -r requirents.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

