extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	# set up FMOD
	Fmod.setSoftwareFormat(0, FmodFlags.FmodSpeakerModeFlags.FMOD_SPEAKERMODE_STEREO, 0)
	Fmod.init(1024, FmodFlags.FmodStudioInitFlags.FMOD_STUDIO_INIT_LIVEUPDATE, FmodFlags.FmodInitFlags.FMOD_INIT_NORMAL)
	
	# load banks
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Music.bank", FmodFlags.FmodLoadBankFlags.FMOD_STUDIO_LOAD_BANK_NORMAL)
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Master Bank.bank", FmodFlags.FmodLoadBankFlags.FMOD_STUDIO_LOAD_BANK_NORMAL)
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Master Bank.strings.bank", FmodFlags.FmodLoadBankFlags.FMOD_STUDIO_LOAD_BANK_NORMAL)
	#godot_fmod.playOneShot("event:/Level 01", self)
	
	# register listener
	#godot_fmod.addListener(self.get_viewport())
	Fmod.addListener(self)
	
	# play some events
	Fmod.playOneShot("event:/Music/Level 02", self)
	#godot_fmod.playOneShot("event:/Waterfall", $SoundSource2)