part of openapi.api;

class InlineResponse2001 {
  
  String fullName = null;
  
  String message = null;
  
  String homePage = null;
  InlineResponse2001();

  @override
  String toString() {
    return 'InlineResponse2001[fullName=$fullName, message=$message, homePage=$homePage, ]';
  }

  InlineResponse2001.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fullName = json['full_name'];
    message = json['message'];
    homePage = json['home_page'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fullName != null)
      json['full_name'] = fullName;
    if (message != null)
      json['message'] = message;
    if (homePage != null)
      json['home_page'] = homePage;
    return json;
  }

  static List<InlineResponse2001> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2001>() : json.map((value) => InlineResponse2001.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse2001>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2001.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2001-objects as value to a dart map
  static Map<String, List<InlineResponse2001>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse2001>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse2001.listFromJson(value);
       });
     }
     return map;
  }
}

