solution "Empty"
	language "C++"
	location "Projects"
	targetdir "Binaries"
	configurations { "SharedRelease", "SharedDebug", "StaticRelease", "StaticDebug", "Test" }

	configuration "SharedDebug or StaticDebug or Test"
		flags { "Symbols" }
	configuration "SharedRelease or StaticRelease"
		flags { "Optimize" }
	
	project "Empty"
		files
		{
			"Source/**.hpp", "Source/**.cpp"
		}
		vpaths
		{
			["Source Files"] = "Source/**.cpp",
			["Header Files"] = "Source/**.hpp"
		}
		
		configuration "SharedRelease or SharedDebug"
			kind "SharedLib"
		configuration "StaticRelease or StaticDebug"
			kind "StaticLib"
		configuration "Test"
			kind "ConsoleApp"
		
		configuration "windows"
			libdirs { "ThirdParty/Libraries" }
			includedirs { "ThirdParty/Include" }
			defines { "WINDOWS" }

		configuration "linux"
			buildoptions { "-std=c++11" }
			links { "pthread" } -- for std::thread
			defines { "LINUX" }
			
		configuration "SharedDebug or StaticDebug"
			targetsuffix "_d"
			
		links { } -- Such as { "GL", "X11" }

		configuration "linux"
			excludes { } -- "Source/WindowsX.cpp"
		configuration "windows"
			excludes { }
