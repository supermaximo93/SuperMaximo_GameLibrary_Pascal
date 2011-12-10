unit SMGL_Music;

interface

uses SMGL_SMSDL;

type
  Music = pointer;

function musicNew(newName, fileName : pChar) : Music; cdecl; external LIBNAME;
procedure musicDelete(music_ : Music); cdecl; external LIBNAME;

function musicName(music_ : Music) : pChar; cdecl; external LIBNAME;
procedure musicPlay(music_ : Music); cdecl; external LIBNAME;

function musicVolume : integer; cdecl; external LIBNAME;
function musicSetVolume(percentage, relative : integer) : integer; cdecl; external LIBNAME;

procedure musicPause; cdecl; external LIBNAME;
procedure musicResume; cdecl; external LIBNAME;
procedure musicRestart; cdecl; external LIBNAME;
procedure musicStop; cdecl; external LIBNAME;
procedure musicFadeOut(time : cardinal); cdecl; external LIBNAME;

implementation

end.

