project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
    characterset ("MBCS")
	staticruntime "off"

	targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. OutputDir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"
		
	filter "system:linux"
		pic "On"
		systemversion "latest"
		staticruntime "On"


		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Test"
		runtime "Debug"
		symbols "on"

	filter "configurations:Profile"
		runtime "Release"
        optimize "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

