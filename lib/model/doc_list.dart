part of openapi.api;

class DocList {
  
  List<DocListData> data = [];
  DocList();

  @override
  String toString() {
    return 'DocList[data=$data, ]';
  }

  DocList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      DocListData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<DocList> listFromJson(List<dynamic> json) {
    return json == null ? List<DocList>() : json.map((value) => DocList.fromJson(value)).toList();
  }

  static Map<String, DocList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DocList-objects as value to a dart map
  static Map<String, List<DocList>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DocList>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DocList.listFromJson(value);
       });
     }
     return map;
  }
}

