project "Box2D"
  kind "StaticLib"
  language "C++"
  cppdialect "C++11"
  staticruntime "off"

  targetdir ("bin/" .. outputdir .. "/{prj.name}")
  objdir ("intermediate/" .. outputdir .. "/{prj.name}")
    
  files
  {
    "src/**.cpp",
    "src/**.h",
    "include/**.h"
  }
    
  includedirs
  {
    "src",
    "include"
  }
    
  filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
