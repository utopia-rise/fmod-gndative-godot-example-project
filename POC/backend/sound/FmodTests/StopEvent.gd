extends Node2D

func _ready():
	# set up FMOD
	Fmod.setSoftwareFormat(0, FmodFlags.FmodSpeakerModeFlags.FMOD_SPEAKERMODE_STEREO, 0)
	Fmod.init(1024, FmodFlags.FmodStudioInitFlags.FMOD_STUDIO_INIT_LIVEUPDATE, FmodFlags.FmodInitFlags.FMOD_INIT_NORMAL)
	
	# load banks
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Music.bank", FmodFlags.FmodLoadBankFlags.FMOD_STUDIO_LOAD_BANK_NORMAL)
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Master Bank.bank", FmodFlags.FmodLoadBankFlags.FMOD_STUDIO_LOAD_BANK_NORMAL)
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Master Bank.strings.bank", FmodFlags.FmodLoadBankFlags.FMOD_STUDIO_LOAD_BANK_NORMAL)
	
	# register listener
	Fmod.addListener(self)
	
	# play some events
	var my_music_event = Fmod.createEventInstance("my_music_event", "event:/Music/Level 02")
	Fmod.startEvent(my_music_event)
	var t = Timer.new()
	t.set_wait_time(3)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	Fmod.stopEvent(my_music_event, FmodFlags.fmodStudioStopModes.FMOD_STUDIO_STOP_ALLOWFADEOUT)
	t = Timer.new()
	t.set_wait_time(3)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	Fmod.releaseEvent(my_music_event)
