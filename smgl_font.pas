unit SMGL_Font;

interface

uses SMGL_SMSDL, SMGL_Display;

function fontNew(name, fileName : pChar; newSize : cardinal) : Font; cdecl; external LIBNAME;
procedure fontDelete(font_ : Font); cdecl; external LIBNAME;

function fontName(font_ : Font) : pChar; cdecl; external LIBNAME;
procedure fontWrite(font_ : Font; text : pChar; x, y : integer; depth : single; useCache : integer; rotation, xScale, yScale : single); cdecl; external LIBNAME;
function fontWidth(font_ : Font; text : pChar) : integer; cdecl; external LIBNAME;
function fontHeight(font_ : Font; text : pChar) : integer; cdecl; external LIBNAME;
procedure fontCacheText(font_ : Font; text : pChar); cdecl; external LIBNAME;
procedure fontRemoveTextFromCache(font_ : Font; text : pChar); cdecl; external LIBNAME;

procedure initFont(newFontShader : Shader); cdecl; external LIBNAME;
procedure quitFont; cdecl; external LIBNAME;
procedure bindFontShader(newFontShader : Shader); cdecl; external LIBNAME;

implementation

end.

