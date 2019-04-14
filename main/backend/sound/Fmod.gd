extends Node2D

var godot_fmod = load("res://main/backend/sound/Fmod.gdns").new()

func init(numOfChannels: int, studioFlag: String, fmodFlag: String):
	godot_fmod.init(1024, studioFlag, fmodFlag)

func setSoftwareFormat(sampleRate: int, speakerMode: String, numRowSpeakers: int):
	godot_fmod.setSoftwareFormat(sampleRate, speakerMode, numRowSpeakers)

func loadbank(pathToBank: String, loadBankFlag: String):
	godot_fmod.loadbank(pathToBank, loadBankFlag)

func unloadBank(pathToBank: String):
	godot_fmod.unloadBank(pathToBank)

func playOneShot(eventPath: String, object):
	godot_fmod.playOneShot(eventPath, object)

func playOneShotWithParams(eventPath: String, object, params: Dictionary):
	godot_fmod.playOneShotWithParams(eventPath, object, params)

func playOneShotAttached(eventPath: String, object):
	godot_fmod.playOneShotAttached(eventPath, object)

func playOneShotAttachedWithParams(eventPath: String, object, params: Dictionary):
	godot_fmod.playOneShotAttachedWithParams(eventPath, object, params)

func createEventInstance(uuid: String, eventPath: String):
	return godot_fmod.createEventInstance(uuid, eventPath)

func startEvent(uuid: String):
	godot_fmod.startEvent(uuid)

func stopEvent(uuid: String, stopMode: String):
	godot_fmod.stopEvent(uuid, stopMode)

func releaseEvent(uuid: String):
	godot_fmod.releaseEvent(uuid)

func setEventVolume(uuid: String, volume: float):
	godot_fmod.setEventVolume(uuid, volume)

func setEventPaused(uuid: String, paused: bool):
	godot_fmod.setEventPaused(uuid, paused)

func setEventPitch(uuid:String, pitch: float):
	godot_fmod.setEventPitch(uuid, pitch)

func addListener(object):
	godot_fmod.addListener(object)

func loadSound(uuid: String, path:String, mode:String):
	return godot_fmod.loadSound(uuid, path, mode)

func playSound(uuid: String):
	godot_fmod.playSound(uuid)

func stopSound(uuid: String):
	godot_fmod.stopSound(uuid)

func releaseSound(path: String):
	godot_fmod.releaseSound(path)

func setSoundPaused(uuid: String, paused: bool):
	godot_fmod.setSoundPaused(uuid, paused)

func setSoundVolume(uuid: String, volume: float):
	godot_fmod.setSoundVolume(uuid, volume)

func setSoundPitch(uuid: String, pitch: float):
	godot_fmod.setSoundPitch(uuid, pitch)

func _process(delta):
	godot_fmod.update()