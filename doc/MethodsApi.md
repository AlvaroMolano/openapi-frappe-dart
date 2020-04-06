# openapi.api.MethodsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.erpnext.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMethodFrappeDeskTagsAddTagPost**](MethodsApi.md#apiMethodFrappeDeskTagsAddTagPost) | **POST** /api/method/frappe.desk.tags.add_tag | Add a tag to a document
[**apiMethodLogoutGet**](MethodsApi.md#apiMethodLogoutGet) | **GET** /api/method/logout | Logout from current session
[**apiMethodVersionGet**](MethodsApi.md#apiMethodVersionGet) | **GET** /api/method/version | Get the version of the app
[**authGetLoggedUser**](MethodsApi.md#authGetLoggedUser) | **GET** /api/method/frappe.auth.get_logged_user | Get the user that is logged in
[**login**](MethodsApi.md#login) | **POST** /api/method/login | Authenticate yourself


# **apiMethodFrappeDeskTagsAddTagPost**
> Message apiMethodFrappeDeskTagsAddTagPost(tag, dt, dn)

Add a tag to a document

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = MethodsApi();
var tag = My Tag; // String | Tag to add
var dt = Sales Invoice; // String | Target DocType
var dn = SINV-0001; // String | Target document

try { 
    var result = api_instance.apiMethodFrappeDeskTagsAddTagPost(tag, dt, dn);
    print(result);
} catch (e) {
    print("Exception when calling MethodsApi->apiMethodFrappeDeskTagsAddTagPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| Tag to add | [optional] [default to null]
 **dt** | **String**| Target DocType | [optional] [default to null]
 **dn** | **String**| Target document | [optional] [default to null]

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMethodLogoutGet**
> Object apiMethodLogoutGet()

Logout from current session

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = MethodsApi();

try { 
    var result = api_instance.apiMethodLogoutGet();
    print(result);
} catch (e) {
    print("Exception when calling MethodsApi->apiMethodLogoutGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMethodVersionGet**
> Message apiMethodVersionGet()

Get the version of the app

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = MethodsApi();

try { 
    var result = api_instance.apiMethodVersionGet();
    print(result);
} catch (e) {
    print("Exception when calling MethodsApi->apiMethodVersionGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authGetLoggedUser**
> Message authGetLoggedUser()

Get the user that is logged in

Get the currently logged in user

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = MethodsApi();

try { 
    var result = api_instance.authGetLoggedUser();
    print(result);
} catch (e) {
    print("Exception when calling MethodsApi->authGetLoggedUser: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> InlineResponse2001 login(usr, pwd, body1)

Authenticate yourself

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = MethodsApi();
var usr = Administrator; // String | Your username
var pwd = admin; // String | Your password
var body1 = Body1(); // Body1 | 

try { 
    var result = api_instance.login(usr, pwd, body1);
    print(result);
} catch (e) {
    print("Exception when calling MethodsApi->login: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usr** | **String**| Your username | [optional] [default to null]
 **pwd** | **String**| Your password | [optional] [default to null]
 **body1** | [**Body1**](Body1.md)|  | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/html, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

