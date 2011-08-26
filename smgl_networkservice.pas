unit SMGL_NetworkService;

interface

uses SMGL_SMSDL;

type
  NetworkService = pointer;

function initNetworking : boolean; cdecl; external LIBNAME;
procedure quitNetworking; cdecl; external LIBNAME;

function networkServiceNew(newName : pChar) : NetworkService; cdecl; external LIBNAME;
procedure networkServiceDelete(networkService_ : NetworkService); cdecl; external LIBNAME;

function networkServiceServerStarted(networkService_ : NetworkService) : boolean; cdecl; external LIBNAME;
function networkServiceClientStarted(networkService_ : NetworkService) : boolean; cdecl; external LIBNAME;

function networkServiceStartServer(networkService_ : NetworkService; newMaxSockets, newPort : integer) : boolean; cdecl; external LIBNAME;
procedure networkServiceCloseServer(networkService_ : NetworkService); cdecl; external LIBNAME;
function networkServiceRestartServer(networkService_ : NetworkService) : boolean; cdecl; external LIBNAME;
function networkServiceNewLocalAddress(networkService_ : NetworkService) : cardinal; cdecl; external LIBNAME;
function networkServiceLocalAddress(networkService_ : NetworkService) : cardinal; cdecl; external LIBNAME;
function networkServiceCheckForNewClient(networkService_ : NetworkService; useUdp : boolean) : integer; cdecl; external LIBNAME;
function networkServiceClientExists(networkService_ : NetworkService; id : integer) : boolean; cdecl; external LIBNAME;
function networkServiceTotalClients(networkService_ : NetworkService) : integer; cdecl; external LIBNAME;
procedure networkServiceKickClient(networkService_ : NetworkService; id : integer); cdecl; external LIBNAME;

function networkServiceStartClient(networkService_ : NetworkService; newAddress : pChar; newPort : integer) : boolean; cdecl; external LIBNAME;
procedure networkServiceCloseClient(networkService_ : NetworkService); cdecl; external LIBNAME;
function networkServiceRestartClient(networkService_ : NetworkService) : boolean; cdecl; external LIBNAME;
function networkServiceConnectToServer(networkService_ : NetworkService; useUdp : boolean) : boolean; cdecl; external LIBNAME;
function networkServiceClientNumber(networkService_ : NetworkService) : integer; cdecl; external LIBNAME;

function networkServiceSendStrTcp(networkService_ : NetworkService; data : pChar; id : integer; isServer : boolean; size : integer) : boolean; cdecl; external LIBNAME;
function networkServiceRecvStrTcp(networkService_ : NetworkService; id : integer; isServer : boolean; size : integer) : pChar; cdecl; external LIBNAME;
function networkServiceSendIntTcp(networkService_ : NetworkService; data, id : integer; isServer : boolean) : boolean; cdecl; external LIBNAME;
function networkServiceRecvIntTcp(networkService_ : NetworkService; id : integer; isServer : boolean) : integer; cdecl; external LIBNAME;

function networkServiceSendStrUdp(networkService_ : NetworkService; data : pChar; id : integer; isServer : boolean) : boolean; cdecl; external LIBNAME;
function networkServiceRecvStrUdp(networkService_ : NetworkService; isServer : boolean) : pChar; cdecl; external LIBNAME;
function networkServiceRecvStrUdpStr(networkService_ : NetworkService; idBuffer : pInteger; isServer : boolean) : pChar; cdecl; external LIBNAME;
function networkServiceRecvStrUdpId(networkService_ : NetworkService; stringBuffer : ppChar; isServer : boolean) : integer; cdecl; external LIBNAME;
function networkServiceSentIntUdp(networkService_ : NetworkService; data, id : integer; isServer : boolean) : boolean; cdecl; external LIBNAME;
function networkServiceRecvIntUdp(networkService_ : NetworkService; isServer : boolean) : integer; cdecl; external LIBNAME;
function networkServiceRecvIntUdpInt(networkService_ : NetworkService; idBuffer : pInteger; isServer : boolean) : integer; cdecl; external LIBNAME;
function networkServiceRecvIntUdpId(networkService_ : NetworkService; intBuffer : pInteger; isServer : boolean) : integer; cdecl; external LIBNAME;

implementation

end.

