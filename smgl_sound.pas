unit SMGL_Sound;

interface

uses SMGL_SMSDL;

type
  Sound = pointer;

function soundNew(newName, fileName : pChar) : Sound; cdecl; external LIBNAME;
procedure soundDelete(sound_ : Sound); cdecl; external LIBNAME;
function soundName(sound_ : Sound) : pChar; cdecl; external LIBNAME;
procedure soundSetVolume(sound_ : Sound; percentage : integer; relative : integer); cdecl; external LIBNAME;
function soundVolume(sound_ : Sound) : integer; cdecl; external LIBNAME;
function soundPlay(sound_ : Sound; newVolume, channel : integer) : integer; cdecl; external LIBNAME;
procedure soundStop(sound_ : Sound); cdecl; external LIBNAME;
procedure soundSetSoundPosition(sound_ : Sound; angle, distance : integer); cdecl; external LIBNAME;

procedure allocateSoundChannels(channels : cardinal); cdecl; external LIBNAME;

implementation

end.

