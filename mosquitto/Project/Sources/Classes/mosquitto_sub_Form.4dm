property host : Text
property topics : Text
property messages : Object
property stdErr : Text
property stdOut : Text

Class extends mosquitto_Form


Class constructor
	
	Super:C1705("mosquitto_sub")
	
Function onLoad()
	
	Super:C1706.onLoad()
	
	Form:C1466.host:="localhost"
	Form:C1466.messages:={col: []; sel: Null:C1517; pos: Null:C1517; item: Null:C1517}
	
Function connect()
	
	Form:C1466.stdErr:=""
	Form:C1466.stdOut:=""
	Form:C1466.mosquitto_sub.connect({host: Form:C1466.host; topics: Split string:C1554(Form:C1466.topics; ",")})