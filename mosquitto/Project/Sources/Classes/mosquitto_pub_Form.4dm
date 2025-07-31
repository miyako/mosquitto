property host : Text
property topic : Text
property message : Text
property stdErr : Text
property stdOut : Text

Class extends mosquitto_Form

Class constructor
	
	Super:C1705("mosquitto_pub")
	
Function onLoad()
	
	Super:C1706.onLoad()
	
	Form:C1466.host:="localhost"
	Form:C1466.topic:=""
	Form:C1466.message:=""
	
Function connect()
	
	Form:C1466.stdErr:=""
	Form:C1466.stdOut:=""
	Form:C1466.mosquitto_pub.connect({host: Form:C1466.host; topic: Form:C1466.topic; message: Form:C1466.message})