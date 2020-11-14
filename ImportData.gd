extends Node


var data
var nondrawables = []
var drawables = []

func _ready():
	var data_file = File.new()
	data_file.open("res://arhitekturaDB - Sheet1.json", File.READ) #JSON file with questions
	var data_json = JSON.parse(data_file.get_as_text())
	data_file.close()
	data = data_json.result
	print("DATA LOADED")
	
	for i in range(1, data.size()):
		if data[str(i)]["Drawing"] == true:
			drawables.append(data[str(i)])
			pass
