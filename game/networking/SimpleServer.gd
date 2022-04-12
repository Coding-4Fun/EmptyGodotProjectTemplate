class_name SimpleServer

extends Node

# Connect all functions

func _ready():
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")

func _player_connected(id):
	pass

# One Client closed the connection
func _player_disconnected(id):
	pass


