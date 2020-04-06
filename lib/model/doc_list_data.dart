part of openapi.api;

class DocListData {
  
  String name = null;
  DocListData();

  @override
  String toString() {
    return 'DocListData[name=$name, ]';
  }

  DocListData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<DocListData> listFromJson(List<dynamic> json) {
    return json == null ? List<DocListData>() : json.map((value) => DocListData.fromJson(value)).toList();
  }

  static Map<String, DocListData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocListData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocListData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DocListData-objects as value to a dart map
  static Map<String, List<DocListData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DocListData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DocListData.listFromJson(value);
       });
     }
     return map;
  }
}

