FROM python:3

WORKDIR /usr/src/app/build
COPY ./install/requirements.txt /usr/src/app
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

COPY . /usr/src/app 
RUN cd /usr/src/app/install && python convert.py

CMD ["python", "-m", "http.server",  "21099"]
EXPOSE 21099