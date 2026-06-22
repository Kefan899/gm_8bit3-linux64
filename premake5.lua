PROJECT_GENERATOR_VERSION = 2

newoption({
	trigger = "gmcommon",
	description = "Sets the path to the garrysmod_common (https://github.com/danielga/garrysmod_common) directory",
	value = "C:\\module\\garrysmod_common"
})

local gmcommon = assert(_OPTIONS.gmcommon or os.getenv("GARRYSMOD_COMMON"),
	"you didn't provide a path to your garrysmod_common (https://github.com/danielga/garrysmod_common) directory")
include(gmcommon)
CreateWorkspace({name = "eightbit"})
	CreateProject({serverside = true})
		IncludeSDKCommon()
		IncludeSDKTier0()
		IncludeSDKTier1()
		IncludeDetouring()
		IncludeScanning()
		IncludeLuaShared()
		IncludeHelpersExtended()

		links("opus")
		includedirs("opus/include")

		filter({"platforms:x86_64"})
			architecture("x86_64")
			if os.isdir("opus/lib64") then
				libdirs("opus/lib64")
			end

		filter({"platforms:x86"})
			architecture("x86")
			if os.isdir("opus/lib32") then
				libdirs("opus/lib32")
			end

		filter("system:windows")
			links("ws2_32")

filter("system:linux")
	links("dl")
	
