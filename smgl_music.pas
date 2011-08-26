unit SMGL_Music;

interface

uses SMGL_SMSDL;

type
  Music = pointer;

function musicNew(newName, fileName : pChar) : Music; cdecl; external LIBNAME;
procedure musicDelete(music_ : Music); cdecl; external LIBNAME;

function musicName(music_ : Music) : pChar; cdecl; external LIBNAME;
procedure musicPlay(music_ : Music); cdecl; external LIBNAME;

implementation

end.

