# csgo-server
This is my csgo docker server using timche csgo docker image. I would use the timche image, but I needed to adjust the deathmatch config and this was the most plesant way. Also this docker image has vim inside to be able to configure the parameters ASAP.

first build the image using `docker build -t csgo` .

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

Don't forget to export port 27015 on your server!!!! 


## Controlling the server

To control the server using RCON (Remote Console) you need `CSGO_RCON_PW` and console. To open the console use [enable console](https://www.metabomb.net/csgo/gameplay-guides/csgo-how-to-open-the-command-console-2) and use `~` to open it.

First you need to login to admins account. You do this in console be using `rcon_password password123` to check if the login was successful use `rcon status` You should see player info, if the login was not successful, you will see Bad password.


### predefined configs

This image contains few predefined configs, one of them is for deathmatch called `dm_kubelka.cfg` and the other is for normal games called `live.cfg`
to execute the config use `rcon exec dm_kubelka.cfg`

### Other commands
Dont forget to use `rcon` before every of these commands.

[commands links 1](https://totalcsgo.com/commands) 
[commands links 2](https://steamcommunity.com/sharedfiles/filedetails/?id=1104142230) 


-restart game
`rcon mp_restartgame [Seconds]`
`rcon mp_restartgame 1`
-To change map
`rcon changelevel [Map_name]`
`rcon changelevel de_dust2``





`
