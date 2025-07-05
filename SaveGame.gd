extends Node2D

var SAVE_DIR = "user://saves/"
var SAVE_FILE_NAME = "PlayerSave.tres"

var player_data = PlayerData.new()


func _ready():
	verify_save_directory(SAVE_DIR)
	
func verify_save_directory(path: String):
	DirAccess.make_dir_absolute(path)


func save_data(path:String):
	var file = FileAccess.open(path,FileAccess.WRITE)
	if file == null:
		print(FileAccess.get_open_error())
		return
	var data = {
		"global.position":{
			"x":player_data.global_position.x,
			"y":player_data.global_position.y
			}
		
	}
	file.close()
	
func load_data(path:String):
	
	
	if FileAccess.file_exists(path):
		var file = FileAccess.open(path,FileAccess.READ)
		if file == null:
			print(FileAccess.get_open_error())
			return
		var content = file.get_as_text()
		file.close()
		
		player_data = PlayerData.new()
		
	else:
		printerr("Cannot open non existant file")
func _process(delta: float) -> void:
	pass


func _on_save_pressed() -> void:
	ResourceSaver.save(PlayerData, SAVE_DIR + SAVE_FILE_NAME)

func _on_load_pressed() -> void:
	player_data = ResourceLoader.load(SAVE_DIR + SAVE_FILE_NAME).duplicate(true)
