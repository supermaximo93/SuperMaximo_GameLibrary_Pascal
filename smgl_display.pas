unit SMGL_Display;

{$mode objfpc}{$H+}

interface

uses SMGL_SMSDL;

type
  mat2 = pointer;
  mat3 = pointer;
  mat4 = pointer;
  vec2 = pointer;
  vec3 = pointer;
  vec4 = pointer;

  singleArray4 = array[0..3] of single;
  singleArray9 = array[0..8] of single;
  singleArray16 = array[0..15] of single;

  Shader = pointer;
  Sprite = pointer;
  Model = pointer;
  GameObject = pointer;
  Texture = pointer;

const
  TEXTURE0 = $84C0;
  TEXTURE1 = $84C1;
  TEXTURE2 = $84C2;
  TEXTURE3 = $84C3;
  TEXTURE4 = $84C4;
  TEXTURE5 = $84C5;
  TEXTURE6 = $84C6;
  TEXTURE7 = $84C7;
  TEXTURE8 = $84C8;
  TEXTURE9 = $84C9;
  TEXTURE10 = $84CA;
  TEXTURE11 = $84CB;
  TEXTURE12 = $84CC;
  TEXTURE13 = $84CD;
  TEXTURE14 = $84CE;
  TEXTURE15 = $84CF;

  MODELVIEW_MATRIX = 0;
  PERSPECTIVE_MATRIX = 1;
  ORTHOGRAPHIC_MATRIX = 2;
  PROJECTION_MATRIX = 3;
  IDENTITY_MATRIX = 4;

  ZERO = 0;
  ONE = 1;
  SRC_COLOR = $0300;
  ONE_MINUS_SRC_COLOR = $0301;
  DST_COLOR = $0306;
  ONE_MINUS_DST_COLOR = $0307;
  SRC_ALPHA = $0302;
  ONE_MINUS_SRC_ALPHA = $0303;
  DST_ALPHA = $0304;
  ONE_MINUS_DST_ALPHA = $0305;
  CONSTANT_COLOR = $8001;
  ONE_MINUS_CONSTANT_COLOR = $8002;
  CONSTANT_ALPHA = $8003;
  ONE_MINUS_CONSTANT_ALPHA = $8004;
  SRC_ALPHA_SATURATE = $0308;

  FUNC_ADD = $8006;
  FUNC_SUBTRACT = $800A;
  FUNC_REVERSE_SUBTRACT = $800B;
  MIN = $8007;
  MAX = $8008;

function mat2New : mat2; cdecl; external LIBNAME;
procedure mat2Delete(matrix : mat2); cdecl; external LIBNAME;
procedure mat2Copy(srcMatrix, dstMatrix : mat2); cdecl; external LIBNAME;
function mat2Arr(matrix : mat2) : singleArray4; cdecl; external LIBNAME;
function mat2Component(matrix : mat2; index : integer) : single; cdecl; external LIBNAME;
procedure mat2AssignComponent(matrix : mat2; index : integer; value : single); cdecl; external LIBNAME;
procedure mat2MultiplyMat2(matrix, otherMatrix : mat2); cdecl; external LIBNAME;
procedure mat2InitIdentity(matrix : mat2); cdecl; external LIBNAME;

function mat3New : mat3; cdecl; external LIBNAME;
procedure mat3Delete(matrix : mat3); cdecl; external LIBNAME;
procedure mat3Copy(srcMatrix, dstMatrix : mat3); cdecl; external LIBNAME;
function mat3Arr(matrix : mat3) : singleArray4; cdecl; external LIBNAME;
function mat3Component(matrix : mat3; index : integer) : single; cdecl; external LIBNAME;
procedure mat3AssignComponent(matrix : mat3; index : integer; value : single); cdecl; external LIBNAME;
procedure mat3MultiplyMat2(matrix, otherMatrix : mat3); cdecl; external LIBNAME;
procedure mat3InitIdentity(matrix : mat3); cdecl; external LIBNAME;

function mat4New : mat4; cdecl; external LIBNAME;
procedure mat4Delete(matrix : mat4); cdecl; external LIBNAME;
procedure mat4Copy(srcMatrix, dstMatrix : mat4); cdecl; external LIBNAME;
function mat4Arr(matrix : mat4) : singleArray4; cdecl; external LIBNAME;
function mat4Component(matrix : mat4; index : integer) : single; cdecl; external LIBNAME;
procedure mat4AssignComponent(matrix : mat4; index : integer; value : single); cdecl; external LIBNAME;
procedure mat4MultiplyMat2(matrix, otherMatrix : mat4); cdecl; external LIBNAME;
procedure mat4InitIdentity(matrix : mat4); cdecl; external LIBNAME;

function vec2New : vec2; cdecl; external LIBNAME;
procedure vec2Delete(vec : vec2); cdecl; external LIBNAME;
procedure vec2Copy(srcVec, dstVec : vec2); cdecl; external LIBNAME;
function vec2Component(vec : vec2; component : char) : single; cdecl; external LIBNAME;
procedure vec2AssignComponent(vec : vec2; component : char; value : single); cdecl; external LIBNAME;
procedure vec2AddVec2(vec, otherVec : vec2); cdecl; external LIBNAME;
procedure vec2SubtractVec2(vec, otherVec : vec2); cdecl; external LIBNAME;
procedure vec2MultiplyMat2(vec : vec2; matrix : mat2); cdecl; external LIBNAME;
procedure vec2MultiplyFloat(vec : vec2; value : single); cdecl; external LIBNAME;
procedure vec2DivideFloat(vec : vec2; value : single); cdecl; external LIBNAME;
function vec2Perpendicular(vec : vec2) : vec2; cdecl; external LIBNAME;
function vec2DotProduct(vec, otherVec : vec2) : single; cdecl; external LIBNAME;
function vec2PolygonCollision(vec : vec2; vertexCount : cardinal; vertices : array of vec2) : boolean; cdecl; external LIBNAME;

function vec3New : vec3; cdecl; external LIBNAME;
procedure vec3Delete(vec : vec3); cdecl; external LIBNAME;
procedure vec3Copy(srcVec, dstVec : vec3); cdecl; external LIBNAME;
function vec3Component(vec : vec3; component : char) : single; cdecl; external LIBNAME;
procedure vec3AssignComponent(vec : vec3; component : char; value : single); cdecl; external LIBNAME;
procedure vec3AddVec3(vec, otherVec : vec3); cdecl; external LIBNAME;
procedure vec3SubtractVec3(vec, otherVec : vec3); cdecl; external LIBNAME;
procedure vec3MultiplyFloat(vec : vec3; value : single); cdecl; external LIBNAME;
procedure vec3DivideFloat(vec : vec3; value : single); cdecl; external LIBNAME;
function vec3DotProduct(vec, otherVec : vec3) : single; cdecl; external LIBNAME;

function vec4New : vec4; cdecl; external LIBNAME;
procedure vec4Delete(vec : vec4); cdecl; external LIBNAME;
procedure vec4Copy(srcVec, dstVec : vec4); cdecl; external LIBNAME;
function vec4Component(vec : vec4; component : char) : single; cdecl; external LIBNAME;
procedure vec4AssignComponent(vec : vec4; component : char; value : single); cdecl; external LIBNAME;
procedure vec4AddVec4(vec, otherVec : vec4); cdecl; external LIBNAME;
procedure vec4SubtractVec4(vec, otherVec : vec4); cdecl; external LIBNAME;
procedure vec4MultiplyFloat(vec : vec4; value : single); cdecl; external LIBNAME;
procedure vec4DivideFloat(vec : vec4; value : single); cdecl; external LIBNAME;
function vec4DotProduct(vec, otherVec : vec4) : single; cdecl; external LIBNAME;

function initDisplay(width, height, depth, maxFramerate : cardinal;
          fullscreen: boolean; windowTitle : pChar) : boolean; cdecl; external LIBNAME;
procedure quitDisplay; cdecl; external LIBNAME;

function screenWidth : cardinal; cdecl; external LIBNAME;
function screenHeight : cardinal; cdecl; external LIBNAME;
function screenDepth : cardinal; cdecl; external LIBNAME;
function resizeScreen(width, height : cardinal; fullscreen : boolean) : boolean; cdecl; external LIBNAME;

procedure setClearColor(r, g, b, a : single); cdecl; external LIBNAME;
procedure getClearColor(r, g, b, a : psingle); cdecl; external LIBNAME;

function getPerspectiveMatrix6(left, right, bottom, top, front, back : single) : mat4; cdecl; external LIBNAME;
function getPerspectiveMatrix4(angle, aspectRatio, front, back : single) : mat4; cdecl; external LIBNAME;
function getOrthographicMatrix(left, right, bottom, top, front, back : single) : mat4; cdecl; external LIBNAME;

function get2dRotationMatrix(angle : single) : mat2; cdecl; external LIBNAME;

procedure bindShader(shader_ : Shader); cdecl; external LIBNAME;
function boundShader : Shader; cdecl; external LIBNAME;

procedure bindTextureUnit(textureUnit : cardinal); cdecl; external LIBNAME;
function boundTextureUnit : cardinal; cdecl; external LIBNAME;

procedure setMatrix(matrixId : cardinal); cdecl; external LIBNAME;
function currentMatrix : cardinal; cdecl; external LIBNAME;
procedure copyMatrix(srcMatrixId, dstMatrixId : cardinal); cdecl; external LIBNAME;
procedure copyMat4ToMatrix(matrix : mat4; dstMatrixId : cardinal); cdecl; external LIBNAME;
function getMatrix(matrixId : cardinal) : mat4; cdecl; external LIBNAME;
procedure pushMatrix; cdecl; external LIBNAME;
procedure popMatrix; cdecl; external LIBNAME;

procedure translateMatrix(x, y, z : single); cdecl; external LIBNAME;
procedure rotateMatrix(angle, x, y, z : single); cdecl; external LIBNAME;
procedure scaleMatrix(xScale, yScale, zScale : single); cdecl; external LIBNAME;

procedure refreshScreen; cdecl; external LIBNAME;
function getFramerate : cardinal; cdecl; external LIBNAME;
function getTickDifference : cardinal; cdecl; external LIBNAME;
procedure setIdealFramerate(newIdealFramerate : cardinal); cdecl; external LIBNAME;
function getIdealFramerate : cardinal; cdecl; external LIBNAME;
function compensation : single; cdecl; external LIBNAME;

procedure enableBlending(srcBlendFunc, dstBlendFunc, blendFuncEquation : cardinal); cdecl; external LIBNAME;
procedure disableBlending; cdecl; external LIBNAME;
function blendingEnabled : boolean; cdecl; external LIBNAME;

procedure enableDepthTesting; cdecl; external LIBNAME;
procedure disableDepthTesting; cdecl; external LIBNAME;
function depthTestingEnabled : boolean; cdecl; external LIBNAME;

function openGlVersion : single; cdecl; external LIBNAME;
function glSlVersion : single; cdecl; external LIBNAME;

function vertexArrayObjectSupported : boolean; cdecl; external LIBNAME;

procedure disableTexture2dArray; cdecl; external LIBNAME;
function texture2dArrayDisabled : boolean; cdecl; external LIBNAME;

implementation

end.

