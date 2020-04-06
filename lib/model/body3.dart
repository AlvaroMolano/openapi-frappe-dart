part of openapi.api;

class Body3 {
  
  String company = null;
  
  String employee = null;
  
  String note = null;
  
  List<ApiresourceTimesheetTimeLogs> timeLogs = [];
  Body3();

  @override
  String toString() {
    return 'Body3[company=$company, employee=$employee, note=$note, timeLogs=$timeLogs, ]';
  }

  Body3.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    company = json['company'];
    employee = json['employee'];
    note = json['note'];
    timeLogs = (json['time_logs'] == null) ?
      null :
      ApiresourceTimesheetTimeLogs.listFromJson(json['time_logs']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (company != null)
      json['company'] = company;
    if (employee != null)
      json['employee'] = employee;
    if (note != null)
      json['note'] = note;
    if (timeLogs != null)
      json['time_logs'] = timeLogs;
    return json;
  }

  static List<Body3> listFromJson(List<dynamic> json) {
    return json == null ? List<Body3>() : json.map((value) => Body3.fromJson(value)).toList();
  }

  static Map<String, Body3> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Body3>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Body3.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Body3-objects as value to a dart map
  static Map<String, List<Body3>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Body3>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Body3.listFromJson(value);
       });
     }
     return map;
  }
}

