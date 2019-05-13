extends Node2D

func _ready():
	# set up FMOD
	Fmod.setSoftwareFormat(0, FmodFlags.FMOD_SPEAKER_MODE_FLAGS.FMOD_SPEAKERMODE_STEREO, 0)
	Fmod.init(1024, FmodFlags.FMOD_STUDIO_INIT_FLAGS.FMOD_STUDIO_INIT_LIVEUPDATE, FmodFlags.FMOD_INIT_FLAGS.FMOD_INIT_NORMAL)
  Fmod.setSound3DSettings(1.0, 64.0, 1.0)
	
	# load banks
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/SFX.bank", FmodFlags.FMOD_LOAD_BANK_FLAGS.FMOD_STUDIO_LOAD_BANK_NORMAL)
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Master Bank.bank", FmodFlags.FMOD_LOAD_BANK_FLAGS.FMOD_STUDIO_LOAD_BANK_NORMAL)
	Fmod.loadbank("./POC/backend/sound/Banks/Desktop/Master Bank.strings.bank", FmodFlags.FMOD_LOAD_BANK_FLAGS.FMOD_STUDIO_LOAD_BANK_NORMAL)
	
	# register listener
	Fmod.addListener($Listener)
	
	# Create event instance
	var my_music_event = Fmod.createEventInstance("my_music_event", "event:/Weapons/Machine Gun")
	
	Fmod.startEvent(my_music_event)
	
	# attach instance to node
	Fmod.attachInstanceToNode(my_music_event, $NodeToAttach)
	
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	
	Fmod.detachInstanceFromNode(my_music_event)
	Fmod.stopEvent(my_music_event, FmodFlags.FMOD_STUDIO_STOP_MODES.FMOD_STUDIO_STOP_IMMEDIATE)