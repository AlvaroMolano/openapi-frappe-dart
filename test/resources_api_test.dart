import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ResourcesApi
void main() {
  var instance = ResourcesApi();

  group('tests for ResourcesApi', () {
    // Get a list of Doctypes
    //
    //Future<InlineResponse2002> apiResourceDocTypeGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async 
    test('test apiResourceDocTypeGet', () async {
      // TODO
    });

    // Get a list of Employees
    //
    // For example, fields=[\"name\",\"company\",\"employee_name\"].  To get the Employee for a specific user, pass filters=[[\"user_id\",\"=\",\"mail@example.com\"]] 
    //
    //Future<DocList> apiResourceEmployeeGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async 
    test('test apiResourceEmployeeGet', () async {
      // TODO
    });

    // Get a list of projects
    //
    // Returns a list of projects
    //
    //Future<DocList> apiResourceProjectGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async 
    test('test apiResourceProjectGet', () async {
      // TODO
    });

    // Get a list of timesheets
    //
    // Returns a list of documents of the given type
    //
    //Future<DocList> apiResourceTimesheetGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async 
    test('test apiResourceTimesheetGet', () async {
      // TODO
    });

    // Create a new timesheet
    //
    //Future<InlineResponse200> apiResourceTimesheetPost({ Body3 body3 }) async 
    test('test apiResourceTimesheetPost', () async {
      // TODO
    });

    // Get a list of Webhooks
    //
    //Future<InlineResponse2002> apiResourceWebhookGet({ List<String> fields, List<List<String>> filters, int limitPageLength, int limitStart }) async 
    test('test apiResourceWebhookGet', () async {
      // TODO
    });

    // Create a new Webhook
    //
    //Future<InlineResponse200> apiResourceWebhookPost({ Body5 body5 }) async 
    test('test apiResourceWebhookPost', () async {
      // TODO
    });

  });
}
