Since AltHttpClient inherits from abstract HTTP client just as default one, instead of `HttpClient()` from dart:io package call `AltHttpClient()`.  
It's been tested and working with [Dio](https://github.com/flutterchina/dio/blob/master/README.md#httpclientadapter). 
You can find example [HERE](https://github.com/shaxxx/EnigmaWeb.Dart/blob/master/lib/src/alt_http_client_adapter.dart).