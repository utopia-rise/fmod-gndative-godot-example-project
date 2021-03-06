extends Node2D

class_name FmodFlags

enum FMOD_INIT_FLAGS {
	FMOD_INIT_3D_RIGHTHANDED = 4,
	FMOD_INIT_CHANNEL_DISTANCEFILTER = 512,
	FMOD_INIT_CHANNEL_LOWPASS = 256,
	FMOD_INIT_DISABLE_SRS_HIGHPASSFILTER = 4194304,
	FMOD_INIT_GEOMETRY_USECLOSEST = 262144,
	FMOD_INIT_MIX_FROM_UPDATE = 2,
	FMOD_INIT_NORMAL = 0,
	FMOD_INIT_PREFER_DOLBY_DOWNMIX = 524288,
	FMOD_INIT_PROFILE_ENABLE = 65536,
	FMOD_INIT_PROFILE_METER_ALL = 2097152,
	FMOD_INIT_STREAM_FROM_UPDATE = 1,
	FMOD_INIT_THREAD_UNSAFE = 1048576,
	FMOD_INIT_VOL0_BECOMES_VIRTUAL = 131072
}

enum FMOD_STUDIO_INIT_FLAGS {
	FMOD_STUDIO_INIT_ALLOW_MISSING_PLUGINS = 2,
	FMOD_STUDIO_INIT_DEFERRED_CALLBACKS = 8,
	FMOD_STUDIO_INIT_LIVEUPDATE = 1,
	FMOD_STUDIO_INIT_LOAD_FROM_UPDATE = 16,
	FMOD_STUDIO_INIT_NORMAL = 0
}

enum FMOD_SPEAKER_MODE_FLAGS {
	FMOD_SPEAKERMODE_5POINT1 = 6,
	FMOD_SPEAKERMODE_7POINT1 = 7,
	FMOD_SPEAKERMODE_7POINT1POINT4 = 8,
	FMOD_SPEAKERMODE_DEFAULT = 0,
	FMOD_SPEAKERMODE_MAX = 9,
	FMOD_SPEAKERMODE_MONO = 2,
	FMOD_SPEAKERMODE_QUAD = 4,
	FMOD_SPEAKERMODE_RAW = 1,
	FMOD_SPEAKERMODE_STEREO = 3,
	FMOD_SPEAKERMODE_SURROUND = 5
}

enum FMOD_LOAD_BANK_FLAGS {
	FMOD_STUDIO_LOAD_BANK_NORMAL = 0,
	FMOD_STUDIO_LOAD_BANK_NONBLOCKING = 1,
	FMOD_STUDIO_LOAD_BANK_DECOMPRESS_SAMPLES = 2
}

enum FMOD_SOUND_CONSTANTS {
	FMOD_2D = 8,
	FMOD_3D = 16,
	FMOD_3D_CUSTOMROLLOFF = 67108864,
	FMOD_3D_HEADRELATIVE = 262144,
	FMOD_3D_IGNOREGEOMETRY = 1073741824,
	FMOD_3D_INVERSEROLLOFF = 1048576,
	FMOD_3D_INVERSETAPEREDROLLOFF = 8388608,
	FMOD_3D_LINEARROLLOFF = 2097152,
	FMOD_3D_LINEARSQUAREROLLOFF = 4194304,
	FMOD_3D_WORLDRELATIVE = 524288,
	FMOD_ACCURATETIME = 16384,
	FMOD_CREATECOMPRESSEDSAMPLE = 512,
	FMOD_CREATESAMPLE = 256,
	FMOD_CREATESTREAM = 128,
	FMOD_DEFAULT = 0,
	FMOD_IGNORETAGS = 33554432,
	FMOD_LOOP_BIDI = 4,
	FMOD_LOOP_NORMAL = 2,
	FMOD_LOOP_OFF = 1,
	FMOD_LOWMEM = 134217728,
	FMOD_MPEGSEARCH = 32768,
	FMOD_NONBLOCKING = 65536,
	FMOD_OPENMEMORY = 2048,
	FMOD_OPENMEMORY_POINT = 268435456,
	FMOD_OPENONLY = 8192,
	FMOD_OPENRAW = 4096,
	FMOD_OPENUSER = 1024,
	FMOD_UNIQUE = 131072,
	FMOD_VIRTUAL_PLAYFROMSTART = -2147483648
}

enum FMOD_STUDIO_STOP_MODES {
	FMOD_STUDIO_STOP_ALLOWFADEOUT = 0,
	FMOD_STUDIO_STOP_IMMEDIATE = 1,
	FMOD_STUDIO_STOP_FORCEINT = 65536
}