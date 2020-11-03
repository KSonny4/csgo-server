# csgo-server
This is my csgo docker server using timche csgo docker image. I would use the timche image, but I needed to adjust the deathmatch config and this was the most plesant way. Also this docker image has vim inside to be able to configure the parameters ASAP.

first build the image 
docker build -t csgo .

then run the server and fill the variables:

| variable |  meaning |
|---|---|
| `CSGO_RCON_PW` |  Password to control the server from console |
| `CSGO_PW` |  Password for server |
| `CSGO_GSLT` |  Your personal Gameserver Login Token. Generate it [here](https://steamcommunity.com/dev/managegameservers), fill 730 for the APP ID and some memo to know where this ID is used. |
|  `CSGO_TICKRATE` | Tickrate is number of synchronizations per seconds. Optionally change tickrate from 64 to 128 if your server is awesome.  |
| `CSGO_HOSTNAME` | Name of the server, dont use spaces. If you need them you need to change some config somewhere.|

```
docker run -d --net=host -v=csgo:/home/csgo/server  -e CSGO_RCON_PW=XXXXX -e CSGO_PW=XXXXX -e CSGO_TICKRATE=64 -e SERVER_CONFIGS=true -e CSGO_HOSTNAME=CSGO_Night_Axazt -e CSGO_GSLT=XXXX csgo_server
```

e.g.

```
docker run -d --net=host -v=csgo:/home/csgo/server  -e CSGO_RCON_PW=heslo_admina -e CSGO_PW=kamaradi1234 -e CSGO_TICKRATE=64 -e SERVER_CONFIGS=true -e CSGO_HOSTNAME=CSGO_Name_of_the_server_dont_use_spaces -e CSGO_GSLT=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX csgo_server

```

Don't forget to export port 27015. 


## Controlling the server

To control the server you need `CSGO_RCON_PW`


`
