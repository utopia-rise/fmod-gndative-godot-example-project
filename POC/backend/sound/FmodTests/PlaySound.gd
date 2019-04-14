extends Node2D

func _ready():
	Fmod.setSoftwareFormat(0, FmodFlags.FmodSpeakerModeFlags.FMOD_SPEAKERMODE_STEREO, 0)
	Fmod.init(1024, FmodFlags.FmodStudioInitFlags.FMOD_STUDIO_INIT_LIVEUPDATE, FmodFlags.FmodInitFlags.FMOD_INIT_NORMAL)
	Fmod.addListener(self)
	var my_sound = Fmod.loadSound("intro", "./main/sound/20-Title_Gym.wav", FmodFlags.fmodSoundConstants.FMOD_DEFAULT)
	Fmod.playSound(my_sound)
