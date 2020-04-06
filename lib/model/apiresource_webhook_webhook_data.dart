part of openapi.api;

class ApiresourceWebhookWebhookData {
  
  String key = null;
  
  String fieldname = null;
  ApiresourceWebhookWebhookData();

  @override
  String toString() {
    return 'ApiresourceWebhookWebhookData[key=$key, fieldname=$fieldname, ]';
  }

  ApiresourceWebhookWebhookData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    fieldname = json['fieldname'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (key != null)
      json['key'] = key;
    if (fieldname != null)
      json['fieldname'] = fieldname;
    return json;
  }

  static List<ApiresourceWebhookWebhookData> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiresourceWebhookWebhookData>() : json.map((value) => ApiresourceWebhookWebhookData.fromJson(value)).toList();
  }

  static Map<String, ApiresourceWebhookWebhookData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiresourceWebhookWebhookData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiresourceWebhookWebhookData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiresourceWebhookWebhookData-objects as value to a dart map
  static Map<String, List<ApiresourceWebhookWebhookData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiresourceWebhookWebhookData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiresourceWebhookWebhookData.listFromJson(value);
       });
     }
     return map;
  }
}

