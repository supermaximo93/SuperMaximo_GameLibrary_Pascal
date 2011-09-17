unit SMGL_Input;

interface

uses SMGL_SMSDL;

const
  DPAD_UP = 0;
  DPAD_DOWN = 1;
  DPAD_LEFT = 2;
  DPAD_RIGHT = 3;

procedure initInput; cdecl; external LIBNAME;
procedure quitInput; cdecl; external LIBNAME;

function keyPressed(code : cardinal) : integer; cdecl; external LIBNAME;

procedure setMousePosition(x, y : integer); cdecl; external LIBNAME;
procedure hideCursor; cdecl; external LIBNAME;
procedure showCursor; cdecl; external LIBNAME;
function mouseX : integer; cdecl; external LIBNAME;
function mouseY : integer; cdecl; external LIBNAME;
function mouseLeft : integer; cdecl; external LIBNAME;
function mouseRight : integer; cdecl; external LIBNAME;
function mouseMiddle : integer; cdecl; external LIBNAME;
function mouseOther : integer; cdecl; external LIBNAME;
function mouseWheelUp : integer; cdecl; external LIBNAME;
function mouseWheelDown : integer; cdecl; external LIBNAME;

function closeClicked : integer; cdecl; external LIBNAME;

function joystickCount : integer; cdecl; external LIBNAME;
function joystickButtonPressed(code, controllerId : cardinal) : integer; cdecl; external LIBNAME;
function joystickDpadPressed(code, controllerId : cardinal) : integer; cdecl; external LIBNAME;
function joystickAxisValue(axis, controllerId : cardinal) : integer; cdecl; external LIBNAME;

procedure resetEvents; cdecl; external LIBNAME;

implementation

end.

