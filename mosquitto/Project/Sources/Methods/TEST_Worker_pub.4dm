//%attributes = {}
#DECLARE($params : Object)

If (Count parameters:C259=0)
	
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	var $mosquitto_pub : cs:C1710.mosquitto_pub
	$mosquitto_pub:=cs:C1710.mosquitto_pub.new(cs:C1710._mosquitto_Controller)
	$mosquitto_pub.connect({host: "localhost"; topic: "hello/world"; message: "Hello, MQTT"})
	
End if 