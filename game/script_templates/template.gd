#class_name Template_Script

#const Template = preload("res://Script_Templates/Template_Script.gd")

#Nutze die Vergangenheitsform um Signale zu benennen:
#
#signal door_opened
#signal score_changed

#Verwende CONSTANT_CASE, alles in Großbuchstaben, mit einem Unterstrich zur Worttrennung:
#const CONSTAND_VAR = 200:

#Verwenden Sie PascalCase für Aufzählungsnamen und CONSTANT _CASE für deren Mitglieder, da es sich um Konstanten handelt:

# enum Element {
#    EARTH,
#    WATER,
#    AIR,
#    FIRE,
#}

#-------------------------------------------------------------------------------

#01. tool
#02. class_name
#03. extends
#04. # docstring
#
#05. signals
#06. enums
#07. constants
#08. exported variables
#09. public variables
#10. private variables
#11. onready variables
#
#12. optional built-in virtual _init method
#13. built-in virtual _ready method
#14. remaining built-in virtual methods
#15. public methods
#16. private methods

#-------------------------------------------------------------------------------
# Header
#-------------------------------------------------------------------------------
#tool
#class_name
extends %BASE%
# Eine Vorlage für neue Scripte
#-------------------------------------------------------------------------------
# Signals
#-------------------------------------------------------------------------------
# enums
#-------------------------------------------------------------------------------
# constants
#-------------------------------------------------------------------------------
# exported variables
#-------------------------------------------------------------------------------
# private variables
#-------------------------------------------------------------------------------
# onready variables
#onready var myVar: string
#-------------------------------------------------------------------------------
# optional built-in virtual _init method
#-------------------------------------------------------------------------------
# built-in virtual _ready method
#-------------------------------------------------------------------------------
# Called every time the node enters the scene tree.
func _enter_tree():
    pass

# Called when both the node and its children have entered the scene tree.
func _ready():
    pass

# Called when the node is about to leave the scene tree, after all its
children received the _exit_tree() callback.
func _exit_tree():
    pass
#-------------------------------------------------------------------------------
# built-in Process methods
#-------------------------------------------------------------------------------
# Called every frame, as often as possible.
func _process(delta):
    pass

# Called every physics frame.
func _physics_process(delta):
    pass
#-------------------------------------------------------------------------------
# built-in input methods
#-------------------------------------------------------------------------------
# Called once for every event.
func _unhandled_input(event):
    pass

# Called once for every event, before _unhandled_input(), allowing you to
# consume some events.
func _input(event):
    pass
#-------------------------------------------------------------------------------
# remaining built-in virtual methods
#-------------------------------------------------------------------------------
# public methods
#-------------------------------------------------------------------------------
# private methods
#-------------------------------------------------------------------------------

