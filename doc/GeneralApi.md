# openapi.api.GeneralApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.erpnext.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMethodDottedPathToMethodGet**](GeneralApi.md#apiMethodDottedPathToMethodGet) | **GET** /api/method/{dotted_path_to_method} | Call a remote procedure
[**apiMethodDottedPathToMethodPost**](GeneralApi.md#apiMethodDottedPathToMethodPost) | **POST** /api/method/{dotted_path_to_method} | Post data to a remote procedure
[**apiResourceDocTypeDocumentNameDelete**](GeneralApi.md#apiResourceDocTypeDocumentNameDelete) | **DELETE** /api/resource/{DocType}/{DocumentName} | Delete a specific document
[**apiResourceDocTypeDocumentNameGet**](GeneralApi.md#apiResourceDocTypeDocumentNameGet) | **GET** /api/resource/{DocType}/{DocumentName} | Get a specific document
[**apiResourceDocTypeDocumentNamePut**](GeneralApi.md#apiResourceDocTypeDocumentNamePut) | **PUT** /api/resource/{DocType}/{DocumentName} | Update a specific document
[**apiResourceDocTypeGet**](GeneralApi.md#apiResourceDocTypeGet) | **GET** /api/resource/{DocType} | Get a list of documents
[**apiResourceDocTypeGet_0**](GeneralApi.md#apiResourceDocTypeGet_0) | **GET** /api/resource/DocType | Get a list of Doctypes
[**apiResourceDocTypePost**](GeneralApi.md#apiResourceDocTypePost) | **POST** /api/resource/{DocType} | Create a new document


# **apiMethodDottedPathToMethodGet**
> apiMethodDottedPathToMethodGet(dottedPathToMethod)

Call a remote procedure

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeneralApi();
var dottedPathToMethod = frappe.auth.get_logged_user; // String | Path to the function you'd like to call, separated by dots. 

try { 
    api_instance.apiMethodDottedPathToMethodGet(dottedPathToMethod);
} catch (e) {
    print("Exception when calling GeneralApi->apiMethodDottedPathToMethodGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dottedPathToMethod** | **String**| Path to the function you&#39;d like to call, separated by dots.  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMethodDottedPathToMethodPost**
> apiMethodDottedPathToMethodPost(dottedPathToMethod)

Post data to a remote procedure

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeneralApi();
var dottedPathToMethod = frappe.auth.get_logged_user; // String | Path to the function you'd like to call, separated by dots. 

try { 
    api_instance.apiMethodDottedPathToMethodPost(dottedPathToMethod);
} catch (e) {
    print("Exception when calling GeneralApi->apiMethodDottedPathToMethodPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dottedPathToMethod** | **String**| Path to the function you&#39;d like to call, separated by dots.  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceDocTypeDocumentNameDelete**
> InlineResponse202 apiResourceDocTypeDocumentNameDelete(docType, documentName)

Delete a specific document

TBD

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeneralApi();
var docType = docType_example; // String | The type of the document you'd like to delete. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc. 
var documentName = documentName_example; // String | The name (ID) of the document you'd like to delete. For example EMP001 (of type Employee). 

try { 
    var result = api_instance.apiResourceDocTypeDocumentNameDelete(docType, documentName);
    print(result);
} catch (e) {
    print("Exception when calling GeneralApi->apiResourceDocTypeDocumentNameDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docType** | **String**| The type of the document you&#39;d like to delete. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc.  | [default to null]
 **documentName** | **String**| The name (ID) of the document you&#39;d like to delete. For example EMP001 (of type Employee).  | [default to null]

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceDocTypeDocumentNameGet**
> InlineResponse200 apiResourceDocTypeDocumentNameGet(docType, documentName, fields, filters)

Get a specific document

Get a document by it's name, for example EMP001 of DocType Employee.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeneralApi();
var docType = docType_example; // String | The DocType you'd like to receive. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc. 
var documentName = documentName_example; // String | The name (ID) of the document you'd like to receive. For example EMP001 (of type Employee). 
var fields = []; // List<String> | By default, only the \"name\" field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields=[\"name\",\"country\"] 
var filters = []; // List<List<String>> | You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters=[[\"Customer\", \"country\", \"=\", \"India\"]] 

try { 
    var result = api_instance.apiResourceDocTypeDocumentNameGet(docType, documentName, fields, filters);
    print(result);
} catch (e) {
    print("Exception when calling GeneralApi->apiResourceDocTypeDocumentNameGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docType** | **String**| The DocType you&#39;d like to receive. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc.  | [default to null]
 **documentName** | **String**| The name (ID) of the document you&#39;d like to receive. For example EMP001 (of type Employee).  | [default to null]
 **fields** | [**List&lt;String&gt;**](String.md)| By default, only the \&quot;name\&quot; field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields&#x3D;[\&quot;name\&quot;,\&quot;country\&quot;]  | [optional] [default to []]
 **filters** | [**List&lt;List&lt;String&gt;&gt;**](List&lt;String&gt;.md)| You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters&#x3D;[[\&quot;Customer\&quot;, \&quot;country\&quot;, \&quot;&#x3D;\&quot;, \&quot;India\&quot;]]  | [optional] [default to []]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceDocTypeDocumentNamePut**
> InlineResponse200 apiResourceDocTypeDocumentNamePut(docType, documentName)

Update a specific document

TBD

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeneralApi();
var docType = docType_example; // String | The DocType you'd like to receive. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc. 
var documentName = documentName_example; // String | The name (ID) of the document you'd like to update. For example EMP001 (of type Employee). 

try { 
    var result = api_instance.apiResourceDocTypeDocumentNamePut(docType, documentName);
    print(result);
} catch (e) {
    print("Exception when calling GeneralApi->apiResourceDocTypeDocumentNamePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docType** | **String**| The DocType you&#39;d like to receive. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc.  | [default to null]
 **documentName** | **String**| The name (ID) of the document you&#39;d like to update. For example EMP001 (of type Employee).  | [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceDocTypeGet**
> DocList apiResourceDocTypeGet(docType, fields, filters, limitPageLength, limitStart)

Get a list of documents

Returns a list of documents of the given type

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeneralApi();
var docType = docType_example; // String | The DocType you'd like to receive. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc. 
var fields = []; // List<String> | By default, only the \"name\" field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields=[\"name\",\"country\"] 
var filters = []; // List<List<String>> | You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters=[[\"Customer\", \"country\", \"=\", \"India\"]] 
var limitPageLength = 56; // int | By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once). 
var limitStart = 56; // int | To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20. 

try { 
    var result = api_instance.apiResourceDocTypeGet(docType, fields, filters, limitPageLength, limitStart);
    print(result);
} catch (e) {
    print("Exception when calling GeneralApi->apiResourceDocTypeGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docType** | **String**| The DocType you&#39;d like to receive. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc.  | [default to null]
 **fields** | [**List&lt;String&gt;**](String.md)| By default, only the \&quot;name\&quot; field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields&#x3D;[\&quot;name\&quot;,\&quot;country\&quot;]  | [optional] [default to []]
 **filters** | [**List&lt;List&lt;String&gt;&gt;**](List&lt;String&gt;.md)| You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters&#x3D;[[\&quot;Customer\&quot;, \&quot;country\&quot;, \&quot;&#x3D;\&quot;, \&quot;India\&quot;]]  | [optional] [default to []]
 **limitPageLength** | **int**| By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once).  | [optional] [default to 20]
 **limitStart** | **int**| To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20.  | [optional] [default to 0]

### Return type

[**DocList**](DocList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceDocTypeGet_0**
> InlineResponse2002 apiResourceDocTypeGet_0(fields, filters, limitPageLength, limitStart)

Get a list of Doctypes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeneralApi();
var fields = []; // List<String> | By default, only the \"name\" field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields=[\"name\",\"country\"] 
var filters = []; // List<List<String>> | You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters=[[\"Customer\", \"country\", \"=\", \"India\"]] 
var limitPageLength = 56; // int | By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once). 
var limitStart = 56; // int | To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20. 

try { 
    var result = api_instance.apiResourceDocTypeGet_0(fields, filters, limitPageLength, limitStart);
    print(result);
} catch (e) {
    print("Exception when calling GeneralApi->apiResourceDocTypeGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fields** | [**List&lt;String&gt;**](String.md)| By default, only the \&quot;name\&quot; field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields&#x3D;[\&quot;name\&quot;,\&quot;country\&quot;]  | [optional] [default to []]
 **filters** | [**List&lt;List&lt;String&gt;&gt;**](List&lt;String&gt;.md)| You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters&#x3D;[[\&quot;Customer\&quot;, \&quot;country\&quot;, \&quot;&#x3D;\&quot;, \&quot;India\&quot;]]  | [optional] [default to []]
 **limitPageLength** | **int**| By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once).  | [optional] [default to 20]
 **limitStart** | **int**| To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20.  | [optional] [default to 0]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceDocTypePost**
> InlineResponse200 apiResourceDocTypePost(docType, body)

Create a new document

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeneralApi();
var docType = docType_example; // String | The DocType you'd like to receive. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc. 
var body = Object(); // Object | 

try { 
    var result = api_instance.apiResourceDocTypePost(docType, body);
    print(result);
} catch (e) {
    print("Exception when calling GeneralApi->apiResourceDocTypePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docType** | **String**| The DocType you&#39;d like to receive. For example Customer, Supplier,  Employee, Account, Lead, Company, Sales Invoice, Purchase Invoice, Stock Entry, etc.  | [default to null]
 **body** | **Object**|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

