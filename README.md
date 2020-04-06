## Frappe Flutter API-client. 
# A Dart package automatically generated by the OpenAPI Generator

# openapi
Unofficial documentation of the [Frappe](https://frappe.io) / [ERPNext](https://erpnext.org) API.


This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 11
- Build package: org.openapitools.codegen.languages.DartClientCodegen
- Based on Alyf-de's [Frappe api docs](https://github.com/alyf-de/frappe_api-docs) unofficial api documentation.
- 
## Requirements

Dart 2.0 or later

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *https://demo.erpnext.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*GeneralApi* | [**apiMethodDottedPathToMethodGet**](doc//GeneralApi.md#apimethoddottedpathtomethodget) | **GET** /api/method/{dotted_path_to_method} | Call a remote procedure
*GeneralApi* | [**apiMethodDottedPathToMethodPost**](doc//GeneralApi.md#apimethoddottedpathtomethodpost) | **POST** /api/method/{dotted_path_to_method} | Post data to a remote procedure
*GeneralApi* | [**apiResourceDocTypeDocumentNameDelete**](doc//GeneralApi.md#apiresourcedoctypedocumentnamedelete) | **DELETE** /api/resource/{DocType}/{DocumentName} | Delete a specific document
*GeneralApi* | [**apiResourceDocTypeDocumentNameGet**](doc//GeneralApi.md#apiresourcedoctypedocumentnameget) | **GET** /api/resource/{DocType}/{DocumentName} | Get a specific document
*GeneralApi* | [**apiResourceDocTypeDocumentNamePut**](doc//GeneralApi.md#apiresourcedoctypedocumentnameput) | **PUT** /api/resource/{DocType}/{DocumentName} | Update a specific document
*GeneralApi* | [**apiResourceDocTypeGet**](doc//GeneralApi.md#apiresourcedoctypeget) | **GET** /api/resource/{DocType} | Get a list of documents
*GeneralApi* | [**apiResourceDocTypeGet_0**](doc//GeneralApi.md#apiresourcedoctypeget_0) | **GET** /api/resource/DocType | Get a list of Doctypes
*GeneralApi* | [**apiResourceDocTypePost**](doc//GeneralApi.md#apiresourcedoctypepost) | **POST** /api/resource/{DocType} | Create a new document
*MethodsApi* | [**apiMethodFrappeDeskTagsAddTagPost**](doc//MethodsApi.md#apimethodfrappedesktagsaddtagpost) | **POST** /api/method/frappe.desk.tags.add_tag | Add a tag to a document
*MethodsApi* | [**apiMethodLogoutGet**](doc//MethodsApi.md#apimethodlogoutget) | **GET** /api/method/logout | Logout from current session
*MethodsApi* | [**apiMethodVersionGet**](doc//MethodsApi.md#apimethodversionget) | **GET** /api/method/version | Get the version of the app
*MethodsApi* | [**authGetLoggedUser**](doc//MethodsApi.md#authgetloggeduser) | **GET** /api/method/frappe.auth.get_logged_user | Get the user that is logged in
*MethodsApi* | [**login**](doc//MethodsApi.md#login) | **POST** /api/method/login | Authenticate yourself
*NaiveAuthenticationApi* | [**apiMethodLogoutGet**](doc//NaiveAuthenticationApi.md#apimethodlogoutget) | **GET** /api/method/logout | Logout from current session
*NaiveAuthenticationApi* | [**authGetLoggedUser**](doc//NaiveAuthenticationApi.md#authgetloggeduser) | **GET** /api/method/frappe.auth.get_logged_user | Get the user that is logged in
*NaiveAuthenticationApi* | [**login**](doc//NaiveAuthenticationApi.md#login) | **POST** /api/method/login | Authenticate yourself
*ResourcesApi* | [**apiResourceDocTypeGet**](doc//ResourcesApi.md#apiresourcedoctypeget) | **GET** /api/resource/DocType | Get a list of Doctypes
*ResourcesApi* | [**apiResourceEmployeeGet**](doc//ResourcesApi.md#apiresourceemployeeget) | **GET** /api/resource/Employee | Get a list of Employees
*ResourcesApi* | [**apiResourceProjectGet**](doc//ResourcesApi.md#apiresourceprojectget) | **GET** /api/resource/Project | Get a list of projects
*ResourcesApi* | [**apiResourceTimesheetGet**](doc//ResourcesApi.md#apiresourcetimesheetget) | **GET** /api/resource/Timesheet | Get a list of timesheets
*ResourcesApi* | [**apiResourceTimesheetPost**](doc//ResourcesApi.md#apiresourcetimesheetpost) | **POST** /api/resource/Timesheet | Create a new timesheet
*ResourcesApi* | [**apiResourceWebhookGet**](doc//ResourcesApi.md#apiresourcewebhookget) | **GET** /api/resource/Webhook | Get a list of Webhooks
*ResourcesApi* | [**apiResourceWebhookPost**](doc//ResourcesApi.md#apiresourcewebhookpost) | **POST** /api/resource/Webhook | Create a new Webhook


## Documentation For Models

 - [ApiresourceTimesheetTimeLogs](doc//ApiresourceTimesheetTimeLogs.md)
 - [ApiresourceWebhookWebhookData](doc//ApiresourceWebhookWebhookData.md)
 - [ApiresourceWebhookWebhookHeaders](doc//ApiresourceWebhookWebhookHeaders.md)
 - [Body](doc//Body.md)
 - [Body1](doc//Body1.md)
 - [Body2](doc//Body2.md)
 - [Body3](doc//Body3.md)
 - [Body4](doc//Body4.md)
 - [Body5](doc//Body5.md)
 - [DocList](doc//DocList.md)
 - [DocListData](doc//DocListData.md)
 - [DocType](doc//DocType.md)
 - [InlineResponse200](doc//InlineResponse200.md)
 - [InlineResponse2001](doc//InlineResponse2001.md)
 - [InlineResponse2002](doc//InlineResponse2002.md)
 - [InlineResponse202](doc//InlineResponse202.md)
 - [InlineResponse401](doc//InlineResponse401.md)
 - [InlineResponse403](doc//InlineResponse403.md)
 - [InlineResponse4031](doc//InlineResponse4031.md)
 - [Message](doc//Message.md)


## Documentation For Authorization

## basicAuth

- **Type**: HTTP basic authentication

## oAuth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: /method/frappe.integrations.oauth2.authorize
- **Scopes**: 
 - **all**: Same permissions as the user who created the oAuth client

## tokenAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Tests

//TODO: __


## Authors

alvaro@appsirradia.es

## Credits
Thanks to the unofficial open api documentation created by raffael@alyf.de


