part of openapi.api;

class Body {
  
  Object data = null;
  Body();

  @override
  String toString() {
    return 'Body[data=$data, ]';
  }

  Body.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<Body> listFromJson(List<dynamic> json) {
    return json == null ? List<Body>() : json.map((value) => Body.fromJson(value)).toList();
  }

  static Map<String, Body> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Body>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Body.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Body-objects as value to a dart map
  static Map<String, List<Body>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Body>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Body.listFromJson(value);
       });
     }
     return map;
  }
}

