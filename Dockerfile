FROM python:3.7
COPY ./requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir homeassistant==0.93.2
RUN mkdir /config && echo "0.93.2" >> /config/.HA_VERSION
CMD hass -c /config
