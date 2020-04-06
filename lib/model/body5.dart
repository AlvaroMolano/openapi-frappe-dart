part of openapi.api;

class Body5 {
  
  String webhookDoctype = null;
  
  String webhookDocevent = null;
  
  String requestUrl = null;
  /* Request headers, for example for authorization */
  List<ApiresourceWebhookWebhookHeaders> webhookHeaders = [];
  /* Map document fields to keys */
  List<ApiresourceWebhookWebhookData> webhookData = [];
  Body5();

  @override
  String toString() {
    return 'Body5[webhookDoctype=$webhookDoctype, webhookDocevent=$webhookDocevent, requestUrl=$requestUrl, webhookHeaders=$webhookHeaders, webhookData=$webhookData, ]';
  }

  Body5.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    webhookDoctype = json['webhook_doctype'];
    webhookDocevent = json['webhook_docevent'];
    requestUrl = json['request_url'];
    webhookHeaders = (json['webhook_headers'] == null) ?
      null :
      ApiresourceWebhookWebhookHeaders.listFromJson(json['webhook_headers']);
    webhookData = (json['webhook_data'] == null) ?
      null :
      ApiresourceWebhookWebhookData.listFromJson(json['webhook_data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (webhookDoctype != null)
      json['webhook_doctype'] = webhookDoctype;
    if (webhookDocevent != null)
      json['webhook_docevent'] = webhookDocevent;
    if (requestUrl != null)
      json['request_url'] = requestUrl;
    if (webhookHeaders != null)
      json['webhook_headers'] = webhookHeaders;
    if (webhookData != null)
      json['webhook_data'] = webhookData;
    return json;
  }

  static List<Body5> listFromJson(List<dynamic> json) {
    return json == null ? List<Body5>() : json.map((value) => Body5.fromJson(value)).toList();
  }

  static Map<String, Body5> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Body5>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Body5.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Body5-objects as value to a dart map
  static Map<String, List<Body5>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Body5>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Body5.listFromJson(value);
       });
     }
     return map;
  }
}

