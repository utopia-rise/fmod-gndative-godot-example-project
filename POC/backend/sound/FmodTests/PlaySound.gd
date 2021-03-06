extends Node2D

func _ready():
	Fmod.setSoftwareFormat(0, FmodFlags.FMOD_SPEAKER_MODE_FLAGS.FMOD_SPEAKERMODE_STEREO, 0)
	Fmod.init(1024, FmodFlags.FMOD_STUDIO_INIT_FLAGS.FMOD_STUDIO_INIT_LIVEUPDATE, FmodFlags.FMOD_INIT_FLAGS.FMOD_INIT_NORMAL)
	Fmod.addListener(self)
	var my_sound = Fmod.loadSound("intro", "./main/sound/20-Title_Gym.wav", FmodFlags.FMOD_SOUND_CONSTANTS.FMOD_DEFAULT)
	Fmod.playSound(my_sound)
