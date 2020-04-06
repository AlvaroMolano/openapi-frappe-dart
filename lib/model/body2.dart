part of openapi.api;

class Body2 {
  
  Object data = null;
  Body2();

  @override
  String toString() {
    return 'Body2[data=$data, ]';
  }

  Body2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<Body2> listFromJson(List<dynamic> json) {
    return json == null ? List<Body2>() : json.map((value) => Body2.fromJson(value)).toList();
  }

  static Map<String, Body2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Body2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Body2.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Body2-objects as value to a dart map
  static Map<String, List<Body2>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Body2>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Body2.listFromJson(value);
       });
     }
     return map;
  }
}

