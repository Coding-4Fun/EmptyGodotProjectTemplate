class_name SimpleServer

extends Node


# TCP Calls. zuverlässig, geordnet und langsam
# rpc("function_name", <optional_args>)
# rpc_id(<peer_id>,"function_name", <optional_args>)
# rset("variable", value)
# rset_id(<peer_id>, "variable", value)

# UDP Calls, unzuverlässig, ungeordnet und schnell
# rpc_unreliable("function_name", <optional_args>)
# rpc_unreliable_id(<peer_id>, "function_name", <optional_args>)
# rset_unreliable("variable", value)
# rset_unreliable_id(<peer_id>, "variable", value)

# Keine weiteren Verbindungen aktzeptieren
# set_refuse_new_network_connections(bool)

# get_rpc_sender_id ()
# get_tree().get_network_peer()
# get_tree().is_network_server()

# remote		func executed only on clients
# remotesync 	func executed on Server & Client
# master		func called 
# puppet		func called from client, executed only on peers, not host

var serverpeer	# NetworkedMultiplayerPeer-Objekt
var const SERVER_PORT = 7777 setget setServerPort
var const MAX_PLAYERS = 2 setget setMaxPlayer

# Connect all functions
func _ready():
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")

func _player_connected(id):
	pass

# One Client closed the connection
func _player_disconnected(id):
	pass


func setMaxPlayer(player:int)
	MAX_PLAYERS = player


func setServerPort(port:int)
	if port > 0 and port <= 65535
		SERVER_PORT = port
	# else
		# Error, Port out of Range


func _init_server() -> void: 
	serverpeer = NetworkedMultiplayerENet.new()
	serverpeer.create_server(SERVER_PORT, MAX_PLAYERS)
	get_tree().network_peer = serverpeer