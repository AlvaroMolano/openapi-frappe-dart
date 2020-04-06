part of openapi.api;



class GeneralApi {
  final ApiClient apiClient;

  GeneralApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Call a remote procedure with HTTP info returned
  ///
  /// 
  Future apiMethodDottedPathToMethodGetWithHttpInfo(String dottedPathToMethod) async {
    Object postBody;

    // verify required params are set
    if(dottedPathToMethod == null) {
     throw ApiException(400, "Missing required param: dottedPathToMethod");
    }

    // create path and map variables
    String path = "/api/method/{dotted_path_to_method}".replaceAll("{format}","json").replaceAll("{" + "dotted_path_to_method" + "}", dottedPathToMethod.toString());

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

  /// Call a remote procedure
  ///
  /// 
  Future apiMethodDottedPathToMethodGet(String dottedPathToMethod) async {
    Response response = await apiMethodDottedPathToMethodGetWithHttpInfo(dottedPathToMethod);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Post data to a remote procedure with HTTP info returned
  ///
  /// 
  Future apiMethodDottedPathToMethodPostWithHttpInfo(String dottedPathToMethod) async {
    Object postBody;

    // verify required params are set
    if(dottedPathToMethod == null) {
     throw ApiException(400, "Missing required param: dottedPathToMethod");
    }

    // create path and map variables
    String path = "/api/method/{dotted_path_to_method}".replaceAll("{format}","json").replaceAll("{" + "dotted_path_to_method" + "}", dottedPathToMethod.toString());

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Post data to a remote procedure
  ///
  /// 
  Future apiMethodDottedPathToMethodPost(String dottedPathToMethod) async {
    Response response = await apiMethodDottedPathToMethodPostWithHttpInfo(dottedPathToMethod);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete a specific document with HTTP info returned
  ///
  /// TBD
  Future<Response> apiResourceDocTypeDocumentNameDeleteWithHttpInfo(String docType, String documentName) async {
    Object postBody;

    // verify required params are set
    if(docType == null) {
     throw ApiException(400, "Missing required param: docType");
    }
    if(documentName == null) {
     throw ApiException(400, "Missing required param: documentName");
    }

    // create path and map variables
    String path = "/api/resource/{DocType}/{DocumentName}".replaceAll("{format}","json").replaceAll("{" + "DocType" + "}", docType.toString()).replaceAll("{" + "DocumentName" + "}", documentName.toString());

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
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete a specific document
  ///
  /// TBD
  Future<InlineResponse202> apiResourceDocTypeDocumentNameDelete(String docType, String documentName) async {
    Response response = await apiResourceDocTypeDocumentNameDeleteWithHttpInfo(docType, documentName);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse202') as InlineResponse202;
    } else {
      return null;
    }
  }

  /// Get a specific document with HTTP info returned
  ///
  /// Get a document by it&#39;s name, for example EMP001 of DocType Employee.
  Future<Response> apiResourceDocTypeDocumentNameGetWithHttpInfo(String docType, String documentName, { List<String> fields, List<List<String>> filters }) async {
    Object postBody;

    // verify required params are set
    if(docType == null) {
     throw ApiException(400, "Missing required param: docType");
    }
    if(documentName == null) {
     throw ApiException(400, "Missing required param: documentName");
    }

    // create path and map variables
    String path = "/api/resource/{DocType}/{DocumentName}".replaceAll("{format}","json").replaceAll("{" + "DocType" + "}", docType.toString()).replaceAll("{" + "DocumentName" + "}", documentName.toString());

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

  /// Get a specific document
  ///
  /// Get a document by it&#39;s name, for example EMP001 of DocType Employee.
  Future<InlineResponse200> apiResourceDocTypeDocumentNameGet(String docType, String documentName, { List<String> fields, List<List<String>> filters }) async {
    Response response = await apiResourceDocTypeDocumentNameGetWithHttpInfo(docType, documentName,  fields: fields, filters: filters );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }

  /// Update a specific document with HTTP info returned
  ///
  /// TBD
  Future<Response> apiResourceDocTypeDocumentNamePutWithHttpInfo(String docType, String documentName) async {
    Object postBody;

    // verify required params are set
    if(docType == null) {
     throw ApiException(400, "Missing required param: docType");
    }
    if(documentName == null) {
     throw ApiException(400, "Missing required param: documentName");
    }

    // create path and map variables
    String path = "/api/resource/{DocType}/{DocumentName}".replaceAll("{format}","json").replaceAll("{" + "DocType" + "}", docType.toString()).replaceAll("{" + "DocumentName" + "}", documentName.toString());

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
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Update a specific document
  ///
  /// TBD
  Future<InlineResponse200> apiResourceDocTypeDocumentNamePut(String docType, String documentName) async {
    Response response = await apiResourceDocTypeDocumentNamePutWithHttpInfo(docType, documentName);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }

  /// Get a list of documents with HTTP info returned
  ///
  /// Returns a list of documents of the given type
  Future<Response> apiResourceDocTypeGetWithHttpInfo(String docType, { List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Object postBody;

    // verify required params are set
    if(docType == null) {
     throw ApiException(400, "Missing required param: docType");
    }

    // create path and map variables
    String path = "/api/resource/{DocType}".replaceAll("{format}","json").replaceAll("{" + "DocType" + "}", docType.toString());

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

  /// Get a list of documents
  ///
  /// Returns a list of documents of the given type
  Future<DocList> apiResourceDocTypeGet(String docType, { List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Response response = await apiResourceDocTypeGetWithHttpInfo(docType,  fields: fields, filters: filters, limitPageLength: limitPageLength, limitStart: limitStart );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DocList') as DocList;
    } else {
      return null;
    }
  }

  /// Get a list of Doctypes with HTTP info returned
  ///
  /// 
  Future<Response> apiResourceDocTypeGet_1WithHttpInfo({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
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
  Future<InlineResponse2002> apiResourceDocTypeGet_1({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async {
    Response response = await apiResourceDocTypeGet_1WithHttpInfo( fields: fields, filters: filters, limitPageLength: limitPageLength, limitStart: limitStart );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2002') as InlineResponse2002;
    } else {
      return null;
    }
  }

  /// Create a new document with HTTP info returned
  ///
  /// 
  Future<Response> apiResourceDocTypePostWithHttpInfo(String docType, { Object body }) async {
    Object postBody = body;

    // verify required params are set
    if(docType == null) {
     throw ApiException(400, "Missing required param: docType");
    }

    // create path and map variables
    String path = "/api/resource/{DocType}".replaceAll("{format}","json").replaceAll("{" + "DocType" + "}", docType.toString());

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

  /// Create a new document
  ///
  /// 
  Future<InlineResponse200> apiResourceDocTypePost(String docType, { Object body }) async {
    Response response = await apiResourceDocTypePostWithHttpInfo(docType,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }

}
