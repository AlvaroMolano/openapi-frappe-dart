part of openapi.api;

class ApiresourceTimesheetTimeLogs {
  
  String fromTime = null;
  
  String toTime = null;
  
  String project = null;
  
  String activityType = null;
  ApiresourceTimesheetTimeLogs();

  @override
  String toString() {
    return 'ApiresourceTimesheetTimeLogs[fromTime=$fromTime, toTime=$toTime, project=$project, activityType=$activityType, ]';
  }

  ApiresourceTimesheetTimeLogs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fromTime = json['from_time'];
    toTime = json['to_time'];
    project = json['project'];
    activityType = json['activity_type'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fromTime != null)
      json['from_time'] = fromTime;
    if (toTime != null)
      json['to_time'] = toTime;
    if (project != null)
      json['project'] = project;
    if (activityType != null)
      json['activity_type'] = activityType;
    return json;
  }

  static List<ApiresourceTimesheetTimeLogs> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiresourceTimesheetTimeLogs>() : json.map((value) => ApiresourceTimesheetTimeLogs.fromJson(value)).toList();
  }

  static Map<String, ApiresourceTimesheetTimeLogs> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiresourceTimesheetTimeLogs>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiresourceTimesheetTimeLogs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiresourceTimesheetTimeLogs-objects as value to a dart map
  static Map<String, List<ApiresourceTimesheetTimeLogs>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiresourceTimesheetTimeLogs>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiresourceTimesheetTimeLogs.listFromJson(value);
       });
     }
     return map;
  }
}

