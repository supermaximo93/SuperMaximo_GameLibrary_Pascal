unit SMGL_Shader;

interface

uses SMGL_SMSDL, SMGL_Display;

const
  VERTEX_ATTRIBUTE = 0;
  NORMAL_ATTRIBUTE = 1;
  COLOR0_ATTRIBUTE = 2;
  COLOR1_ATTRIBUTE = 3;
  COLOR2_ATTRIBUTE = 4;
  TEXTURE0_ATTRIBUTE = 5;
  EXTRA0_ATTRIBUTE = 6;
  EXTRA1_ATTRIBUTE = 7;
  EXTRA2_ATTRIBUTE = 8;
  EXTRA3_ATTRIBUTE = 9;
  EXTRA4_ATTRIBUTE = 10;

  MODELVIEW_LOCATION = 0;
  PROJECTION_LOCATION = 1;
  TEXSAMPLER_LOCATION = 2;
  EXTRA0_LOCATION = 3;
  EXTRA1_LOCATION = 4;
  EXTRA2_LOCATION = 5;
  EXTRA3_LOCATION = 6;
  EXTRA4_LOCATION = 7;
  EXTRA5_LOCATION = 8;
  EXTRA6_LOCATION = 9;
  EXTRA7_LOCATION = 10;
  EXTRA8_LOCATION = 11;
  EXTRA9_LOCATION = 12;
  TEXCOMPAT_LOCATION = 13;

function shaderNew(newName, vertexShaderFile, fragmentShaderFile : pChar; count : cardinal;
         enums : array of integer; attributeNames : array of pChar) : Shader; cdecl; external LIBNAME;
procedure shaderDelete(shader_ : Shader); cdecl; external LIBNAME;

function shaderName(shader_ : Shader) : pChar; cdecl; external LIBNAME;
procedure shaderBind(shader_ : Shader); cdecl; external LIBNAME;
procedure shaderUse(shader_ : Shader); cdecl; external LIBNAME;
function shaderProgram(shader_ : Shader) : cardinal; cdecl; external LIBNAME;
function shaderSetUniformLocation(shader_ : Shader; dstLocation : cardinal; locationName : pChar) : cardinal; cdecl; external LIBNAME;
function shaderUniformLocation(shader_ : Shader; location : cardinal) : cardinal; cdecl; external LIBNAME;

procedure shaderSetUniform1fa(shader_ : Shader; location : cardinal; data : array of single; count : cardinal); cdecl; external LIBNAME;
procedure shaderSetUniform2fa(shader_ : Shader; location : cardinal; data : array of single; count : cardinal); cdecl; external LIBNAME;
procedure shaderSetUniform3fa(shader_ : Shader; location : cardinal; data : array of single; count : cardinal); cdecl; external LIBNAME;
procedure shaderSetUniform4fa(shader_ : Shader; location : cardinal; data : array of single; count : cardinal); cdecl; external LIBNAME;

procedure shaderSetUniform9fa(shader_ : Shader; location : cardinal; data : array of single; count : cardinal); cdecl; external LIBNAME;
procedure shaderSetUniform16fa(shader_ : Shader; location : cardinal; data : array of single; count : cardinal); cdecl; external LIBNAME;

procedure shaderSetUniform1ia(shader_ : Shader; location : cardinal; data : array of integer; count : cardinal); cdecl; external LIBNAME;
procedure shaderSetUniform2ia(shader_ : Shader; location : cardinal; data : array of integer; count : cardinal); cdecl; external LIBNAME;
procedure shaderSetUniform3ia(shader_ : Shader; location : cardinal; data : array of integer; count : cardinal); cdecl; external LIBNAME;
procedure shaderSetUniform4ia(shader_ : Shader; location : cardinal; data : array of integer; count : cardinal); cdecl; external LIBNAME;

procedure shaderSetUniform1f(shader_ : Shader; location : cardinal; data : single); cdecl; external LIBNAME;
procedure shaderSetUniform2f(shader_ : Shader; location : cardinal; data1, data2 : single); cdecl; external LIBNAME;
procedure shaderSetUniform3f(shader_ : Shader; location : cardinal; data1, data2, data3 : single); cdecl; external LIBNAME;
procedure shaderSetUniform4f(shader_ : Shader; location : cardinal; data1, data2, data3, data4 : single); cdecl; external LIBNAME;

procedure shaderSetUniform1i(shader_ : Shader; location : cardinal; data : integer); cdecl; external LIBNAME;
procedure shaderSetUniform2i(shader_ : Shader; location : cardinal; data1, data2 : integer); cdecl; external LIBNAME;
procedure shaderSetUniform3i(shader_ : Shader; location : cardinal; data1, data2, data3 : integer); cdecl; external LIBNAME;
procedure shaderSetUniform4i(shader_ : Shader; location : cardinal; data1, data2, data3, data4 : integer); cdecl; external LIBNAME;

implementation

end.

