project "portaudio"
    architecture "x86_64"
    kind "StaticLib"
    language "C"
    configurations { "Debug", "Release", "Dist" }
    platforms { "Windows", "Linux" }

    objdir "build/obj/%{cfg.buildcfg}"
    targetdir "build/bin/%{cfg.buildcfg}"

    filter "platforms:Linux"
        prebuildcommands
        {
            "./configure",
            "make",
            "cp lib/.libs/libportaudio.a ../lib/libportaudioPremake.a"
        }