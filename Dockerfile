FROM python3.8

WORKDIR /code

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

RUN apt update; apt install -y libgl1

COPY . .

CMD [ "python", "main.py" ]

EXPOSE 5000
