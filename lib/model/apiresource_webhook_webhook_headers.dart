part of openapi.api;

class ApiresourceWebhookWebhookHeaders {
  
  String key = null;
  
  String value = null;
  ApiresourceWebhookWebhookHeaders();

  @override
  String toString() {
    return 'ApiresourceWebhookWebhookHeaders[key=$key, value=$value, ]';
  }

  ApiresourceWebhookWebhookHeaders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (key != null)
      json['key'] = key;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ApiresourceWebhookWebhookHeaders> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiresourceWebhookWebhookHeaders>() : json.map((value) => ApiresourceWebhookWebhookHeaders.fromJson(value)).toList();
  }

  static Map<String, ApiresourceWebhookWebhookHeaders> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiresourceWebhookWebhookHeaders>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiresourceWebhookWebhookHeaders.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiresourceWebhookWebhookHeaders-objects as value to a dart map
  static Map<String, List<ApiresourceWebhookWebhookHeaders>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiresourceWebhookWebhookHeaders>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiresourceWebhookWebhookHeaders.listFromJson(value);
       });
     }
     return map;
  }
}

