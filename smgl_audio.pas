unit SMGL_Audio;

interface

uses SMGL_SMSDL;

procedure initAudio(channels : cardinal); cdecl; external LIBNAME;
procedure quitAudio; cdecl; external LIBNAME;

implementation

end.

