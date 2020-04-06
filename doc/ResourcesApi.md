# openapi.api.ResourcesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.erpnext.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiResourceDocTypeGet**](ResourcesApi.md#apiResourceDocTypeGet) | **GET** /api/resource/DocType | Get a list of Doctypes
[**apiResourceEmployeeGet**](ResourcesApi.md#apiResourceEmployeeGet) | **GET** /api/resource/Employee | Get a list of Employees
[**apiResourceProjectGet**](ResourcesApi.md#apiResourceProjectGet) | **GET** /api/resource/Project | Get a list of projects
[**apiResourceTimesheetGet**](ResourcesApi.md#apiResourceTimesheetGet) | **GET** /api/resource/Timesheet | Get a list of timesheets
[**apiResourceTimesheetPost**](ResourcesApi.md#apiResourceTimesheetPost) | **POST** /api/resource/Timesheet | Create a new timesheet
[**apiResourceWebhookGet**](ResourcesApi.md#apiResourceWebhookGet) | **GET** /api/resource/Webhook | Get a list of Webhooks
[**apiResourceWebhookPost**](ResourcesApi.md#apiResourceWebhookPost) | **POST** /api/resource/Webhook | Create a new Webhook


# **apiResourceDocTypeGet**
> InlineResponse2002 apiResourceDocTypeGet(fields, filters, limitPageLength, limitStart)

Get a list of Doctypes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResourcesApi();
var fields = []; // List<String> | By default, only the \"name\" field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields=[\"name\",\"country\"] 
var filters = []; // List<List<String>> | You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters=[[\"Customer\", \"country\", \"=\", \"India\"]] 
var limitPageLength = 56; // int | By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once). 
var limitStart = 56; // int | To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20. 

try { 
    var result = api_instance.apiResourceDocTypeGet(fields, filters, limitPageLength, limitStart);
    print(result);
} catch (e) {
    print("Exception when calling ResourcesApi->apiResourceDocTypeGet: $e\n");
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

# **apiResourceEmployeeGet**
> DocList apiResourceEmployeeGet(fields, filters, limitPageLength, limitStart)

Get a list of Employees

For example, fields=[\"name\",\"company\",\"employee_name\"].  To get the Employee for a specific user, pass filters=[[\"user_id\",\"=\",\"mail@example.com\"]] 

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResourcesApi();
var fields = []; // List<String> | By default, only the \"name\" field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields=[\"name\",\"country\"] 
var filters = []; // List<List<String>> | You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters=[[\"Customer\", \"country\", \"=\", \"India\"]] 
var limitPageLength = 56; // int | By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once). 
var limitStart = 56; // int | To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20. 

try { 
    var result = api_instance.apiResourceEmployeeGet(fields, filters, limitPageLength, limitStart);
    print(result);
} catch (e) {
    print("Exception when calling ResourcesApi->apiResourceEmployeeGet: $e\n");
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

[**DocList**](DocList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceProjectGet**
> DocList apiResourceProjectGet(fields, filters, limitPageLength, limitStart)

Get a list of projects

Returns a list of projects

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResourcesApi();
var fields = []; // List<String> | By default, only the \"name\" field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields=[\"name\",\"country\"] 
var filters = []; // List<List<String>> | You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters=[[\"Customer\", \"country\", \"=\", \"India\"]] 
var limitPageLength = 56; // int | By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once). 
var limitStart = 56; // int | To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20. 

try { 
    var result = api_instance.apiResourceProjectGet(fields, filters, limitPageLength, limitStart);
    print(result);
} catch (e) {
    print("Exception when calling ResourcesApi->apiResourceProjectGet: $e\n");
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

[**DocList**](DocList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceTimesheetGet**
> DocList apiResourceTimesheetGet(fields, filters, limitPageLength, limitStart)

Get a list of timesheets

Returns a list of documents of the given type

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResourcesApi();
var fields = []; // List<String> | By default, only the \"name\" field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields=[\"name\",\"country\"] 
var filters = []; // List<List<String>> | You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters=[[\"Customer\", \"country\", \"=\", \"India\"]] 
var limitPageLength = 56; // int | By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once). 
var limitStart = 56; // int | To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20. 

try { 
    var result = api_instance.apiResourceTimesheetGet(fields, filters, limitPageLength, limitStart);
    print(result);
} catch (e) {
    print("Exception when calling ResourcesApi->apiResourceTimesheetGet: $e\n");
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

[**DocList**](DocList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceTimesheetPost**
> InlineResponse200 apiResourceTimesheetPost(body3)

Create a new timesheet

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResourcesApi();
var body3 = Body3(); // Body3 | 

try { 
    var result = api_instance.apiResourceTimesheetPost(body3);
    print(result);
} catch (e) {
    print("Exception when calling ResourcesApi->apiResourceTimesheetPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body3** | [**Body3**](Body3.md)|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiResourceWebhookGet**
> InlineResponse2002 apiResourceWebhookGet(fields, filters, limitPageLength, limitStart)

Get a list of Webhooks

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResourcesApi();
var fields = []; // List<String> | By default, only the \"name\" field is included in the listing, to add more fields,  you can pass the fields param to GET request. For example, fields=[\"name\",\"country\"] 
var filters = []; // List<List<String>> | You can filter the listing using sql conditions by passing them as the filters GET param. Each condition is an array of the format, [{doctype}, {field}, {operator}, {value}]. For example, filters=[[\"Customer\", \"country\", \"=\", \"India\"]] 
var limitPageLength = 56; // int | By default, all listings are returned paginated. With this parameter you can change the  page size (how many items are teturned at once). 
var limitStart = 56; // int | To request successive pages, pass a multiple of your limit_page_length as limit_start.  For Example, to request the second page, pass limit_start as 20. 

try { 
    var result = api_instance.apiResourceWebhookGet(fields, filters, limitPageLength, limitStart);
    print(result);
} catch (e) {
    print("Exception when calling ResourcesApi->apiResourceWebhookGet: $e\n");
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

# **apiResourceWebhookPost**
> InlineResponse200 apiResourceWebhookPost(body5)

Create a new Webhook

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ResourcesApi();
var body5 = Body5(); // Body5 | 

try { 
    var result = api_instance.apiResourceWebhookPost(body5);
    print(result);
} catch (e) {
    print("Exception when calling ResourcesApi->apiResourceWebhookPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body5** | [**Body5**](Body5.md)|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

