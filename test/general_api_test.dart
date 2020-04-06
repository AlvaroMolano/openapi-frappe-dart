import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for GeneralApi
void main() {
  var instance = GeneralApi();

  group('tests for GeneralApi', () {
    // Call a remote procedure
    //
    //Future apiMethodDottedPathToMethodGet(String dottedPathToMethod) async 
    test('test apiMethodDottedPathToMethodGet', () async {
      // TODO
    });

    // Post data to a remote procedure
    //
    //Future apiMethodDottedPathToMethodPost(String dottedPathToMethod) async 
    test('test apiMethodDottedPathToMethodPost', () async {
      // TODO
    });

    // Delete a specific document
    //
    // TBD
    //
    //Future<InlineResponse202> apiResourceDocTypeDocumentNameDelete(String docType, String documentName) async 
    test('test apiResourceDocTypeDocumentNameDelete', () async {
      // TODO
    });

    // Get a specific document
    //
    // Get a document by it's name, for example EMP001 of DocType Employee.
    //
    //Future<InlineResponse200> apiResourceDocTypeDocumentNameGet(String docType, String documentName, { List<String> fields, List<List<String>> filters }) async 
    test('test apiResourceDocTypeDocumentNameGet', () async {
      // TODO
    });

    // Update a specific document
    //
    // TBD
    //
    //Future<InlineResponse200> apiResourceDocTypeDocumentNamePut(String docType, String documentName) async 
    test('test apiResourceDocTypeDocumentNamePut', () async {
      // TODO
    });

    // Get a list of documents
    //
    // Returns a list of documents of the given type
    //
    //Future<DocList> apiResourceDocTypeGet(String docType, { List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async 
    test('test apiResourceDocTypeGet', () async {
      // TODO
    });

    // Get a list of Doctypes
    //
    //Future<InlineResponse2002> apiResourceDocTypeGet_0({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async 
    test('test apiResourceDocTypeGet_0', () async {
      // TODO
    });

    // Create a new document
    //
    //Future<InlineResponse200> apiResourceDocTypePost(String docType, { Object body }) async 
    test('test apiResourceDocTypePost', () async {
      // TODO
    });

  });
}
