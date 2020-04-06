part of openapi.api;

class Body1 {
  
  String usr = null;
  
  String pwd = null;
  Body1();

  @override
  String toString() {
    return 'Body1[usr=$usr, pwd=$pwd, ]';
  }

  Body1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    usr = json['usr'];
    pwd = json['pwd'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (usr != null)
      json['usr'] = usr;
    if (pwd != null)
      json['pwd'] = pwd;
    return json;
  }

  static List<Body1> listFromJson(List<dynamic> json) {
    return json == null ? List<Body1>() : json.map((value) => Body1.fromJson(value)).toList();
  }

  static Map<String, Body1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Body1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Body1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Body1-objects as value to a dart map
  static Map<String, List<Body1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Body1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Body1.listFromJson(value);
       });
     }
     return map;
  }
}

