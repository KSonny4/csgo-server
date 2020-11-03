FROM timche/csgo:sourcemod-2.3.1 

USER root

RUN apt-get update \
    && apt-get install -y vim

COPY dm_kubelka.cfg .

USER csgo
