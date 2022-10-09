
abstract class BaseApiService {

  Future<dynamic> getResponse(String url);
  Future<dynamic> postResponse(String url,Map<String, Object> jsonBody);
  Future<dynamic> postListResponse(String url,Object jsonBody);
  Future<dynamic> postMultipartFileResponse(String url,dynamic filepath);
  Future<dynamic> deleteResponse(String url);

}