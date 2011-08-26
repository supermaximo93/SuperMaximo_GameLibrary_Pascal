unit SMGL_GameObject;

interface

uses SMGL_SMSDL, SMGL_Display;

function objectNewSprite(newName : pChar; destX, destY, destZ : single; newSprite : Sprite) : GameObject; cdecl; external LIBNAME;
function objectNewModel(newName : pChar; destX, destY, destZ : single; newModel : Model) : GameObject; cdecl; external LIBNAME;
procedure objectDelete(object_ : GameObject); cdecl; external LIBNAME;

function objectName(object_ : GameObject) : pChar; cdecl; external LIBNAME;
procedure objectSetSprite(object_ : GameObject; newSprite : Sprite); cdecl; external LIBNAME;
function objectSprite(object_ : GameObject) : Sprite; cdecl; external LIBNAME;
procedure objectSetModel(object_ : GameObject; newModel : Model); cdecl; external LIBNAME;
function objectModel(object_ : GameObject) : Model; cdecl; external LIBNAME;
function objectHasModel(object_ : GameObject) : boolean; cdecl; external LIBNAME;

procedure objectBindShader(object_ : GameObject; shader_ : Shader); cdecl; external LIBNAME;
function objectBoundShader(object_ : GameObject) : Shader; cdecl; external LIBNAME;

procedure objectSetPosition(object_ : GameObject; xAmount, yAmount, zAmount : single; relative : boolean); cdecl; external LIBNAME;
procedure objectSetPositionVec2(object_ : GameObject; amount : vec2; relative : boolean); cdecl; external LIBNAME;
procedure objectSetPositionVec3(object_ : GameObject; amount : vec3; relative : boolean); cdecl; external LIBNAME;
function objectSetX(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectSetY(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectSetZ(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectX(object_ : GameObject) : single; cdecl; external LIBNAME;
function objectY(object_ : GameObject) : single; cdecl; external LIBNAME;
function objectZ(object_ : GameObject) : single; cdecl; external LIBNAME;

function objectWidth(object_ : GameObject) : single; cdecl; external LIBNAME;
function objectHeight(object_ : GameObject) : single; cdecl; external LIBNAME;

procedure objectScale(object_ : GameObject; xAmount, yAmount, zAmount : single; relative : boolean); cdecl; external LIBNAME;
function objectSetXScale(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectSetYScale(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectSetZScale(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectXScale(object_ : GameObject) : single; cdecl; external LIBNAME;
function objectYScale(object_ : GameObject) : single; cdecl; external LIBNAME;
function objectZScale(object_ : GameObject) : single; cdecl; external LIBNAME;

procedure objectRotate(object_ : GameObject; xAmount, yAmount, zAmount : single; relative : boolean); cdecl; external LIBNAME;
function objectSetXRotation(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectSetYRotation(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectSetZRotation(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectXRotation(object_ : GameObject) : single; cdecl; external LIBNAME;
function objectYRotation(object_ : GameObject) : single; cdecl; external LIBNAME;
function objectZRotation(object_ : GameObject) : single; cdecl; external LIBNAME;

function objectSetAlpha(object_ : GameObject; amount : single; relative : boolean) : single; cdecl; external LIBNAME;
function objectAlpha(object_ : GameObject) : single; cdecl; external LIBNAME;

procedure objectSetCurrentAnimation(object_ : GameObject; animationId : cardinal; boneId : integer; withChildren : boolean); cdecl; external LIBNAME;
function objectCurrentAnimation(object_ : GameObject; boneId : integer) : cardinal; cdecl; external LIBNAME;

procedure objectSetFrame(object_ : GameObject; newFrame: single; relative : boolean; boneId : integer; withChildren : boolean); cdecl; external LIBNAME;
function objectFrame(object_ : GameObject; boneId : integer) : single; cdecl; external LIBNAME;

procedure objectDraw(object_ : GameObject; skipAnimation : boolean); cdecl; external LIBNAME;

function objectRoughMouseOverBox(object_ : GameObject) : boolean; cdecl; external LIBNAME;
function objectMouseOverBox(object_ : GameObject) : boolean; cdecl; external LIBNAME;
function objectMouseOverCircle(object_ : GameObject) : boolean; cdecl; external LIBNAME;
function objectBoxCollision(object_, otherObject : GameObject; allStages : boolean) : boolean; cdecl; external LIBNAME;
function objectRoughBoxCollision(object_, otherObject : GameObject) : boolean; cdecl; external LIBNAME;
function objectCircleCollision(object_, otherObject : GameObject) : boolean; cdecl; external LIBNAME;

implementation

end.

