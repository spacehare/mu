extends Node

func _input(event):
	if not OS.is_debug_build():
		return
	if event.is_action("debug_exit"):
		get_tree().quit()
	if event.is_action("debug_restart"):
		get_tree().reload_current_scene()
