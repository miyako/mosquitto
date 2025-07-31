property topics : Collection

Class extends mosquitto

Class constructor($controller : 4D:C1709.Class)
	
	Super:C1705("mosquitto_sub"; $controller)
	
Function connect($options : Object) : cs:C1710.mosquitto_sub
	
	$command:=This:C1470.parseOptions($options)
	
	var $topics : Collection
	Case of 
		: (Value type:C1509($options.topics)=Is text:K8:3)
			$topics:=[$options.topics]
		: (Value type:C1509($options.topics)=Is collection:K8:32)
			$topics:=$options.topics
		Else 
			$topics:=[]
	End case 
	This:C1470.topics:=$topics
	var $topic : Text
	For each ($topic; $topics)
		$command+=" -t"
		$command+=" "+This:C1470.escape($topic)
	End for each 
	
	This:C1470.controller.init().execute($command)
	
	return This:C1470