class_name SimpleClient

extends Node

# Connect all functions
var clientpeer
var const SERVER_IP = 127.0.0.1 setget setHostIP
var const SERVER_PORT = 7777 setget setServerPort

func _ready():
	get_tree().connect("connected_to_server", self, "_connected_ok")
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("server_disconnected", self, "_server_disconnected")
	get_tree().connect("connection_failed", self, "_connected_fail")


func _initÖ_Client() -> void:
	var clientpeer = NetworkedMultiplayerENet.new()
	clientpeer.create_client(SERVER_IP, SERVER_PORT)
	get_tree().network_peer = clientpeer


# Only called on clients, not server. Will go unused; not useful here.
func _connected_ok():
	pass 


func _player_connected(id):
	pass


# Server kicked us; show error and abort.
func _server_disconnected():
	pass


# Could not even connect to server; abort.
func _connected_fail():
	pass 


func setServerPort(port:int)
	if port > 0 and port <= 65535
		SERVER_PORT = port
	# else
		# Error, Port out of Range