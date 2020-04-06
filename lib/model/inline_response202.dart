part of openapi.api;

class InlineResponse202 {
  
  String message = null;
  InlineResponse202();

  @override
  String toString() {
    return 'InlineResponse202[message=$message, ]';
  }

  InlineResponse202.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<InlineResponse202> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse202>() : json.map((value) => InlineResponse202.fromJson(value)).toList();
  }

  static Map<String, InlineResponse202> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse202>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse202.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse202-objects as value to a dart map
  static Map<String, List<InlineResponse202>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse202>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse202.listFromJson(value);
       });
     }
     return map;
  }
}

