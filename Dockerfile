from python:3.12

WORKDIR /bot

COPY ./requirements.txt /bot/requirements.txt

RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r /bot/requirements.txt

COPY ./src .
COPY keywords.json .

CMD ["python3", "main.py"]
