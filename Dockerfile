FROM python:alpine

ENV API_SERVER_HOME=/opt/www
WORKDIR "$API_SERVER_HOME"

RUN apk add git pkgconfig musl-dev gcc python3-dev libffi-dev linux-headers cairo-dev gobject-introspection-dev
RUN git clone https://www.github.com/TakashiAihara/inoreader_util.git .

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python", "inoreader_starred_rest.py"]
