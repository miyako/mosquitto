property retain : Boolean
property topic : Text

Class extends mosquitto

Class constructor($controller : 4D:C1709.Class)
	
	Super:C1705("mosquitto_pub"; $controller)
	
Function connect($options : Object) : cs:C1710.mosquitto_pub
	
	$command:=This:C1470.parseOptions($options)
	
	If ($options.retain#Null:C1517) && (Bool:C1537($options.retain))
		$command+=" -r"
	End if 
	
	If ($options.topic#Null:C1517)
		This:C1470.topic:=String:C10($options.topic)
		$command+=" -t"
		$command+=" "+This:C1470.escape(This:C1470.topic)
	End if 
	
	var $dataType : Text
	Case of 
		: (Value type:C1509($options.message)=Is text:K8:3) || (Value type:C1509($options.message)=Is BLOB:K8:12)
			$dataType:="message"
			$command+=" -s"
		: ($options.message#Null:C1517) && (OB Instance of:C1731($options.message; 4D:C1709.File)) && ($options.message.exists)
			$dataType:="file"
			$command+=" -f"
			$command+=" "+This:C1470.escape(This:C1470._path($options.message))
	End case 
	
	This:C1470.controller.init().execute($command)
	
	Case of 
		: ($dataType="message")
			This:C1470.worker.postMessage($options.message)
			This:C1470.worker.closeInput()
	End case 
	
	return This:C1470