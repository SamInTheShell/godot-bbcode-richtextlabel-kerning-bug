extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer/Control/RichTextLabel.text = default_text


var enable_bbcode : bool = false

const default_text : String = "[color=gray]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.[/color]"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		if not enable_bbcode:
			$CanvasLayer/Control/RichTextLabel.text = "[color=white]Lorem[/color] [color=gray]ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.[/color]"
			enable_bbcode = true
		else:
			$CanvasLayer/Control/RichTextLabel.text = default_text
			enable_bbcode = false
