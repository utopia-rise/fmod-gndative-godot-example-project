extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.load(
func _ready():
	# set up FMOD
	Fmod.setSoftwareFormat(0, FmodFlags.FmodSpeakerModeFlags.FMOD_SPEAKERMODE_STEREO, 0)
	Fmod.init(1024, FmodFlags.FmodStudioInitFlags.FMOD_STUDIO_INIT_LIVEUPDATE, FmodFlags.FmodInitFlags.FMOD_INIT_NORMAL)
	
	# load banks
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Music.bank", FmodFlags.FmodLoadBankFlags.FMOD_STUDIO_LOAD_BANK_NORMAL)