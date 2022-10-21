FROM python:3

WORKDIR /app

COPY requirements.txt requirements.txt
RUN apt-get update
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
