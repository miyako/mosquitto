//%attributes = {}
#DECLARE($params : Object)

If (Count parameters:C259=0)
	
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	var $mosquitto_sub : cs:C1710.mosquitto_sub
	$mosquitto_sub:=cs:C1710.mosquitto_sub.new(cs:C1710._mosquitto_Controller)
	$mosquitto_sub.connect({host: "localhost"; topics: "hello/world"})
	
End if 