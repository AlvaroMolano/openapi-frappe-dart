part of openapi.api;

class Message {
  
  String message = null;
  Message();

  @override
  String toString() {
    return 'Message[message=$message, ]';
  }

  Message.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<Message> listFromJson(List<dynamic> json) {
    return json == null ? List<Message>() : json.map((value) => Message.fromJson(value)).toList();
  }

  static Map<String, Message> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Message>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Message.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Message-objects as value to a dart map
  static Map<String, List<Message>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Message>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Message.listFromJson(value);
       });
     }
     return map;
  }
}

