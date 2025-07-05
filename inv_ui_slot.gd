extends Panel

@onready var item_visual:Sprite2D = $CenterContainer/item_display


func update(item: Invitem):
	if !item:
		item_visual.visible=false
	else:
		item_visual.visible = true
		item_visual.texture = item.texture
