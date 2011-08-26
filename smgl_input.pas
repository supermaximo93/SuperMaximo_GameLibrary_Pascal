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

function keyPressed(code : cardinal) : boolean; cdecl; external LIBNAME;

procedure setMousePosition(x, y : integer); cdecl; external LIBNAME;
procedure hideCursor; cdecl; external LIBNAME;
procedure showCursor; cdecl; external LIBNAME;
function mouseX : integer; cdecl; external LIBNAME;
function mouseY : integer; cdecl; external LIBNAME;
function mouseLeft : boolean; cdecl; external LIBNAME;
function mouseRight : boolean; cdecl; external LIBNAME;
function mouseMiddle : boolean; cdecl; external LIBNAME;
function mouseOther : boolean; cdecl; external LIBNAME;
function mouseWheelUp : boolean; cdecl; external LIBNAME;
function mouseWheelDown : boolean; cdecl; external LIBNAME;

function closeClicked : boolean; cdecl; external LIBNAME;

function joystickCount : integer; cdecl; external LIBNAME;
function joystickButtonPressed(code, controllerId : cardinal) : boolean; cdecl; external LIBNAME;
function joystickDpadPressed(code, controllerId : cardinal) : boolean; cdecl; external LIBNAME;
function joystickAxisValue(axis, controllerId : cardinal) : boolean; cdecl; external LIBNAME;

procedure resetEvents; cdecl; external LIBNAME;

implementation

end.

