extends StaticBody2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var interactable: Area2D = $Interactable
@onready var collision_shape_2d: CollisionShape2D = $Interactable/CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	interactable.interact = _on_interact

func _on_interact():
	if sprite_2d.frame == 0 :
		sprite_2d.frame = 1
		if sprite_2d.frame == 1 :
			sprite_2d.frame = 2
			if sprite_2d.frame == 2:
				sprite_2d.frame = 3
				if sprite_2d.frame == 3:
					sprite_2d.frame = 4
					if sprite_2d.frame == 4:
						sprite_2d.frame = 5
						if sprite_2d.frame == 5:
							sprite_2d.frame = 6;
							if sprite_2d.frame ==6:
								sprite_2d.frame = 7
								if sprite_2d.frame ==7:
									sprite_2d.frame = 8
									if sprite_2d.frame ==8:
										sprite_2d.frame = 9
										if sprite_2d.frame ==9 :
											sprite_2d.frame =10 
											if sprite_2d.frame == 10:
												sprite_2d.frame = 11
												
												
				
	interactable.is_interactable = false
	collision_shape_2d.set_deferred("disabled" , false)
	get_tree().change_scene_to_file("res://Scenes/middle_scene.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
