class MyModel {
  int userId = 0;
  int id = 0;
  String title = "";
  bool completed = false;

  fromJson(Map<String, dynamic> json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
    completed = json["completed"];
  }

  toJson() => {
    "user_id" : userId,
    "id" : id,
    "title" : title,
    "completed" : completed
  };
}

