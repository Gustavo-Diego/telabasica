class User {

  // int id;
  String name;
  String email;
  String username;

  User({this.name, this.email, this.username});

  User.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json["username"];
  }

}