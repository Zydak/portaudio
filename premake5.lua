project "portaudio"
    architecture "x86_64"
    kind "StaticLib"
    language "C"
    location "build"
    configurations { "Debug", "Release", "Dist" }
    platforms { "Windows", "Linux" 

    objdir "build/obj/%{cfg.buildcfg}"
    targetdir "build/bin/%{cfg.buildcfg}"

    filter "platforms:Linux"
        prebuildcommands
        {
            "./configure",
            "make",
            "cp lib/.libs/libportaudio.a ../lib/liblibportaudio.a" -- for some reason it has to be liblib
        }