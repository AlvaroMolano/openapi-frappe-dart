part of openapi.api;

class DocType {
  
  String name = null;
  
  String modifiedBy = null;
  
  String creation = null;
  
  String modified = null;
  
  String doctype = null;
  
  String owner = null;
  
  int docstatus = null;
  DocType();

  @override
  String toString() {
    return 'DocType[name=$name, modifiedBy=$modifiedBy, creation=$creation, modified=$modified, doctype=$doctype, owner=$owner, docstatus=$docstatus, ]';
  }

  DocType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    modifiedBy = json['modified_by'];
    creation = json['creation'];
    modified = json['modified'];
    doctype = json['doctype'];
    owner = json['owner'];
    docstatus = json['docstatus'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (modifiedBy != null)
      json['modified_by'] = modifiedBy;
    if (creation != null)
      json['creation'] = creation;
    if (modified != null)
      json['modified'] = modified;
    if (doctype != null)
      json['doctype'] = doctype;
    if (owner != null)
      json['owner'] = owner;
    if (docstatus != null)
      json['docstatus'] = docstatus;
    return json;
  }

  static List<DocType> listFromJson(List<dynamic> json) {
    return json == null ? List<DocType>() : json.map((value) => DocType.fromJson(value)).toList();
  }

  static Map<String, DocType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocType.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DocType-objects as value to a dart map
  static Map<String, List<DocType>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DocType>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DocType.listFromJson(value);
       });
     }
     return map;
  }
}

