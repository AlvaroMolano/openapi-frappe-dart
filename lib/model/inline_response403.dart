part of openapi.api;

class InlineResponse403 {
  
  String locals = null;
  
  String exc = null;
  
  String serverMessages = null;
  InlineResponse403();

  @override
  String toString() {
    return 'InlineResponse403[locals=$locals, exc=$exc, serverMessages=$serverMessages, ]';
  }

  InlineResponse403.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locals = json['locals'];
    exc = json['exc'];
    serverMessages = json['_server_messages'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locals != null)
      json['locals'] = locals;
    if (exc != null)
      json['exc'] = exc;
    if (serverMessages != null)
      json['_server_messages'] = serverMessages;
    return json;
  }

  static List<InlineResponse403> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse403>() : json.map((value) => InlineResponse403.fromJson(value)).toList();
  }

  static Map<String, InlineResponse403> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse403>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse403.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse403-objects as value to a dart map
  static Map<String, List<InlineResponse403>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse403>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse403.listFromJson(value);
       });
     }
     return map;
  }
}

