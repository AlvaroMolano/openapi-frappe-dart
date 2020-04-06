part of openapi.api;



class NaiveAuthenticationApi {
  final ApiClient apiClient;

  NaiveAuthenticationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Logout from current session with HTTP info returned
  ///
  /// 
  Future<Response> apiMethodLogoutGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/method/logout".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Logout from current session
  ///
  /// 
  Future<Object> apiMethodLogoutGet() async {
    Response response = await apiMethodLogoutGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }

  /// Get the user that is logged in with HTTP info returned
  ///
  /// Get the currently logged in user
  Future<Response> authGetLoggedUserWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/method/frappe.auth.get_logged_user".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get the user that is logged in
  ///
  /// Get the currently logged in user
  Future<Message> authGetLoggedUser() async {
    Response response = await authGetLoggedUserWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Message') as Message;
    } else {
      return null;
    }
  }

  /// Authenticate yourself with HTTP info returned
  ///
  /// 
  Future<Response> loginWithHttpInfo({ String usr, String pwd, Body1 body1 }) async {
    Object postBody = body1;

    // verify required params are set

    // create path and map variables
    String path = "/api/method/login".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(usr != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "usr", usr));
    }
    if(pwd != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pwd", pwd));
    }

    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Authenticate yourself
  ///
  /// 
  Future<InlineResponse2001> login({ String usr, String pwd, Body1 body1 }) async {
    Response response = await loginWithHttpInfo( usr: usr, pwd: pwd, body1: body1 );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2001') as InlineResponse2001;
    } else {
      return null;
    }
  }

}
