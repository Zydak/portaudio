project "portaudio"
    kind "StaticLib"
    language "C"

    objdir "build/obj/%{cfg.buildcfg}"
    targetdir "build/bin/%{cfg.buildcfg}"

    prebuildcommands
    {
        "./configure",
        "make",
        "cp lib/.libs/libportaudio.a ../lib/liblibportaudio.a" -- for some reason it has to be liblib
    }