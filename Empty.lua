solution "Empty"
	language "C++"
	location "Projects"
	targetdir "Binaries"
	configurations { "Release", "Debug" }

	configuration "Debug"
		flags { "Symbols" }
	configuration "Release"
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
		
		kind "ConsoleApp" -- StaticLib, SharedLib
		
		configuration "windows"
			libdirs { "ThirdParty/Libraries" }
			includedirs { "ThirdParty/Include" }
			defines { "WINDOWS" }

		configuration "linux"
			buildoptions { "-std=c++11" }
			links { "pthread" } -- for std::thread
			defines { "LINUX" }
			
		configuration "Debug"
			targetsuffix "_d"
			
		links { } -- Such as { "GL", "X11" }

		configuration "linux"
			excludes { } -- "Source/WindowsX.cpp"
		configuration "windows"
			excludes { }
