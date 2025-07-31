# mosquitto_pub : mosquitto : \_CLI

`mosquitto_pub` is a subclass of `_CLI` to execute the `mosquitto_pub` program. 

## .connect() 

**.connect**($options : Object) : cs.mosquitto_pub

|option|value type|
|-|-|
|host|Text|
|port|Integer|
|topic|Text|
|username|Text|
|password|Text|
|qos|Integer|
|cafile|4D.File|
|cert|4D.File|
|key|4D.File|
|retain|Boolean|
|message|Blob or Text or 4D.File|
