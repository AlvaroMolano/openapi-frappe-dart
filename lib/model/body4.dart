part of openapi.api;

class Body4 {
  
  Object data = null;
  Body4();

  @override
  String toString() {
    return 'Body4[data=$data, ]';
  }

  Body4.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<Body4> listFromJson(List<dynamic> json) {
    return json == null ? List<Body4>() : json.map((value) => Body4.fromJson(value)).toList();
  }

  static Map<String, Body4> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Body4>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Body4.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Body4-objects as value to a dart map
  static Map<String, List<Body4>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Body4>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Body4.listFromJson(value);
       });
     }
     return map;
  }
}

