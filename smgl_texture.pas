unit SMGL_Texture;

interface

uses SMGL_SMSDL, SMGL_Display;

const
  TEXTURE_1D = $0DE0;
  TEXTURE_2D = $0DE1;
  TEXTURE_3D = $806F;
  TEXTURE_RECTANGLE = $84F5;
  TEXTURE_CUBE = $8513;

function textureNew(newName : pChar; textureType, numLayers : cardinal; fileNames : array of pChar) : Texture; cdecl; external LIBNAME;
procedure textureDelete(texture_ : Texture); cdecl; external LIBNAME;
procedure textureReload(texture_ : Texture; textureType, numLayers : cardinal; fileNames : array of pChar); cdecl; external LIBNAME;

function textureName(texture_ : Texture) : pChar; cdecl; external LIBNAME;
function textureType(texture_ : Texture) : cardinal; cdecl; external LIBNAME;
function textureWidth(texture_ : Texture) : integer; cdecl; external LIBNAME;
function textureHeight(texture_ : Texture) : integer; cdecl; external LIBNAME;
function textureData(texture_ : Texture) : cardinal; cdecl; external LIBNAME;

implementation

end.

