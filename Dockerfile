FROM osrm/osrm-backend

WORKDIR /data

COPY data/iran-latest.osm.pbf .

RUN osrm-extract -p /opt/car.lua /data/iran-latest.osm.pbf
RUN osrm-partition /data/iran-latest.osrm
RUN osrm-customize /data/iran-latest.osrm

CMD ["osrm-routed", "--algorithm", "mld", "/data/iran-latest.osrm"]
