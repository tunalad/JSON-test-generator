extends Control


onready var textLabel = $TextEdit

var rng = RandomNumberGenerator.new()
var img_limit = 3
var img_counter = 0

func _ready():
	rng.randomize()
	
	for i in range(1, 12):
		var randy = rng.randi_range(1, ImportData.data.size())
		var qstion = ImportData.data[str(randy)]
		
		#increments if it's a drawing
		if qstion["Drawing"] == true:
			img_counter += 1
		
		#check if drawings are missing
		if i > 8:
			if img_counter < img_limit:
				qstion["Question"] = dws_at_all_cost()
			else:
				pass
		
		var labelResult = str(i) + '. ' + qstion["Question"] + '\n' + '\n'
		print(i, '. ', qstion["Question"], ' - ', qstion["Drawing"])
		textLabel.text += labelResult
	
	if img_counter > img_limit:
		print("there's some xtra dws")
	else:
		pass
	
	print("dws: ", img_counter)

func dws_at_all_cost():
	var randyDraws = rng.randi_range(1, ImportData.drawables.size())
	return ImportData.data[str(randyDraws)]["Question"]
