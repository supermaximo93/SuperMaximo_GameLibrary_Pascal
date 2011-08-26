unit SMGL_Audio;

{$mode objfpc}{$H+}

interface

uses SMGL_SMSDL;

procedure initAudio(channels : cardinal); cdecl; external LIBNAME;
procedure quitAudio; cdecl; external LIBNAME;

procedure soundPosition(channel, angle, distance : integer); cdecl; external LIBNAME;

procedure musicVolume(percentage : integer); cdecl; external LIBNAME;

procedure pauseMusic; cdecl; external LIBNAME;
procedure resumeMusic; cdecl; external LIBNAME;
procedure restartMusic; cdecl; external LIBNAME;
procedure stopMusic; cdecl; external LIBNAME;
procedure fadeMusic(time : integer); cdecl; external LIBNAME;

implementation

end.

