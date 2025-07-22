FROM osrm/osrm-backend

WORKDIR /data

COPY profile.lua /opt/car.lua

CMD ["osrm-routed", "--algorithm", "mld", "/data/iran-latest.osrm"]
