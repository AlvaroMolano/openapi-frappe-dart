part of openapi.api;

class InlineResponse401 {
  
  String exc = null;
  
  String serverMessages = null;
  InlineResponse401();

  @override
  String toString() {
    return 'InlineResponse401[exc=$exc, serverMessages=$serverMessages, ]';
  }

  InlineResponse401.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exc = json['exc'];
    serverMessages = json['_server_messages'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exc != null)
      json['exc'] = exc;
    if (serverMessages != null)
      json['_server_messages'] = serverMessages;
    return json;
  }

  static List<InlineResponse401> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse401>() : json.map((value) => InlineResponse401.fromJson(value)).toList();
  }

  static Map<String, InlineResponse401> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse401>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse401.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse401-objects as value to a dart map
  static Map<String, List<InlineResponse401>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse401>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse401.listFromJson(value);
       });
     }
     return map;
  }
}

