unit SMGL_Model;

interface

uses SMGL_SMSDL, SMGL_Display;

const
  STREAM_DRAW = $88E0;
  STREAM_READ = $88E1;
  STREAM_COPY = $88E2;
  STATIC_DRAW = $88E4;
  STATIC_READ = $88E5;
  STATIC_COPY = $88E6;
  DYNAMIC_DRAW = $88E8;
  DYNAMIC_READ = $88E9;
  DYNAMIC_COPY = $88EA;

function modelNew(newName, path, fileName : pChar; framerate, bufferUsage : cardinal) : Model; cdecl; external LIBNAME;
procedure modelDelete(model_ : Model); cdecl; external LIBNAME;

function modelName(model_ : Model) : pChar; cdecl; external LIBNAME;
procedure modelDrawObject(model_ : Model; object_ : GameObject; skipAnimation : integer); cdecl; external LIBNAME;
procedure modelDraw(model_ : Model; x, y, z, xRotation, yRotation, zRotation, xScale, yScale, frame : single;
          currentAnimationId : integer; skipAnimation : integer); cdecl; external LIBNAME;

procedure modelBindShader(model_ : Model; shader_ : Shader); cdecl; external LIBNAME;
function modleBoundShader(model_ : Model) : Shader; cdecl; external LIBNAME;

function modelBoneId(model_ : Model; boneName : pChar) : integer; cdecl; external LIBNAME;
function modelBoneName(model_ : Model; boneId : cardinal) : pChar; cdecl; external LIBNAME;

function modelAnimationId(model_ : Model; searchName : pChar) : integer; cdecl; external LIBNAME;
procedure modelSetFramerate(model_ : Model; newFramerate : cardinal); cdecl; external LIBNAME;
function modelFramerate(model_ : Model) : cardinal; cdecl; external LIBNAME;

function modelVboPointer(model_ : Model) : pCardinal; cdecl; external LIBNAME;

function modelVertexCount(model_ : Model) : cardinal; cdecl; external LIBNAME;

implementation

end.

