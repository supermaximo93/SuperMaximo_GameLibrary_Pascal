unit SMGL_SMSDL;

interface

const
  {$IFDEF WINDOWS}
    LIBNAME = 'SuperMaximo_GameLibrary-C.dll';
  {$ENDIF}

  {$IFDEF UNIX}
  {$IFDEF DARWIN}
    LIBNAME = 'SuperMaximo_GameLibrary-C.dylib';
  {$ELSE}
    {$IFDEF FPC}
    LIBNAME = 'libSuperMaximo_GameLibrary-C.so';
    {$ELSE}
    LIBNAME = 'libSuperMaximo_GameLibrary-C.so.0';
    {$ENDIF}
  {$ENDIF}
  {$ENDIF}

  {$IFDEF MACOS}
    LIBNAME = 'SuperMaximo_GameLibrary-C';
  {$ENDIF}

  SDL_INIT_TIMER = $00000001;
  SDL_INIT_AUDIO = $00000010;
  SDL_INIT_VIDEO = $00000020;
  SDL_INIT_CDROM = $00000100;
  SDL_INIT_JOYSTICK = $00000200;
  SDL_INIT_NOPARACHUTE = $00100000;
  SDL_INIT_EVENTTHREAD = $01000000;
  SDL_INIT_EVERYTHING = $0000FFFF;

  SM_FALSE = 0;
  SM_TRUE = 1;

procedure initSDL(flags : cardinal); cdecl; external LIBNAME;
procedure quitSDL; cdecl; external LIBNAME;
procedure wait(time : longInt); cdecl; external LIBNAME;

implementation

end.

