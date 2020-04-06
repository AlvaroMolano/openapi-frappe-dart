part of openapi.api;



class ResourcesApi {
  final ApiClient apiClient;

  ResourcesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of Doctypes with HTTP info returned
  ///
  /// 
  Future<Response> apiResourceDocTypeGetWithHttpInfo({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/resource/DocType".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "fields", fields));
    }
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filters", filters));
    }
    if(limitPageLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_page_length", limitPageLength));
    }
    if(limitStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_start", limitStart));
    }

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

  /// Get a list of Doctypes
  ///
  /// 
  Future<InlineResponse2002> apiResourceDocTypeGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Response response = await apiResourceDocTypeGetWithHttpInfo( fields: fields, filters: filters, limitPageLength: limitPageLength, limitStart: limitStart );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2002') as InlineResponse2002;
    } else {
      return null;
    }
  }

  /// Get a list of Employees with HTTP info returned
  ///
  /// For example, fields&#x3D;[\&quot;name\&quot;,\&quot;company\&quot;,\&quot;employee_name\&quot;].  To get the Employee for a specific user, pass filters&#x3D;[[\&quot;user_id\&quot;,\&quot;&#x3D;\&quot;,\&quot;mail@example.com\&quot;]] 
  Future<Response> apiResourceEmployeeGetWithHttpInfo({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/resource/Employee".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "fields", fields));
    }
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filters", filters));
    }
    if(limitPageLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_page_length", limitPageLength));
    }
    if(limitStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_start", limitStart));
    }

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

  /// Get a list of Employees
  ///
  /// For example, fields&#x3D;[\&quot;name\&quot;,\&quot;company\&quot;,\&quot;employee_name\&quot;].  To get the Employee for a specific user, pass filters&#x3D;[[\&quot;user_id\&quot;,\&quot;&#x3D;\&quot;,\&quot;mail@example.com\&quot;]] 
  Future<DocList> apiResourceEmployeeGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Response response = await apiResourceEmployeeGetWithHttpInfo( fields: fields, filters: filters, limitPageLength: limitPageLength, limitStart: limitStart );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DocList') as DocList;
    } else {
      return null;
    }
  }

  /// Get a list of projects with HTTP info returned
  ///
  /// Returns a list of projects
  Future<Response> apiResourceProjectGetWithHttpInfo({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/resource/Project".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "fields", fields));
    }
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filters", filters));
    }
    if(limitPageLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_page_length", limitPageLength));
    }
    if(limitStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_start", limitStart));
    }

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

  /// Get a list of projects
  ///
  /// Returns a list of projects
  Future<DocList> apiResourceProjectGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Response response = await apiResourceProjectGetWithHttpInfo( fields: fields, filters: filters, limitPageLength: limitPageLength, limitStart: limitStart );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DocList') as DocList;
    } else {
      return null;
    }
  }

  /// Get a list of timesheets with HTTP info returned
  ///
  /// Returns a list of documents of the given type
  Future<Response> apiResourceTimesheetGetWithHttpInfo({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/resource/Timesheet".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "fields", fields));
    }
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filters", filters));
    }
    if(limitPageLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_page_length", limitPageLength));
    }
    if(limitStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_start", limitStart));
    }

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

  /// Get a list of timesheets
  ///
  /// Returns a list of documents of the given type
  Future<DocList> apiResourceTimesheetGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Response response = await apiResourceTimesheetGetWithHttpInfo( fields: fields, filters: filters, limitPageLength: limitPageLength, limitStart: limitStart );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DocList') as DocList;
    } else {
      return null;
    }
  }

  /// Create a new timesheet with HTTP info returned
  ///
  /// 
  Future<Response> apiResourceTimesheetPostWithHttpInfo({ Body3 body3 }) async {
    Object postBody = body3;

    // verify required params are set

    // create path and map variables
    String path = "/api/resource/Timesheet".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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

  /// Create a new timesheet
  ///
  /// 
  Future<InlineResponse200> apiResourceTimesheetPost({ Body3 body3 }) async {
    Response response = await apiResourceTimesheetPostWithHttpInfo( body3: body3 );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }

  /// Get a list of Webhooks with HTTP info returned
  ///
  /// 
  Future<Response> apiResourceWebhookGetWithHttpInfo({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/resource/Webhook".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fields != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "fields", fields));
    }
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filters", filters));
    }
    if(limitPageLength != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_page_length", limitPageLength));
    }
    if(limitStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit_start", limitStart));
    }

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

  /// Get a list of Webhooks
  ///
  /// 
  Future<InlineResponse2002> apiResourceWebhookGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Response response = await apiResourceWebhookGetWithHttpInfo( fields: fields, filters: filters, limitPageLength: limitPageLength, limitStart: limitStart );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2002') as InlineResponse2002;
    } else {
      return null;
    }
  }

  /// Create a new Webhook with HTTP info returned
  ///
  /// 
  Future<Response> apiResourceWebhookPostWithHttpInfo({ Body5 body5 }) async {
    Object postBody = body5;

    // verify required params are set

    // create path and map variables
    String path = "/api/resource/Webhook".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

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

  /// Create a new Webhook
  ///
  /// 
  Future<InlineResponse200> apiResourceWebhookPost({ Body5 body5 }) async {
    Response response = await apiResourceWebhookPostWithHttpInfo( body5: body5 );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }

}
