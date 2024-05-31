extends Control

@onready var music_player = $MusicPlayer  # Replace with your actual Music player node
@onready var sfx_player = $SFXPlayer      # Replace with your actual SFX player node

func _ready():
	# Connect signals for muting checkboxes
	$MuteMusicCheckBox.connect("toggled", self, "_on_mute_music_toggled")
	$MuteSFXCheckBox.connect("toggled", self, "_on_mute_sfx_toggled")

func _on_mute_music_toggled(active):
	music_player.mute = active
	# Optionally add visual feedback or other logic when muting music

func _on_mute_sfx_toggled(active):
	sfx_player.mute = active
	# Optionally add visual feedback or other logic when muting SFX
