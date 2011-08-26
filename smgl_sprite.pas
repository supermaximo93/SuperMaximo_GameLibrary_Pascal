unit SMGL_Sprite;

interface

uses SMGL_SMSDL, SMGL_Display;

function spriteNew(newName, fileName : pChar; imageX, imageY, imageWidth, imageHeight, aniFrames : integer;
         framerate : cardinal; newOriginX, newOriginY : integer) : Sprite; cdecl; external LIBNAME;
procedure spriteDelete(sprite_ : Sprite); cdecl; external LIBNAME;

function spriteName(sprite_ : Sprite) : pChar; cdecl; external LIBNAME;

function spriteFrameCount(sprite_ : Sprite) : cardinal; cdecl; external LIBNAME;
procedure spriteSetFramerate(sprite_ : Sprite; newFramerate : cardinal); cdecl; external LIBNAME;
function spriteFramerate(sprite_ : Sprite) : cardinal; cdecl; external LIBNAME;

procedure spriteDraw(sprite_ : Sprite; x, y : integer; depth, rotation, xScale, yScale, alpha : single;
          frame : cardinal; shaderOverride : Shader); cdecl; external LIBNAME;
procedure spriteDrawObject(sprite_ : Sprite; object_ : GameObject); cdecl; external LIBNAME;

function spriteWidth(sprite_ : Sprite) : integer; cdecl; external LIBNAME;
function spriteHeight(sprite_ : Sprite) : integer; cdecl; external LIBNAME;

function spriteTexture(sprite_ : Sprite; frame : cardinal) : cardinal; cdecl; external LIBNAME;

procedure spriteBindShader(sprite_ : Sprite; shader_ : Shader); cdecl; external LIBNAME;
function spriteBoundShader(sprite_ : Sprite) : Shader; cdecl; external LIBNAME;

implementation

end.

